local pallet = (import '../pallet.libsonnet');

// Overall border color for focused elements. {default: #007fd4}
local focusBorder = pallet.focus1;

// Overall foreground color. {default: #cccccc}
local foreground = pallet.foreground2;

// Overall foreground for disabled elements. {default: #cccccc80}
local disabledForeground = pallet.disabledForeground2;

// Foreground color for description text providing additional information,
// for example for a label. {default: #ccccccb3}
local descriptionForeground = pallet.descriptionForeground2;

// Overall foreground color for error messages (this color is only used if
// not overridden by a component). {default: #f48771}
local errorForeground = pallet['error'];

local widget = {
  // Border color of widgets such as Find/Replace inside the editor.
  // {default: null}
  border: pallet.border2,

  // Shadow color of widgets such as Find/Replace inside the editor.
  // {default: #0000005c}
  shadow: 'null',  // set with code default
};

local selection = {
  // Background color of text selections in the workbench (for input fields
  // or text areas, does not apply to selections within the editor and the
  // terminal). {default: null}
  background: pallet.blue.sub3,
};

local icon = {
  // The default color for icons in the workbench. {default: #c5c5c5}
  foreground: pallet.foreground2,
};

local sash = {
  // The hover border color for draggable sashes. {default: #007fd4}
  hoverBorder: pallet.focus2,
};

{
  focusBorder: focusBorder,
  foreground: foreground,
  disabledForeground: disabledForeground,
  'widget.border': widget.border,
  'widget.shadow': widget.shadow,
  'selection.background': selection.background,
  descriptionForeground: descriptionForeground,
  errorForeground: errorForeground,
  'icon.foreground': icon.foreground,
  'sash.hoverBorder': sash.hoverBorder,
}
