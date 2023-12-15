local pallet = (import '../pallet.libsonnet');

local titleBar = {
  // Title Bar background when the window is active. {default: #3c3c3c}
  activeBackground: pallet.background2,

  // Title Bar foreground when the window is active. {default: #cccccc}
  activeForeground: pallet.foreground2,

  // Title Bar background when the window is inactive. {default: #3c3c3c99}
  inactiveBackground: pallet.background2,

  // Title Bar foreground when the window is inactive. {default: #cccccc99}
  inactiveForeground: pallet.inactiveForeground2,

  // Title bar border color. code {default: null}
  border: pallet.border2,
};

{
  'titleBar.activeBackground': titleBar.activeBackground,
  'titleBar.activeForeground': titleBar.activeForeground,
  'titleBar.inactiveBackground': titleBar.inactiveBackground,
  'titleBar.inactiveForeground': titleBar.inactiveForeground,
  'titleBar.border': titleBar.border,
}
