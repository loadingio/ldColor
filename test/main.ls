ldcolor = require "../src/ldColor"

require! <[assert]>

that = it
describe \API, ->
  describe "darker", ->
    that 'should be #fc93a8 after darkering #fedcba', ->
      assert.equal ldcolor.web((new ldcolor(\#fedcba)).darker!), \#fc9a38
      assert.equal ldcolor.web(ldcolor.darker(\#fedcba)), \#fc9a38

  describe "lighter", ->
    that 'should be #1a4a7b after lightering #123456', ->
      assert.equal ldcolor.web((new ldcolor(\#123456)).lighter!), \#1a4a7b
      assert.equal ldcolor.web(ldcolor.lighter(\#123456)), \#1a4a7b

  describe "complement", ->
    that 'should be #edcba9 after complementing #123456', ->
      assert.equal ldcolor.web((new ldcolor(\#123456)).complement!), \#edcba9
      assert.equal ldcolor.web(ldcolor.complement(\#123456)), \#edcba9

describe \Transparency, ->
  describe 'color with NaN to web color', ->
    that "should return transparent when alpha is NaN, or alpha is 0 but there are NaN values", ->
      assert.equal ldcolor.web(" rgba( NaN,NaN ,NaN,0)"), \transparent
      assert.equal ldcolor.web(" rgba( NaN  , NaN ,NaN,NaN )  "), \transparent
      assert.equal ldcolor.web(" rgba( 0  , 123 ,NaN,NaN )  "), \transparent
      assert.equal ldcolor.web("rgba(NaN,99,12,0)"), \transparent

  describe 'transparent color to web color', ->
    that "should return transparent if input to ldColor.web is transparent", ->
      assert.equal ldcolor.web("transparent"), \transparent

  describe 'color with NaN', ->
    that "should preserve information even if there are NaN components", ->
      ret1 = (new ldcolor("rgba(123,NaN,53,0.5)")).rgb!
      ret2 = {r: 123, g: NaN, b: 53, a: 0.5}
      assert.deepStrictEqual ret1{r,g,b,a}, ret2
      ret1 = (new ldcolor("transparent")).rgb!
      ret2 = {r: NaN, g: NaN, b: NaN, a: 0}
      assert.deepStrictEqual ret1{r,g,b,a}, ret2

  describe 'transparent to RGB', ->
    that "should return NaN values with alpha 0 when transparent is passed to converting functions.", ->
      assert.deepStrictEqual ldcolor.rgb("transparent"), {r: NaN, g: NaN, b: NaN, a: 0}
      assert.deepStrictEqual ldcolor.hsl("transparent"), {h: NaN, s: NaN, l: NaN, a: 0}
      assert.deepStrictEqual ldcolor.lab("transparent"), {"@l": NaN, "@a": NaN, "@b": NaN, a: 0}
      assert.deepStrictEqual ldcolor.hcl("transparent"), {h: NaN, c: NaN, l: NaN, a: 0}

