// -----------------------------------------------------------
// Input Control
// Colors for input controls such as in the Search view or the
// Find/Replace dialog.
// -----------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local input = {
  // Input box background. {default: #3c3c3c}
  background: pallet.background2,

  // Input box border. {default: null}
  border: pallet.border3,

  // Input box foreground. {default: #cccccc}
  foreground: pallet.foreground2,

  // Input box foreground color for placeholder text. {default: #cccccc80}
  placeholderForeground: pallet.disabledForeground1,
};

local inputOption = {
  // Background color of activated options in input fields.
  // {default #007fd466}
  activeBackground: pallet.green.base,

  // Border color of activated options in input fields. {default: #007acc}
  activeBorder: pallet.green.base,

  // Foreground color of activated options in input fields.
  // {default: #ffffff}
  activeForeground: pallet.background2,

  // Background color of activated options in input fields.
  // {default: #5a5d5e80}
  hoverBackground: pallet.mono128 + pallet.opacity31_4,
};

local inputValidation = {
  // Input validation background color for error severity.
  // {default: #5a1d1d}
  errorBackground: '#2b1d1f',

  // Input validation foreground color for error severity. {default: null}
  errorForeground: 'null',

  // Input validation border color for error severity. {default: #be1100}
  errorBorder: pallet.red.sub3,

  // Input validation background color for information severity.
  // {default: #063b49}
  infoBackground: '#212c33',

  // Input validation foreground color for information severity.
  // {default: null}
  infoForeground: 'null',

  // Input validation border color for information severity.
  // {default: #007acc}
  infoBorder: pallet.blue.base,

  // Input validation background color for information warning.
  // {default: #352a05}
  warningBackground: '#322c21',

  // Input validation foreground color for warning severity. {default: null}
  warningForeground: 'null',

  // Input validation border color for warning severity. {default: #b89500}
  warningBorder: pallet.yellow.base,
};

{
  'input.background': input.background,
  'input.border': input.border,
  'input.foreground': input.foreground,
  'input.placeholderForeground': input.placeholderForeground,
  'inputOption.activeBackground': inputOption.activeBackground,
  'inputOption.activeBorder': inputOption.activeBorder,
  'inputOption.activeForeground': inputOption.activeForeground,
  'inputOption.hoverBackground': inputOption.hoverBackground,
  'inputValidation.errorBackground': inputValidation.errorBackground,
  'inputValidation.errorForeground': inputValidation.errorForeground,
  'inputValidation.errorBorder': inputValidation.errorBorder,
  'inputValidation.infoBackground': inputValidation.infoBackground,
  'inputValidation.infoForeground': inputValidation.infoForeground,
  'inputValidation.infoBorder': inputValidation.infoBorder,
  'inputValidation.warningBackground': inputValidation.warningBackground,
  'inputValidation.warningForeground': inputValidation.warningForeground,
  'inputValidation.warningBorder': inputValidation.warningBorder,
}
