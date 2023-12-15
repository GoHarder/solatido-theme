// ------------------------------------------------------------------------
// Peek View Colors
// Peek views are used to show references and declarations as a view inside
// the editor.
// ------------------------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local peekView = {
  // Color of the peek view borders and arrow. {defalut: #3794ff}
  border: 'null',  // {theme: #50b9ff}
};

local peekViewEditor = {
  // Background color of the peek view editor. {default: #001f33}
  background: pallet.background3,

  // Match highlight color in the peek view editor. {default: #ff8f0099}
  matchHighlightBackground: pallet.green.base + pallet.opacity33_3,

  // Match highlight border color in the peek view editor. {default: null}
  matchHighlightBorder: pallet.green.base,
};

local peekViewEditorGutter = {
  // Background color of the gutter in the peek view editor.
  // {default: #001f33}
  background: 'null',  // {theme: #1c1c1c}
};

local peekViewResult = {
  // Background color of the peek view result list. {defauolt: #252526}
  background: pallet.background2,

  // Foreground color for file nodes in the peek view result list.
  // {default: #ffffff}
  fileForeground: 'null',  // set with code default

  // Foreground color for line nodes in the peek view result list.
  // {default: #bbbbbb}
  lineForeground: pallet.foreground2,

  // Match highlight color in the peek view result list.
  // {default: #ea5c004d}
  matchHighlightBackground: pallet.green.base + pallet.opacity33_3,

  // Background color of the selected entry in the peek view result list.
  // {default: #3399ff33}
  selectionBackground: pallet.focus2,

  // Foreground color of the selected entry in the peek view result list.
  // {default: #ffffff}
  selectionForeground: pallet.mono0,
};

local peekViewTitle = {
  // Background color of the peek view title area. {default: #252526}
  // background: pallet.mono0,
  background: '#212c33',
};

local peekViewTitleDescription = {
  // Color of the peek view title info. {default: #ccccccb3}
  foreground: pallet.foreground2,
};

local peekViewTitleLabel = {
  // Color of the peek view title. {default: #ffffff}
  foreground: 'null',  // set with code default
};

local peekViewEditorStickyScroll = {
  // Background color of sticky scroll in the peek view editor.
  // {default: #001f33}
  background: pallet.background2,
};

{
  'peekView.border': peekView.border,
  'peekViewEditor.background': peekViewEditor.background,
  'peekViewEditorGutter.background': peekViewEditorGutter.background,
  'peekViewEditor.matchHighlightBackground': peekViewEditor.matchHighlightBackground,
  'peekViewEditor.matchHighlightBorder': peekViewEditor.matchHighlightBorder,
  'peekViewResult.background': peekViewResult.background,
  'peekViewResult.fileForeground': peekViewResult.fileForeground,
  'peekViewResult.lineForeground': peekViewResult.lineForeground,
  'peekViewResult.matchHighlightBackground': peekViewResult.matchHighlightBackground,
  'peekViewResult.selectionBackground': peekViewResult.selectionBackground,
  'peekViewResult.selectionForeground': peekViewResult.selectionForeground,
  'peekViewTitle.background': peekViewTitle.background,
  'peekViewTitleDescription.foreground': peekViewTitleDescription.foreground,
  'peekViewTitleLabel.foreground': peekViewTitleLabel.foreground,
  'peekViewEditorStickyScroll.background': peekViewEditorStickyScroll.background,
}
