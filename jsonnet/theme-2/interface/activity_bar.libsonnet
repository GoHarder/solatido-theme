// -----------------------------------------------------------------
// Activity Bar
// The Activity Bar is displayed either on the far left or right of
// the workbench and allows fast switching between views of the Side
// Bar.
// -----------------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local activityBar = {
  // Activity Bar background color. {default: #333333}
  background: pallet.background3,

  // Drag and drop feedback color for the activity bar items. The activity
  // bar is showing on the far left or right and allows to switch between
  // views of the side bar. {default: #ffffff}
  dropBorder: 'null',  // set with code default

  // Activity Bar foreground color (for example used for the icons).
  // {default: #ffffff}
  foreground: pallet.foreground2,

  // Activity Bar item foreground color when it is inactive.
  // {default: #ffffff66}
  inactiveForeground: 'null',  // {theme: #d0d0d066}

  // Activity Bar border color with the Side Bar. {default: null}
  border: pallet.border2,

  // Activity Bar active indicator border color. {default: #ffffff}
  activeBorder: pallet.focus2,

  // Activity Bar optional background color for the active element.
  // {default: null}
  activeBackground: pallet.background2,

  // Activity bar focus border color for the active item. {default: null}
  activeFocusBorder: pallet.mono255,
};

local activityBarBadge = {
  // Activity notification badge background color. {default: #007acc}
  background: pallet.background3,

  // Activity notification badge foreground color. {default: #ffffff}
  foreground: pallet.yellow.base,
};

{
  'activityBar.background': activityBar.background,
  'activityBar.dropBorder': activityBar.dropBorder,
  'activityBar.foreground': activityBar.foreground,
  'activityBar.inactiveForeground': activityBar.inactiveForeground,
  'activityBar.border': activityBar.border,
  'activityBarBadge.background': activityBarBadge.background,
  'activityBarBadge.foreground': activityBarBadge.foreground,
  'activityBar.activeBorder': activityBar.activeBorder,
  'activityBar.activeBackground': activityBar.activeBackground,
  'activityBar.activeFocusBorder': activityBar.activeFocusBorder,
}
