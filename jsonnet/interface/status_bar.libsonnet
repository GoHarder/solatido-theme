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

  // Status bar background color when the workbench is offline. The status
  // bar is shown in the bottom of the window. {default: #6c1717}
  offlineBackground: 'null',  // TODO: Set statusBar.offlineBackground

  // Status bar foreground color when the workbench is offline. The status
  // bar is shown in the bottom of the window. {default: #ffffff}
  offlineForeground: 'null',  // TODO: Set statusBar.offlineForeground
};

local statusBarItem = {
  // Status Bar item background color when clicking. {default: #ffffff2e}
  activeBackground: 'null',  // set with code default

  // Status Bar item background color when hovering. {default: #ffffff1f}
  hoverBackground: 'null',  // set with code default

  // Status bar item background color when hovering an item that
  // contains two hovers. The status bar is shown in the bottom of
  // the window. {default: #ffffff33}
  compactHoverBackground: 'null',  // set with code default

  // Status bar item border color when focused on keyboard navigation. The
  // status bar is shown in the bottom of the window. {default: #ffffff}
  focusBorder: 'null',  // set with code default

  // Status Bar prominent items foreground color. {default: #ffffff}
  prominentForeground: 'null',  // TODO: Set statusBarItem.prominentForeground

  // Status Bar prominent items background color. {default: #00000080}
  prominentBackground: 'null',  // TODO: Set statusBarItem.prominentBackground

  // Status Bar prominent items background color when hovering.
  // {default: #0000004d}
  prominentHoverBackground: 'null',  // TODO: Set statusBarItem.prominentHoverBackground

  // Background color for the remote indicator on the status bar.
  // {default: #007acc}
  remoteBackground: pallet.border2,

  // Foreground color for the remote indicator on the status bar.
  // {default: #ffffff}
  remoteForeground: pallet.foreground1,

  // Status bar error items background color. Error items stand out from
  // other status bar entries to indicate error conditions.
  // {default: #c72e0f}
  errorBackground: pallet.mono0,

  // Status bar error items foreground color. Error items stand out
  // from other status bar entries to indicate error conditions.
  // {default: #ffffff}
  errorForeground: pallet['error'],

  // Status bar warning items background color. Warning items stand
  // out from other status bar entries to indicate warning conditions.
  // The status bar is shown in the bottom of the window.
  // {default: #7a6400}
  warningBackground: pallet.mono0,

  // Status bar warning items foreground color. Warning items stand
  // out from other status bar entries to indicate warning conditions.
  // The status bar is shown in the bottom of the window.
  // {default: #ffffff}
  warningForeground: pallet.warning,
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
  'statusBar.offlineBackground': statusBar.offlineBackground,
  'statusBar.offlineForeground': statusBar.offlineForeground,
}
