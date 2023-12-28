// ------------------------------------------------------------------
// Dropdown Control
// A set of colors for all Dropdown widgets such as in the Integrated
// Terminal or the Output panel. Note that the Dropdown control is
// not used on macOS currently.
// ------------------------------------------------------------------

local color = (import '../colors.libsonnet');

local dropdown = {
  // Dropdown background.
  background: '#00000000',

  // Dropdown list background.
  listBackground: color.surfaceContainer,

  // Dropdown border.
  border: color.outline,

  // Dropdown foreground.
  foreground: color.onSurfaceVariant,
};

{
  'dropdown.background': dropdown.background,
  'dropdown.listBackground': dropdown.listBackground,
  'dropdown.border': dropdown.border,
  'dropdown.foreground': dropdown.foreground,
}
