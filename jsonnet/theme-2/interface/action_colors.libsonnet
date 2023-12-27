// ---------------------------------------------------------------
// Action Colors
// A set of colors to control the interactions with actions across
// the workbench.
// ---------------------------------------------------------------

local color = (import '../colors.libsonnet');

local toolbar = {
  // Toolbar background when hovering over actions using the mouse.
  hoverBackground: color.onSurfaceVariant + color.opacity08,

  // Toolbar outline when hovering over actions using the mouse.
  hoverOutline: 'null',

  // Toolbar background when holding the mouse over actions.
  activeBackground: color.secondaryContainer,
};
{
  'toolbar.hoverBackground': toolbar.hoverBackground,
  'toolbar.hoverOutline': toolbar.hoverOutline,
  'toolbar.activeBackground': toolbar.activeBackground,
}
