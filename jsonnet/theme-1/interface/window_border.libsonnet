// -------------------------------------------
// Window Border
// The theme colors for VS Code window border.
// -------------------------------------------

local pallet = (import '../pallet.libsonnet');

local window = {
  // Border color for the active (focused) window. {default: null}
  activeBorder: 'null',  // set with code default

  // Border color for the inactive (unfocused) windows. {default: null}
  inactiveBorder: 'null',  // set with code default
};

{
  'window.activeBorder': window.activeBorder,
  'window.inactiveBorder': window.inactiveBorder,
}
