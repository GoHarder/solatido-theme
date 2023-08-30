// -----------------------------------------------------------------------
// Editor Widget Colors
// The Editor widget is shown in front of the editor content. Examples are
// the find/replace dialog, the suggestion widget, and the editor hover.
// -----------------------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local editorWidget = {
  // Foreground color of editor widgets, such as find/replace.
  // {default: #cccccc}
  foreground: 'null',  // {theme: #d0d0d0}

  // Background color of editor widgets, such as find/replace.
  // {default: #252526}
  background: pallet.background3,

  // Border color of the editor widget unless the widget does not contain a
  // border or defines its own border color.{default: #454545}
  border: pallet.border3,

  // Border color of the resize bar of editor widgets. The color is only
  // used if the widget chooses to have a resize border and if the color is
  // not overridden by a widget. {default: null}
  // resizeBorder: pallet.border3,
  resizeBorder: 'null',  // {theme: #626262}
};

local editorSuggestWidget = {
  // Background color of the suggestion widget.
  // {default: '#252526}
  background: pallet.background2,

  // Border color of the suggestion widget. {default: #454545}
  border: 'null',  // {theme: #626262}

  // Foreground color of the suggestion widget. {default: #bbbbbb}
  // foreground: pallet.foreground2,
  foreground: pallet.foreground2,

  // Color of the match highlights in the suggest widget when an item is
  // focused. {default: #2aaaff}
  focusHighlightForeground: 'null',  // {theme: #000000}

  // Color of the match highlights in the suggestion widget.
  // {default: #2aaaff}
  highlightForeground: 'null',  // {theme: #50b9ff}

  // Background color of the selected entry in the suggestion widget.
  // {default: #04395e}
  selectedBackground: 'null',  // {theme: #50b9ff}

  // Foreground color of the selected entry in the suggest widget.
  // {default: #ffffff}
  selectedForeground: 'null',  // {theme: #000000}

  // Icon foreground color of the selected entry in the suggest widget.
  // {default: null}
  selectedIconForeground: 'null',  // {theme: #000000}
};

local editorSuggestWidgetStatus = {
  // Foreground color of the suggest widget status. {default: #bbbbbb80}
  foreground: 'null',  // NOTE: Can't find
};

local editorHoverWidget = {
  // Foreground color of the editor hover. {default: #cccccc}
  foreground: 'null',  // {theme: #d0d0d0}

  // Background color of the editor hover. {default: #252526}
  background: 'null',  // {theme: #1c1c1c}

  // Border color of the editor hover. {default: #454545}
  border: pallet.focus2,

  // Foreground color of the active item in the parameter hint.
  // {default: #2aaaff}
  highlightForeground: 'null',  // {theme: #50b9ff}

  // Background color of the editor hover status bar. {default: #2c2c2d}
  statusBarBackground: 'null',  // TODO: Set editorHoverWidget.statusBarBackground
};

local editorGhostText = {
  // Border color of the ghost text shown by inline completion providers
  // and the suggest preview. {default: null}
  border: 'null',  // TODO: Set editorGhostText.border

  // Background color of the ghost text in the editor. {default: null}
  background: 'null',  // TODO: Set editorGhostText.background

  // Foreground color of the ghost text shown by inline completion
  // providers and the suggest preview. {default: #ffffff56}
  foreground: 'null',  // TODO: Set editorGhostText.foreground
};

local editorStickyScroll = {
  // Editor sticky scroll background color. {default: #1e1e1e}
  background: pallet.background2,
};

local editorStickyScrollHover = {
  // Editor sticky scroll on hover background color. {default: #2a2d2e}
  background: pallet.mono38,
};

local debugExceptionWidget = {
  // Exception widget background color. {default: #420b0d}
  background: 'null',  // TODO: Set debugExceptionWidget.background

  // Exception widget border color. {default: #a31515}
  border: 'null',  // TODO: Set debugExceptionWidget.border
};

// NOTE: Opens with F8 key
local editorMarkerNavigation = {
  // Editor marker navigation widget background. {default: #1e1e1e}
  background: pallet.background2,
};

local editorMarkerNavigationError = {
  // Editor marker navigation widget error color. {default: #f14c4c}
  background: 'null',  // {theme: #e75258}

  // Editor marker navigation widget error heading background.
  // {default: #f14c4c1a}
  headerBackground: 'null',  // {theme: #e752581a}
};

local editorMarkerNavigationWarning = {
  // Editor marker navigation widget warning color. {default: #cca700}
  background: 'null',  // {theme: #f8bd49}

  // Editor marker navigation widget warning heading background.
  // {default: #cca7001a}
  headerBackground: 'null',  // {theme: #f8bd491a}
};

local editorMarkerNavigationInfo = {
  // Editor marker navigation widget info color. {default: #3794ff}
  background: 'null',  // {theme: #50b9ff}

  // Editor marker navigation widget info heading background.
  // {default: #3794ff1a}
  headerBackground: 'null',  // {theme: #50b9ff1a}
};

{
  'editorWidget.foreground': editorWidget.foreground,
  'editorWidget.background': editorWidget.background,
  'editorWidget.border': editorWidget.border,
  'editorWidget.resizeBorder': editorWidget.resizeBorder,
  'editorSuggestWidget.background': editorSuggestWidget.background,
  'editorSuggestWidget.border': editorSuggestWidget.border,
  'editorSuggestWidget.foreground': editorSuggestWidget.foreground,
  'editorSuggestWidget.focusHighlightForeground': editorSuggestWidget.focusHighlightForeground,
  'editorSuggestWidget.highlightForeground': editorSuggestWidget.highlightForeground,
  'editorSuggestWidget.selectedBackground': editorSuggestWidget.selectedBackground,
  'editorSuggestWidget.selectedForeground': editorSuggestWidget.selectedForeground,
  'editorSuggestWidget.selectedIconForeground': editorSuggestWidget.selectedIconForeground,
  'editorSuggestWidgetStatus.foreground': editorSuggestWidgetStatus.foreground,
  'editorHoverWidget.foreground': editorHoverWidget.foreground,
  'editorHoverWidget.background': editorHoverWidget.background,
  'editorHoverWidget.border': editorHoverWidget.border,
  'editorHoverWidget.highlightForeground': editorHoverWidget.highlightForeground,
  'editorHoverWidget.statusBarBackground': editorHoverWidget.statusBarBackground,
  'editorGhostText.border': editorGhostText.border,
  'editorGhostText.background': editorGhostText.background,
  'editorGhostText.foreground': editorGhostText.foreground,
  'editorStickyScroll.background': editorStickyScroll.background,
  'editorStickyScrollHover.background': editorStickyScrollHover.background,
  'debugExceptionWidget.background': debugExceptionWidget.background,
  'debugExceptionWidget.border': debugExceptionWidget.border,
  'editorMarkerNavigation.background': editorMarkerNavigation.background,
  'editorMarkerNavigationError.background': editorMarkerNavigationError.background,
  'editorMarkerNavigationWarning.background': editorMarkerNavigationWarning.background,
  'editorMarkerNavigationInfo.background': editorMarkerNavigationInfo.background,
  'editorMarkerNavigationError.headerBackground': editorMarkerNavigationError.headerBackground,
  'editorMarkerNavigationWarning.headerBackground': editorMarkerNavigationWarning.headerBackground,
  'editorMarkerNavigationInfo.headerBackground': editorMarkerNavigationInfo.headerBackground,
}
