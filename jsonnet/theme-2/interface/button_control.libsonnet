// ----------------------------------------------------------------
// Button Control
// A set of colors for button widgets such as Open Folder button in
// the Explorer of a new window.
// ----------------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local button = {
  // Button foreground color. {default: #ffffff}
  foreground: pallet.mono0,

  // Button background color. {default: #0e639c}
  background: pallet.green.base,

  // Button background color when hovering. {default: #1177bb}
  hoverBackground: pallet.green.sub2,

  // Secondary button foreground color. {default: #ffffff}
  secondaryForeground: pallet.mono0,

  // Secondary button background color. {default: #3a3d41}
  secondaryBackground: pallet.mono198,

  // Secondary button background color when hovering. {default: #45494e}
  secondaryHoverBackground: pallet.mono208,

  // Button border color. {default: null}
  border: 'null',  // set with code default

  // Button separator color. {default: #ffffff66}
  separator: pallet.mono0,
};

local checkbox = {
  // Background color of checkbox widget. {default: #3c3c3c}
  background: pallet.background2,

  // Foreground color of checkbox widget. {default: #f0f0f0}
  foreground: pallet.green.base,

  // Border color of checkbox widget. {default: #3c3c3c}
  border: pallet.border3,

  // Background color of checkbox widget when the element it's in is
  // selected. {default: #252526}
  selectBackground: 'null',  // NOTE: Can't find

  // Border color of checkbox widget when the element it's in is selected.
  // {default: #c5c5c5}
  selectBorder: 'null',  // {theme: #d0d0d0}
};

{
  'button.background': button.background,
  'button.foreground': button.foreground,
  'button.border': button.border,
  'button.separator': button.separator,
  'button.hoverBackground': button.hoverBackground,
  'button.secondaryForeground': button.secondaryForeground,
  'button.secondaryBackground': button.secondaryBackground,
  'button.secondaryHoverBackground': button.secondaryHoverBackground,
  'checkbox.background': checkbox.background,
  'checkbox.foreground': checkbox.foreground,
  'checkbox.border': checkbox.border,
  'checkbox.selectBackground': checkbox.selectBackground,
  'checkbox.selectBorder': checkbox.selectBorder,
}
