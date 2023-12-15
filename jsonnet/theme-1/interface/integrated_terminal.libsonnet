local pallet = (import '../pallet.libsonnet');

local terminal = {
  // The background of the Integrated Terminal's viewport. {default: null}
  background: pallet.background1,  // {theme: #080808}

  // The color of the border that separates split panes within the
  // terminal. This defaults to panel.border. {default: #80808059}
  border: 'null',  // {theme: #444444}

  // The default foreground color of the Integrated Terminal.
  // {default: #cccccc}
  foreground: pallet.foreground2,

  // 'Black' ANSI color in the terminal. {default: #000000}
  ansiBlack: 'null',  // set with code default

  // 'BrightBlack' ANSI color in the terminal. {default: #666666}
  // ansiBrightBlack: pallet.ansiBrightBlack,
  ansiBrightBlack: 'null',  // TODO: Set terminal.ansiBrightBlack

  // 'Blue' ANSI color in the terminal. {default: #2472c8}
  // ansiBlue: pallet.ansiBlue,
  ansiBlue: 'null',  // TODO: Set terminal.ansiBlue

  // 'BrightBlue' ANSI color in the terminal. {default: #3b8eea}
  // ansiBrightBlue: pallet.ansiBrightBlue,
  ansiBrightBlue: 'null',  // TODO: Set terminal.ansiBrightBlue

  // 'Cyan' ANSI color in the terminal. {default: #11a8cd}
  // ansiCyan: pallet.ansiCyan,
  ansiCyan: 'null',  // TODO: Set terminal.ansiCyan

  // 'BrightCyan' ANSI color in the terminal. {default: #29b8db}
  // ansiBrightCyan: pallet.ansiBrightCyan,
  ansiBrightCyan: 'null',  // TODO: Set terminal.ansiBrightCyan

  // 'Green' ANSI color in the terminal. {default: #0dbc79}
  // ansiGreen: pallet.ansiGreen,
  ansiGreen: 'null',  // TODO: Set terminal.ansiGreen

  // 'BrightGreen' ANSI color in the terminal. {default: #23d18b}
  // ansiBrightGreen: pallet.ansiBrightGreen,
  ansiBrightGreen: 'null',  // TODO: Set terminal.ansiBrightGreen

  // 'Magenta' ANSI color in the terminal. {default: #bc3fbc}
  // ansiMagenta: pallet.ansiMagenta,
  ansiMagenta: 'null',  // TODO: Set terminal.ansiMagenta

  // 'BrightMagenta' ANSI color in the terminal. {default: #d670d6}
  // ansiBrightMagenta: pallet.ansiBrightMagenta,
  ansiBrightMagenta: 'null',  // TODO: Set terminal.ansiBrightMagenta

  // 'Red' ANSI color in the terminal. {default: #cd3131}
  // ansiRed: pallet.ansiRed,
  ansiRed: 'null',  // TODO: Set terminal.ansiRed

  // 'BrightRed' ANSI color in the terminal. {default: #f14c4c}
  // ansiBrightRed: pallet.ansiBrightRed,
  ansiBrightRed: 'null',  // TODO: Set terminal.ansiBrightRed

  // 'Yellow' ANSI color in the terminal. {default: #e5e510}
  // ansiYellow: pallet.ansiYellow,
  ansiYellow: 'null',  // TODO: Set terminal.ansiYellow

  // 'BrightYellow' ANSI color in the terminal. {default: #f5f543}
  // ansiBrightYellow: pallet.ansiBrightYellow,
  ansiBrightYellow: 'null',  // TODO: Set terminal.ansiBrightYellow

  // 'White' ANSI color in the terminal. {default: #e5e5e5}
  // ansiWhite: pallet.ansiWhite,
  ansiWhite: 'null',  // TODO: Set terminal.ansiWhite

  // 'BrightWhite' ANSI color in the terminal. {default: #e5e5e5}
  // ansiBrightWhite: pallet.ansiBrightWhite,
  ansiBrightWhite: pallet.mono255,

  // The selection background color of the terminal. {default: #264f78}
  selectionBackground: 'null',  // {theme: #005994}

  // The selection foreground color of the terminal. When this is null the
  // selection foreground will be retained and have the minimum contrast
  // ratio feature applied. {default: null}
  selectionForeground: 'null',  // set with code default

  // The selection background color of the terminal when it does not have
  // focus. {default: #264f7880}
  inactiveSelectionBackground: pallet.mono118 + pallet.opacity50_2,

  // Color of the current search match in the terminal. The color must not
  // be opaque so as not to hide underlying terminal content.
  // {default: #515c6a}
  findMatchBackground: pallet.mono28,

  // Border color of the current search match in the terminal.
  // {default: null}
  findMatchBorder: pallet.mono198,

  // Color of the other search matches in the terminal. The color must not
  // be opaque so as not to hide underlying terminal content.
  // {default: #ea5c0055
  findMatchHighlightBackground: pallet.green.sub3,

  // Border color of the other search matches in the terminal.
  // default: null}
  findMatchHighlightBorder: 'null',  // set with code default

  // Color of the highlight when hovering a link in the terminal.
  // {default: #264f7820}
  hoverHighlightBackground: pallet.mono255 + pallet.opacity12_5,

  // The background color when dragging on top of terminals. The color
  // should have transparency so that the terminal contents can still shine
  // through. {default: #53595d80}
  dropBackground: 'null',  // {theme: #44444480}

  // Border on the side of the terminal tab in the panel. This defaults to
  // tab.activeBorder. {default: null}
  tab: { activeBorder: pallet.focus2 },
};

local terminalCursor = {
  // The background color of the terminal cursor. Allows customizing the
  // color of a character overlapped by a block cursor. {default: null}
  background: 'null',  // set with code default

  // The foreground color of the terminal cursor. {default: null}
  foreground: 'null',  // set with code default
};

local terminalCommandDecoration = {
  // The default terminal command decoration background color.
  // {default: #ffffff40}
  defaultBackground: 'null',  // set with code default

  // The terminal command decoration background color for successful
  // commands. {default: #1b81a8}
  successBackground: pallet.green.base,

  // The terminal command decoration background color for error commands.
  // {default: #f14c4c}
  errorBackground: pallet['error'],
};

local terminalOverviewRuler = {
  // The overview ruler cursor color. {default: #a0a0a0cc}
  cursorForeground: 'null',  // set with code default

  // Overview ruler marker color for find matches in the terminal.
  // {default: #d186167e}
  findMatchForeground: 'null',  // {theme: #c4f18c}
};

{
  'terminal.background': terminal.background,
  'terminal.border': terminal.border,
  'terminal.foreground': terminal.foreground,
  'terminal.ansiBlack': terminal.ansiBlack,
  'terminal.ansiBlue': terminal.ansiBlue,
  'terminal.ansiBrightBlack': terminal.ansiBrightBlack,
  'terminal.ansiBrightBlue': terminal.ansiBrightBlue,
  'terminal.ansiBrightCyan': terminal.ansiBrightCyan,
  'terminal.ansiBrightGreen': terminal.ansiBrightGreen,
  'terminal.ansiBrightMagenta': terminal.ansiBrightMagenta,
  'terminal.ansiBrightRed': terminal.ansiBrightRed,
  'terminal.ansiBrightWhite': terminal.ansiBrightWhite,
  'terminal.ansiBrightYellow': terminal.ansiBrightYellow,
  'terminal.ansiCyan': terminal.ansiCyan,
  'terminal.ansiGreen': terminal.ansiGreen,
  'terminal.ansiMagenta': terminal.ansiMagenta,
  'terminal.ansiRed': terminal.ansiRed,
  'terminal.ansiWhite': terminal.ansiWhite,
  'terminal.ansiYellow': terminal.ansiYellow,
  'terminal.selectionBackground': terminal.selectionBackground,
  'terminal.selectionForeground': terminal.selectionForeground,
  'terminal.inactiveSelectionBackground': terminal.inactiveSelectionBackground,
  'terminal.findMatchBackground': terminal.findMatchBackground,
  'terminal.findMatchBorder': terminal.findMatchBorder,
  'terminal.findMatchHighlightBackground': terminal.findMatchHighlightBackground,
  'terminal.findMatchHighlightBorder': terminal.findMatchHighlightBorder,
  'terminal.hoverHighlightBackground': terminal.hoverHighlightBackground,
  'terminalCursor.background': terminalCursor.background,
  'terminalCursor.foreground': terminalCursor.foreground,
  'terminal.dropBackground': terminal.dropBackground,
  'terminal.tab.activeBorder': terminal.tab.activeBorder,
  'terminalCommandDecoration.defaultBackground': terminalCommandDecoration.defaultBackground,
  'terminalCommandDecoration.successBackground': terminalCommandDecoration.successBackground,
  'terminalCommandDecoration.errorBackground': terminalCommandDecoration.errorBackground,
  'terminalOverviewRuler.cursorForeground': terminalOverviewRuler.cursorForeground,
  'terminalOverviewRuler.findMatchForeground': terminalOverviewRuler.findMatchForeground,
}
