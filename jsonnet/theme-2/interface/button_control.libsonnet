// ----------------------------------------------------------------
// Button Control
// A set of colors for button widgets such as Open Folder button in
// the Explorer of a new window.
// ----------------------------------------------------------------

local color = (import '../colors.libsonnet');

local button = {
  // Button foreground color.
  foreground: color.onPrimary,

  // Button background color.
  background: color.primary,

  // Button background color when hovering.
  hoverBackground: color.primaryHover,

  // Secondary button foreground color.
  secondaryForeground: color.onSecondaryContainer,

  // Secondary button background color.
  secondaryBackground: color.secondaryContainer,

  // Secondary button background color when hovering.
  secondaryHoverBackground: color.secondaryContainerHover,

  // Button border color.
  border: 'null',  // Done

  // Button separator color.
  separator: color.onPrimary,
};

local checkbox = {
  // Background color of checkbox widget.
  background: '#00000000',

  // Foreground color of checkbox widget.
  foreground: color.onSurface,

  // Border color of checkbox widget.
  border: color.onSurfaceVariant,

  // Background color of checkbox widget when the element it's in is
  // selected. {default: #252526}
  selectBackground: 'null',  // NOTE: Can't find

  // Border color of checkbox widget when the element it's in is selected.
  // {default: #c5c5c5}
  selectBorder: 'null',  // NOTE: Can't find
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
