// --------------------------------------------
// Breadcrumbs colors
// The theme colors for breadcrumbs navigation.
// --------------------------------------------

local pallet = (import '../pallet.libsonnet');

local breadcrumb = {
  // Color of breadcrumb items. {default: #cccccccc}
  foreground: 'null',  // {theme: #d0d0d0cc}

  // Background color of breadcrumb items. {default: #1e1e1e}
  background: 'null',  // {theme: #1c1c1c}

  // Color of focused breadcrumb items. {default: #e0e0e0}
  focusForeground: pallet.foreground1,

  // Color of selected breadcrumb items. {default: #e0e0e0}
  activeSelectionForeground: pallet.foreground1,
};

local breadcrumbPicker = {
  // Background color of breadcrumb item picker. {default: #252526}
  background: 'null',  // {theme: #1c1c1c}
};

{
  'breadcrumb.foreground': breadcrumb.foreground,
  'breadcrumb.background': breadcrumb.background,
  'breadcrumb.focusForeground': breadcrumb.focusForeground,
  'breadcrumb.activeSelectionForeground': breadcrumb.activeSelectionForeground,
  'breadcrumbPicker.background': breadcrumbPicker.background,
}
