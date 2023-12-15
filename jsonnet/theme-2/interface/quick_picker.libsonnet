local pallet = (import '../pallet.libsonnet');

local pickerGroup = {
  // Quick picker (Quick Open) color for grouping borders.
  // {default: #3f3f46}
  border: pallet.border2,

  // Quick picker (Quick Open) color for grouping labels.
  // {default: #3794ff}
  foreground: pallet.focus2,
};

local quickInput = {
  // Quick input background color. The quick input widget is the container
  // for views like the color theme picker. {default: #252526}
  background: 'null',  // {theme: #1c1c1c}

  // Quick input foreground color. The quick input widget is the container
  // for views like the color theme picker.  {default: #cccccc}
  foreground: 'null',  // {theme: #d0d0d0}
};

local quickInputList = {
  // Quick picker background color for the focused item. {default: #04395e}
  focusBackground: 'null',  // {theme: #50b9ff}

  // Quick picker foreground color for the focused item. {default: #ffffff}
  focusForeground: 'null',  // {theme: #000000}

  // Quick picker icon foreground color for the focused item. {default: null}
  focusIconForeground: 'null',  // set with code default
};

local quickInputTitle = {
  // Quick picker title background color. The quick picker widget is the
  // container for pickers like the Command Palette. {default: #ffffff1b}
  background: pallet.background2,
};

{
  'pickerGroup.border': pickerGroup.border,
  'pickerGroup.foreground': pickerGroup.foreground,
  'quickInput.background': quickInput.background,
  'quickInput.foreground': quickInput.foreground,
  'quickInputList.focusBackground': quickInputList.focusBackground,
  'quickInputList.focusForeground': quickInputList.focusForeground,
  'quickInputList.focusIconForeground': quickInputList.focusIconForeground,
  'quickInputTitle.background': quickInputTitle.background,
}
