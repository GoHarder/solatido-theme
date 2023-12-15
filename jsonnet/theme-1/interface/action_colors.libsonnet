// ---------------------------------------------------------------
// Action Colors
// A set of colors to control the interactions with actions across
// the workbench.
// ---------------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local toolbar = {
  // Toolbar background when hovering over actions using the mouse.
  // {default: #5a5d5e50}
  hoverBackground: pallet.mono118 + pallet.opacity31_4,

  // Toolbar outline when hovering over actions using the mouse.
  // {default: null}
  hoverOutline: 'null',  // set with code default

  // Toolbar background when holding the mouse over actions.
  // {default: #63666750}
  activeBackground: pallet.mono128 + pallet.opacity31_4,
};
{
  'toolbar.hoverBackground': toolbar.hoverBackground,
  'toolbar.hoverOutline': toolbar.hoverOutline,
  'toolbar.activeBackground': toolbar.activeBackground,
}
