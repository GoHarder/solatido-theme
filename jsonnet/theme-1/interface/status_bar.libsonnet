// -------------------------------------------------------
// Status Bar Colors
// The Status Bar is shown in the bottom of the workbench.
// -------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local statusBar = {
  // Standard Status Bar background color. {default: #007acc}
  background: pallet.background2,

  // Status Bar foreground color. {default: #ffffff}
  foreground: pallet.foreground2,

  // Status Bar border color separating the Status Bar and editor.
  // {default: null}
  border: pallet.border2,

  // Status Bar background color when a program is being debugged.
  // {default: #cc6633}
  debuggingBackground: pallet.background2,

  // Status Bar foreground color when a program is being debugged.
  // {default: #ffffff}
  debuggingForeground: pallet.blue.base,

  // Status Bar border color separating the Status Bar and editor
  // when a program is being debugged. {default: null}
  debuggingBorder: 'null',  // {theme: #444444}

  // Status Bar background color when no folder is opened.
  // {default: #68217a}
  noFolderBackground: pallet.background2,

  // Status Bar foreground color when no folder is opened.
  // {default: #ffffff}
  noFolderForeground: pallet.disabledForeground2,

  // Status Bar border color separating the Status Bar and editor when no
  // folder is opened. {default: null}
  noFolderBorder: 'null',  // {theme: #444444}

  // Status bar border color when focused on keyboard navigation. The status
  // bar is shown in the bottom of the window. {default: #ffffff}
  focusBorder: pallet.border2,
};

local statusBarItem = {
  // Status Bar item background color when clicking. {default: #ffffff2e}
  activeBackground: pallet.green.base,

  // Status Bar item background color when hovering. {default: #ffffff1f}
  hoverBackground: pallet.border2,

  // Don't know where this one was
  hoverForeground: pallet.foreground1,

  // Status bar item background color when hovering an item that
  // contains two hovers. The status bar is shown in the bottom of
  // the window. {default: #ffffff33}
  compactHoverBackground: pallet.green.sub3,

  // Status bar item border color when focused on keyboard navigation. The
  // status bar is shown in the bottom of the window. {default: #ffffff}
  focusBorder: 'null',  // set with code default

  // Status Bar prominent items foreground color. {default: #ffffff}
  prominentForeground: pallet.background2,

  // Status Bar prominent items background color. {default: #00000080}
  prominentBackground: pallet.focus2,

  // Status Bar prominent items background color when hovering.
  // {default: #0000004d}
  prominentHoverBackground: 'null',  // NOTE: Can't find

  // Background color for the remote indicator on the status bar.
  // {default: #007acc}
  remoteBackground: pallet.border2,

  // Foreground color for the remote indicator on the status bar.
  // {default: #ffffff}
  remoteForeground: pallet.foreground1,

  // Added in release 1.82.0
  remoteHoverBackground: pallet.focus2,

  // Added in release 1.82.0
  remoteHoverForeground: pallet.background2,

  // Status bar error items background color. Error items stand out from
  // other status bar entries to indicate error conditions.
  // {default: #c72e0f}
  errorBackground: pallet.clear,

  // Status bar error items foreground color. Error items stand out
  // from other status bar entries to indicate error conditions.
  // {default: #ffffff}
  errorForeground: pallet['error'],

  // Added in release 1.82.0
  errorHoverBackground: pallet['error'],

  // Added in release 1.82.0
  errorHoverForeground: pallet.background2,

  // Status bar warning items background color. Warning items stand
  // out from other status bar entries to indicate warning conditions.
  // The status bar is shown in the bottom of the window.
  // {default: #7a6400}
  warningBackground: pallet.clear,

  // Status bar warning items foreground color. Warning items stand
  // out from other status bar entries to indicate warning conditions.
  // The status bar is shown in the bottom of the window.
  // {default: #ffffff}
  warningForeground: pallet.warning,

  // Added in release 1.82.0
  warningHoverBackground: pallet.warning,

  // Added in release 1.82.0
  warningHoverForeground: pallet.background2,

  // Status bar background color when the workbench is offline. The status
  // bar is shown in the bottom of the window. {default: #6c1717}
  offlineBackground: pallet.clear,

  // Status bar foreground color when the workbench is offline. The status
  // bar is shown in the bottom of the window. {default: #ffffff}
  offlineForeground: pallet['error'],

  // Added in release 1.82.0
  offlineHoverBackground: pallet['error'],

  // Added in release 1.82.0
  offlineHoverForeground: pallet.background2,
};

{
  'statusBar.background': statusBar.background,
  'statusBar.foreground': statusBar.foreground,
  'statusBar.border': statusBar.border,
  'statusBar.debuggingBackground': statusBar.debuggingBackground,
  'statusBar.debuggingForeground': statusBar.debuggingForeground,
  'statusBar.debuggingBorder': statusBar.debuggingBorder,
  'statusBar.noFolderForeground': statusBar.noFolderForeground,
  'statusBar.noFolderBackground': statusBar.noFolderBackground,
  'statusBar.noFolderBorder': statusBar.noFolderBorder,
  'statusBarItem.activeBackground': statusBarItem.activeBackground,
  'statusBarItem.hoverBackground': statusBarItem.hoverBackground,
  'statusBarItem.hoverForeground': statusBarItem.hoverForeground,
  'statusBarItem.prominentForeground': statusBarItem.prominentForeground,
  'statusBarItem.prominentBackground': statusBarItem.prominentBackground,
  'statusBarItem.prominentHoverBackground': statusBarItem.prominentHoverBackground,
  'statusBarItem.remoteBackground': statusBarItem.remoteBackground,
  'statusBarItem.remoteForeground': statusBarItem.remoteForeground,
  'statusBarItem.errorBackground': statusBarItem.errorBackground,
  'statusBarItem.errorForeground': statusBarItem.errorForeground,
  'statusBarItem.warningBackground': statusBarItem.warningBackground,
  'statusBarItem.warningForeground': statusBarItem.warningForeground,
  'statusBarItem.compactHoverBackground': statusBarItem.compactHoverBackground,
  'statusBarItem.focusBorder': statusBarItem.focusBorder,
  'statusBar.focusBorder': statusBar.focusBorder,
  'statusBarItem.offlineBackground': statusBarItem.offlineBackground,
  'statusBarItem.offlineForeground': statusBarItem.offlineForeground,
  'statusBarItem.remoteHoverBackground': statusBarItem.remoteHoverBackground,
  'statusBarItem.remoteHoverForeground': statusBarItem.remoteHoverForeground,
  'statusBarItem.errorHoverBackground': statusBarItem.errorHoverBackground,
  'statusBarItem.errorHoverForeground': statusBarItem.errorHoverForeground,
  'statusBarItem.offlineHoverBackground': statusBarItem.offlineHoverBackground,
  'statusBarItem.offlineHoverForeground': statusBarItem.offlineHoverForeground,
  'statusBarItem.warningHoverBackground': statusBarItem.warningHoverBackground,
  'statusBarItem.warningHoverForeground': statusBarItem.warningHoverForeground,
}
