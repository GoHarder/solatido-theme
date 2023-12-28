local color = (import '../colors.libsonnet');

local titleBar = {
  // Title Bar background when the window is active.
  activeBackground: color.surfaceContainerHigh,

  // Title Bar foreground when the window is active.
  activeForeground: color.onSurface,

  // Title Bar background when the window is inactive.
  inactiveBackground: color.surfaceContainerHigh,

  // Title Bar foreground when the window is inactive.
  inactiveForeground: color.onSurfaceVariant,

  // Title bar border color. code {default: null}
  border: 'null',  // Done
};

{
  'titleBar.activeBackground': titleBar.activeBackground,
  'titleBar.activeForeground': titleBar.activeForeground,
  'titleBar.inactiveBackground': titleBar.inactiveBackground,
  'titleBar.inactiveForeground': titleBar.inactiveForeground,
  'titleBar.border': titleBar.border,
}
