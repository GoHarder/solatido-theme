// ------------------------------------------------------------------
// Dropdown Control
// A set of colors for all Dropdown widgets such as in the Integrated
// Terminal or the Output panel. Note that the Dropdown control is
// not used on macOS currently.
// ------------------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local dropdown = {
  // Dropdown background. {default: #3c3c3c}
  background: pallet.background2,

  // Dropdown list background. {default: null}
  listBackground: pallet.background3,

  // Dropdown border. {default: #3c3c3c}
  border: pallet.border3,

  // Dropdown foreground. {default: #f0f0f0}
  foreground: pallet.foreground1,
};

{
  'dropdown.background': dropdown.background,
  'dropdown.listBackground': dropdown.listBackground,
  'dropdown.border': dropdown.border,
  'dropdown.foreground': dropdown.foreground,
}
