// -------------------------------------------------------------------------
// Settings Editor Colors
// These colors are for the GUI settings editor which can be opened with the
// Preferences: Open Settings (UI) command.
// -------------------------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local settings = {
  // The line that indicates a modified setting. {default: #0c7d9d}
  modifiedItemIndicator: pallet.yellow.base,

  // The color of the Settings editor splitview sash border.
  // {default: #80808059}
  sashBorder: 'null',  // {theme: #444444}

  // The background color of a settings row when hovered.
  // {default: #2a2d2e4d}
  rowHoverBackground: pallet.background2,

  // The foreground color for a section header or hovered title.
  // {default: #e7e7e7b3}
  settingsHeaderHoverForeground: pallet.focus2,

  // The foreground color for a section header or active title.
  // {default: #e7e7e7}
  headerForeground: pallet.foreground1,

  // The color of the header container border. {default: #80808059}
  headerBorder: 'null',  // {theme: #444444}

  // Dropdown background. {default: #3c3c3c}
  dropdownBackground: 'null',  // {theme: #080808}

  // Dropdown foreground. {default: #f0f0f0}
  dropdownForeground: 'null',  // {theme: #ffffff}

  // Dropdown border. {default: #3c3c3c}
  dropdownBorder: 'null',  // {theme: #626262}

  // Dropdown list border. {default: #454545}
  dropdownListBorder: 'null',  // {theme: #444444}

  // Checkbox background.
  checkboxBackground: 'null',  // {theme: #00000000}

  // Checkbox foreground. {default: #f0f0f0}
  checkboxForeground: 'null',  // {theme: #98bf66}

  // Checkbox border. {default: #3c3c3c}
  checkboxBorder: 'null',  // {theme: #626262}

  // Text input box background. {default: #3c3c3c}
  textInputBackground: 'null',  // {theme: #080808}

  // Text input box foreground. {default: #cccccc}
  textInputForeground: 'null',  // {theme: #d0d0d0}

  // Text input box border. {default: nul}
  textInputBorder: 'null',  // {theme: #626262}

  // Number input box background. {default: #3c3c3c}
  numberInputBackground: 'null',  // {theme: #080808}

  // Number input box foreground. {default: #cccccc}
  numberInputForeground: 'null',  // {theme: #d0d0d0}

  // Number input box border. {default: nul}
  numberInputBorder: 'null',  // {theme: #626262}

  // Background color of a focused setting row. {default: #2a2d2e99}
  focusedRowBackground: pallet.background1,

  // The color of the row's top and bottom border when the row is focused.
  // {default: #007fd4}
  focusedRowBorder: 'null',  // {theme: #ffffff}
};

{
  'settings.headerForeground': settings.headerForeground,
  'settings.modifiedItemIndicator': settings.modifiedItemIndicator,
  'settings.dropdownBackground': settings.dropdownBackground,
  'settings.dropdownForeground': settings.dropdownForeground,
  'settings.dropdownBorder': settings.dropdownBorder,
  'settings.dropdownListBorder': settings.dropdownListBorder,
  'settings.checkboxBackground': settings.checkboxBackground,
  'settings.checkboxForeground': settings.checkboxForeground,
  'settings.checkboxBorder': settings.checkboxBorder,
  'settings.rowHoverBackground': settings.rowHoverBackground,
  'settings.textInputBackground': settings.textInputBackground,
  'settings.textInputForeground': settings.textInputForeground,
  'settings.textInputBorder': settings.textInputBorder,
  'settings.numberInputBackground': settings.numberInputBackground,
  'settings.numberInputForeground': settings.numberInputForeground,
  'settings.numberInputBorder': settings.numberInputBorder,
  'settings.focusedRowBackground': settings.focusedRowBackground,
  'settings.focusedRowBorder': settings.focusedRowBorder,
  'settings.headerBorder': settings.headerBorder,
  'settings.sashBorder': settings.sashBorder,
  'settings.settingsHeaderHoverForeground': settings.settingsHeaderHoverForeground,
}
