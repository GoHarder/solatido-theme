local color = (import '../colors.libsonnet');

local menubar = {
  // Foreground color of the selected menu item in the menubar.
  selectionForeground: color.onSecondaryContainer,

  // Background color of the selected menu item in the menubar.
  selectionBackground: color.secondaryContainer,

  // Border color of the selected menu item in the menubar.
  selectionBorder: 'null',  // Done
};

local menu = {
  // Foreground color of menu items.
  foreground: color.onSurface,

  // Background color of menu items.
  background: color.surfaceContainer,

  // Foreground color of the selected menu item in menus.
  selectionForeground: color.onSurface,

  // Background color of the selected menu item in menus.
  selectionBackground: color.surfaceContainerHighest,

  // Border color of the selected menu item in menus.
  selectionBorder: 'null',  // Done

  // Color of a separator menu item in menus.
  separatorBackground: color.outlineVariant,

  // Border color of menus.
  border: 'null',  // Done
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
