local colors = {
  blue: {
    sub1: '#ccebff',  // 20,  100
    sub2: '#8fd2ff',  // 44,  100
    base: '#50b9ff',  // 69,  100, h:204
    sub3: '#005994',  // 100, 58
    sub4: '#004370',  // 100, 44
    sub5: '#002f4f',  // 100, 31
    sub6: '#001d30',  // 100, 19
  },

  cyan: {
    sub1: '#8ef2ff',  // 44, 100
    sub2: '#4ed8e8',  // 66, 91
    base: '#56b6c2',  // 56, 76
    sub3: '#006972',  // 100, 45
    sub4: '#004f56',  // 100, 34
    sub5: '#00363c',  // 100, 24
    sub6: '#001f23',  // 100, 14
  },

  green: {
    sub1: '#c4f18c',  // 42, 95
    sub2: '#a9d472',  // 46, 83
    base: '#98bf66',  // 47, 75
    sub3: '#456813',  // 82, 41
    sub4: '#304f00',  // 100, 31
    sub5: '#1f3700',  // 100, 22
    sub6: '#102000',  // 100, 13
  },

  magenta: {
    sub1: '#fad7ff',  // 16, 100
    sub2: '#f0b0ff',  // 31, 100
    base: '#c678dd',  // 46, 87
    sub3: '#883fa0',  // 61, 63
    sub4: '#6d2486',  // 73, 53
    sub5: '#54016d',  // 99, 43
    sub6: '#330044',  // 100, 27
  },

  red: {
    sub1: '#ffdad8',  // 15, 100
    sub2: '#ffb3b1',  // 31, 100
    base: '#e75258',  // 84, 100
    sub3: '#b12a35',  // 76, 69
    sub4: '#8f0d20',  // 91, 56
    sub5: '#680012',  // 100 41
    sub6: '#410007',  // 100 25
  },

  yellow: {
    sub1: '#ffdea8',  // 34, 100
    sub2: '#ebbd6b',  // 54, 92, h:38
    base: '#f8bd49',  // 71, 97
    sub3: '#7d5800',  // 100, 49
    sub4: '#5e4200',  // 100, 37
    sub5: '#422d00',  // 100, 26
    sub6: '#271900',  // 100, 15
  },

  mono0: '#000000',  // xterm 16
  mono8: '#080808',  // xterm 232
  mono18: '#121212',  // xterm 233
  mono28: '#1c1c1c',  // xterm 234
  mono38: '#262626',  // xterm 235
  mono48: '#303030',  // xterm 236
  mono58: '#3a3a3a',  // xterm 237
  mono68: '#444444',  // xterm 238
  mono78: '#4e4e4e',  // xterm 239
  mono88: '#585858',  // xterm 240
  mono98: '#626262',  // xterm 241
  mono108: '#6c6c6c',  // xterm 242
  mono118: '#767676',  // xterm 243
  mono128: '#808080',  // xterm 244
  mono138: '#8a8a8a',  // xterm 245
  mono148: '#949494',  // xterm 246
  mono158: '#9e9e9e',  // xterm 247
  mono168: '#a8a8a8',  // xterm 248
  mono178: '#b2b2b2',  // xterm 249
  mono188: '#bcbcbc',  // xterm 250
  mono198: '#c6c6c6',  // xterm 251
  mono208: '#d0d0d0',  // xterm 252
  mono218: '#dadada',  // xterm 253
  mono228: '#e4e4e4',  // xterm 254
  mono238: '#eeeeee',  // xterm 255
  mono255: '#ffffff',  // xterm 231
};

local opacity = {
  opacity00_0: '00',
  opacity03_1: '08',
  opacity03_9: '0a',
  opacity04_3: '0b',
  opacity05_1: '0d',
  opacity07_8: '14',
  opacity10_2: '1a',
  opacity10_6: '1b',
  opacity12_2: '1f',
  opacity12_5: '20',
  opacity14_9: '26',
  opacity16_2: '29',
  opacity16_9: '2b',
  opacity18_0: '2e',
  opacity20_0: '33',
  opacity22_0: '38',
  opacity25_1: '40',
  opacity26_7: '44',
  opacity27_8: '47',
  opacity28_6: '49',
  opacity30_2: '4d',
  opacity31_4: '50',
  opacity33_3: '55',
  opacity33_7: '56',
  opacity34_9: '59',
  opacity36_1: '5c',
  opacity40_0: '66',
  opacity47_8: '7a',
  opacity49_4: '7e',
  opacity50_2: '80',
  opacity60_0: '99',
  opacity61_2: '9c',
  opacity65_1: 'a6',
  opacity66_6: 'aa',
  opacity70_2: 'b3',
  opacity72_2: 'b8',
  opacity80_0: 'cc',
  opacity93_3: 'ee',
};

colors + opacity + {
  'error': '#ff2828',
  warning: '#ffd700',

  clear: self.mono0 + self.opacity00_0,
  dropBackground: self.mono68 + self.opacity50_2,  // #44444480
  focus1: self.mono228,
  focus2: self.blue.base,

  background1: self.mono8,  //  #080808
  background2: self.mono18,  // #121212
  background3: self.mono28,  // #1c1c1c

  border1: self.mono8,  //  #080808
  border2: self.mono68,  // #444444
  border3: self.mono98,  // #626262

  foreground1: self.mono255,  // bright    #ffffff
  foreground2: self.mono208,  // interface #d0d0d0

  disabledForeground1: self.foreground1 + self.opacity50_2,
  disabledForeground2: self.foreground2 + self.opacity50_2,

  descriptionForeground1: self.foreground1 + self.opacity70_2,
  descriptionForeground2: self.foreground2 + self.opacity70_2,

  inactiveForeground1: self.foreground1 + self.opacity60_0,
  inactiveForeground2: self.foreground2 + self.opacity60_0,

  tokens: {
    blue1: '#50b9ff',  // r:80  g:185 b:255 h:204 s:69 l:100
    blue2: '#1589D6',
    cyan1: '#56b6c2',
  },
  test: {
    blue1: '#569cd6',  // r:86  g:156 b:214 h:207 s:60 l:84
    blue2: '#9cdcfe',  // r:156 g:220 b:254 h:201 s:39 l:100
  },
}
