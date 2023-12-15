local pallet = (import '../pallet.libsonnet');

local menubar = {
  // Foreground color of the selected menu item in the menubar.
  // {default: #cccccc}
  selectionForeground: pallet.mono0,

  // Background color of the selected menu item in the menubar.
  // {default: #5a5d5e50}
  selectionBackground: pallet.blue.base,

  // Border color of the selected menu item in the menubar. {default: null}
  selectionBorder: 'null',  // set with code default
};

local menu = {
  // Foreground color of menu items. {default: #f0f0f0}
  foreground: 'null',  // {theme: #ffffff}

  // Background color of menu items. {default: #3c3c3c}
  background: pallet.background3,

  // Foreground color of the selected menu item in menus.
  // {default: #ffffff}
  selectionForeground: 'null',  // {theme: #000000}

  // Background color of the selected menu item in menus.
  // {default: #04395e}
  selectionBackground: 'null',  // {theme: #50b9ff}

  // Border color of the selected menu item in menus. {default: null}
  selectionBorder: 'null',  // set with code default

  // Color of a separator menu item in menus. {default: #606060}
  separatorBackground: pallet.border2,

  // Border color of menus. {default: null}
  border: pallet.border3,
};

{
  'menubar.selectionForeground': menubar.selectionForeground,
  'menubar.selectionBackground': menubar.selectionBackground,
  'menubar.selectionBorder': menubar.selectionBorder,
  'menu.foreground': menu.foreground,
  'menu.background': menu.background,
  'menu.selectionForeground': menu.selectionForeground,
  'menu.selectionBackground': menu.selectionBackground,
  'menu.selectionBorder': menu.selectionBorder,
  'menu.separatorBackground': menu.separatorBackground,
  'menu.border': menu.border,
}
