(->

  named = aliceblue: 0xf0f8ff, antiquewhite: 0xfaebd7, aqua: 0x00ffff, aquamarine: 0x7fffd4, azure: 0xf0ffff, beige: 0xf5f5dc, bisque: 0xffe4c4, black: 0x000000, blanchedalmond: 0xffebcd, blue: 0x0000ff, blueviolet: 0x8a2be2, brown: 0xa52a2a, burlywood: 0xdeb887, cadetblue: 0x5f9ea0, chartreuse: 0x7fff00, chocolate: 0xd2691e, coral: 0xff7f50, cornflowerblue: 0x6495ed, cornsilk: 0xfff8dc, crimson: 0xdc143c, cyan: 0x00ffff, darkblue: 0x00008b, darkcyan: 0x008b8b, darkgoldenrod: 0xb8860b, darkgray: 0xa9a9a9, darkgreen: 0x006400, darkgrey: 0xa9a9a9, darkkhaki: 0xbdb76b, darkmagenta: 0x8b008b, darkolivegreen: 0x556b2f, darkorange: 0xff8c00, darkorchid: 0x9932cc, darkred: 0x8b0000, darksalmon: 0xe9967a, darkseagreen: 0x8fbc8f, darkslateblue: 0x483d8b, darkslategray: 0x2f4f4f, darkslategrey: 0x2f4f4f, darkturquoise: 0x00ced1, darkviolet: 0x9400d3, deeppink: 0xff1493, deepskyblue: 0x00bfff, dimgray: 0x696969, dimgrey: 0x696969, dodgerblue: 0x1e90ff, firebrick: 0xb22222, floralwhite: 0xfffaf0, forestgreen: 0x228b22, fuchsia: 0xff00ff, gainsboro: 0xdcdcdc, ghostwhite: 0xf8f8ff, gold: 0xffd700, goldenrod: 0xdaa520, gray: 0x808080, green: 0x008000, greenyellow: 0xadff2f, grey: 0x808080, honeydew: 0xf0fff0, hotpink: 0xff69b4, indianred: 0xcd5c5c, indigo: 0x4b0082, ivory: 0xfffff0, khaki: 0xf0e68c, lavender: 0xe6e6fa, lavenderblush: 0xfff0f5, lawngreen: 0x7cfc00, lemonchiffon: 0xfffacd, lightblue: 0xadd8e6, lightcoral: 0xf08080, lightcyan: 0xe0ffff, lightgoldenrodyellow: 0xfafad2, lightgray: 0xd3d3d3, lightgreen: 0x90ee90, lightgrey: 0xd3d3d3, lightpink: 0xffb6c1, lightsalmon: 0xffa07a, lightseagreen: 0x20b2aa, lightskyblue: 0x87cefa, lightslategray: 0x778899, lightslategrey: 0x778899, lightsteelblue: 0xb0c4de, lightyellow: 0xffffe0, lime: 0x00ff00, limegreen: 0x32cd32, linen: 0xfaf0e6, magenta: 0xff00ff, maroon: 0x800000, mediumaquamarine: 0x66cdaa, mediumblue: 0x0000cd, mediumorchid: 0xba55d3, mediumpurple: 0x9370db, mediumseagreen: 0x3cb371, mediumslateblue: 0x7b68ee, mediumspringgreen: 0x00fa9a, mediumturquoise: 0x48d1cc, mediumvioletred: 0xc71585, midnightblue: 0x191970, mintcream: 0xf5fffa, mistyrose: 0xffe4e1, moccasin: 0xffe4b5, navajowhite: 0xffdead, navy: 0x000080, oldlace: 0xfdf5e6, olive: 0x808000, olivedrab: 0x6b8e23, orange: 0xffa500, orangered: 0xff4500, orchid: 0xda70d6, palegoldenrod: 0xeee8aa, palegreen: 0x98fb98, paleturquoise: 0xafeeee, palevioletred: 0xdb7093, papayawhip: 0xffefd5, peachpuff: 0xffdab9, peru: 0xcd853f, pink: 0xffc0cb, plum: 0xdda0dd, powderblue: 0xb0e0e6, purple: 0x800080, rebeccapurple: 0x663399, red: 0xff0000, rosybrown: 0xbc8f8f, royalblue: 0x4169e1, saddlebrown: 0x8b4513, salmon: 0xfa8072, sandybrown: 0xf4a460, seagreen: 0x2e8b57, seashell: 0xfff5ee, sienna: 0xa0522d, silver: 0xc0c0c0, skyblue: 0x87ceeb, slateblue: 0x6a5acd, slategray: 0x708090, slategrey: 0x708090, snow: 0xfffafa, springgreen: 0x00ff7f, steelblue: 0x4682b4, tan: 0xd2b48c, teal: 0x008080, thistle: 0xd8bfd8, tomato: 0xff6347, turquoise: 0x40e0d0, violet: 0xee82ee, wheat: 0xf5deb3, white: 0xffffff, whitesmoke: 0xf5f5f5, yellow: 0xffff00, yellowgreen: 0x9acd32

  # regular expression adopted from d3-color
  ReI = "\\s*([+-]?\\d+)\\s*"
  ReN = "\\s*([+-]?\\d*\\.?\\d+(?:[eE][+-]?\\d+)?)\\s*"
  ReP = "\\s*([+-]?\\d*\\.?\\d+(?:[eE][+-]?\\d+)?)%\\s*"
  re = do
    hex3: /^#([0-9a-f]{3})$/
    hex6: /^#([0-9a-f]{6})$/
    rgbint: new RegExp "^rgb\\(#{[ReI, ReI, ReI]}\\)$"
    rgbp: new RegExp "^rgb\\(#{[ReP, ReP, ReP]}\\)$"
    rgbaint: new RegExp "^rgba\\(#{[ReI, ReI, ReI, ReN]}\\)$"
    rgbap: new RegExp "^rgba\\(#{[ReP, ReP, ReP, ReN]}\\)$"
    hslp: new RegExp "^hsl\\(#{[ReN, ReP, ReP]}\\)$"
    hslap: new RegExp "^hsla\\(#{[ReN, ReP, ReP, ReN]}\\)$"

  parse = do
    hex3: (v) ->
      v = parseInt(v.1,16)
      {r: (v .>>. 8) * 17, g: ((v .&. 0xf0) * 17) .>>. 4, b: (v .&. 0xf) * 17, a: 1}
    hex6: (v) ->
      v = parseInt(v.1,16)
      {r: v .>>. 16, g: (v .>>. 8) .&. 0xff, b: (v .&. 0xff), a: 1}
    rgbint: (v) -> r: +v.1, g: +v.2, b: +v.3, a: 1
    rgbp: (v) -> r: v.1 * 255 / 100, g: +v.2 * 255 / 100, b: +v.3 * 255 / 100, a: 1
    rgbaint: (v) -> r: +v.1, g: +v.2, b: +v.3, a: +v.4
    rgbap: (v) -> r: v.1 * 255 / 100, g: +v.2 * 255 / 100, b: v.3 * 255 / 100, a: +v.4
    hslap: (v) -> h: +v.1, s: v.2 / 100, l: v.3 / 100, a: +v.4
    hslp: (v) -> h: +v.1, s: v.2 / 100, l: v.3 / 100, a: 1
    all: (input) ->
      if typeof(input) == \object => return @ <<< input
      input = "#{input}".trim!.toLowerCase!
      for k,v of re => if v.exec(input) => return parse[k] that else continue
      if named[input] => return {r: that .>>. 16, g: (that .>>. 8) .&. 0xff, b: that .&. 0xff, a: 1}
      if input == \transparent => return {r: NaN, g: NaN, b: NaN, a: 0}
      return {r: NaN, g: NaN, b: NaN, a: NaN}

  
  ldColor = (input) -> @ <<< parse.all input

  convert = do
    _hsl2rgb: (h, m1, m2) ->
      ( if h < 60 => m1 + (m2 - m1) * h / 60
        else if h < 180 => m2
        else if h < 240 => m1 + (m2 - m1) * (240 - h) / 60
        else m1
      ) * 255

    hsl2rgb: ({h,s,l,a}) ->
      h = h % 360 + (h < 0) * 360
      s = if isNaN(h) || isNaN(s) => 0 else s
      m2 = l + (if l < 0.5 => l else 1 - l) * s
      m1 = 2 * l - m2
      {
        r: @_hsl2rgb (if h >= 240 => h - 240 else h + 120), m1, m2
        g: @_hsl2rgb h, m1, m2
        b: @_hsl2rgb (if h < 120 => h + 240 else h - 120), m1, m2
        a: a
      }
    rgb2hsl: ({r,g,b,a}) -> 
      Cmax = Math.max(r,g,b)
      Cmin = Math.min(r,g,b)
      delta = Cmax - Cmin
      l = ( Cmax + Cmin ) / 2
      if delta == 0 => [h,s] = [0,0]
      else
        h = switch
          | Cmax == r => 60 * ((( g - b ) / delta ) % 6)
          | Cmax == g => 60 * ((( b - r ) / delta ) + 2)
          | Cmax == b => 60 * ((( r - g ) / delta ) + 4)
        s = delta / ( 1 - Math.abs( 2 * lit - 1) )
        val = Cmax
        sat-v = Cmax - Cmin / val
      h = ( h + 360 ) % 360
      return {h,s,l,a}

  utils = do
    rgb: (input) ->
      ret = parse.all input
      if ret.h => return convert.hsl2rgb(ret) else ret
    hsl: (input) ->
      ret = parse.all input
      if ret.r => return convert.rgb2hsl(ret) else ret
    hex: (input) ->
      ret = parse.all input
      if ret.h => ret = convert.hsl2rgb(ret)
      return "#" + ((Math.floor(ret.r) .<<. 16) + (Math.floor(ret.g) .<<. 8) + Math.floor(ret.b)).toString(16)
    int: (input) ->
      return (Math.floor(ret.r) .<<. 16) + (Math.floor(ret.g) .<<. 8) + Math.floor(ret.b)

  ldColor <<< utils
  ldColor.prototype = Object.create(Object.prototype) <<< utils

  module.exports = {}
)!


/*
  ret = new ldColor \#f00
  console.log ret
  ret = new ldColor \#ff9911
  console.log ret
  ret = new ldColor 'rgb(255,90,16)'
  console.log ret
  ret = new ldColor 'rgb(100%,50%,0%)'
  console.log ret
  ret = new ldColor 'steelblue'
  console.log ret
  console.log ldColor.hex ret
  console.log (ldColor.int ret).toString(16)
  */