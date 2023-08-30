local pallet = (import '../pallet.libsonnet');

local debugToolBar = {
  // Debug toolbar background color. {default: #333333}
  background: pallet.background3,

  // Debug toolbar border color. {default: null}
  border: pallet.border2,
};

local editor = {
  // Background color of the top stack frame highlight in the editor.
  // {default: #ffff0033}
  stackFrameHighlightBackground: 'null',  // TODO: Set editor.stackFrameHighlightBackground

  // Background color of the focused stack frame highlight in the editor.
  // {default: #7abd7a4d}
  focusedStackFrameHighlightBackground: 'null',  // TODO: Set editor.stackFrameHighlightBackground

  // Color for the debug inline value text. {default: #ffffff80}
  inlineValuesForeground: 'null',  // TODO: Set editor.inlineValuesForeground

  // Color for the debug inline value background. {default: #ffc80033}
  inlineValuesBackground: 'null',  // TODO: Set editor.inlineValuesBackground
};

local debugView = {
  // Foreground color for a label shown in the CALL STACK view when the
  // debugger breaks on an exception. {default: #cccccc}
  exceptionLabelForeground: 'null',  // TODO: Set debugView.exceptionLabelForeground

  // Background color for a label shown in the CALL STACK view when the
  // debugger breaks on an exception. {default: #6c2022}
  exceptionLabelBackground: 'null',  // TODO: Set debugView.exceptionLabelBackground

  // Foreground color for a label in the CALL STACK view showing the current
  // session's or thread's state. {default: #cccccc}
  stateLabelForeground: 'null',  // TODO: Set debugView.stateLabelForeground

  // Background color for a label in the CALL STACK view showing the current
  // session's or thread's state. {default: #88888844}
  stateLabelBackground: 'null',  // TODO: Set debugView.stateLabelBackground

  // Color used to highlight value changes in the debug views (such as in
  // the Variables view). {default: #569cd6}
  valueChangedHighlight: 'null',  // TODO: Set debugView.valueChangedHighlight
};

local debugTokenExpression = {
  // Foreground color for the token names shown in debug views (such as in
  // the Variables or Watch view). {default: #c586c0}
  name: 'null',  // TODO: Set debugTokenExpression.name

  // Foreground color for the token values shown in debug views.
  // {default: #cccccc99}
  value: 'null',  // TODO: Set debugTokenExpression.value

  // Foreground color for strings in debug views. {default: #ce9178}
  string: 'null',  // TODO: Set debugTokenExpression.string

  // Foreground color for booleans in debug views. {default: #4e94ce}
  boolean: 'null',  // TODO: Set debugTokenExpression.boolean

  // Foreground color for numbers in debug views. {default: #b5cea8}
  number: 'null',  // TODO: Set debugTokenExpression.number

  // Foreground color for expression errors in debug views.
  // {default: #f48771}
  'error': 'null',  // TODO: Set debugTokenExpression.error
};

{
  'debugToolBar.background': debugToolBar.background,
  'debugToolBar.border': debugToolBar.border,
  'editor.stackFrameHighlightBackground': editor.stackFrameHighlightBackground,
  'editor.focusedStackFrameHighlightBackground': editor.focusedStackFrameHighlightBackground,
  'editor.inlineValuesForeground': editor.inlineValuesForeground,
  'editor.inlineValuesBackground': editor.inlineValuesBackground,
  'debugView.exceptionLabelForeground': debugView.exceptionLabelForeground,
  'debugView.exceptionLabelBackground': debugView.exceptionLabelBackground,
  'debugView.stateLabelForeground': debugView.stateLabelForeground,
  'debugView.stateLabelBackground': debugView.stateLabelBackground,
  'debugView.valueChangedHighlight': debugView.valueChangedHighlight,
  'debugTokenExpression.name': debugTokenExpression.name,
  'debugTokenExpression.value': debugTokenExpression.value,
  'debugTokenExpression.string': debugTokenExpression.string,
  'debugTokenExpression.boolean': debugTokenExpression.boolean,
  'debugTokenExpression.number': debugTokenExpression.number,
  'debugTokenExpression.error': debugTokenExpression['error'],
}
