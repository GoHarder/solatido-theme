local pallet = (import '../pallet.libsonnet');

local keybindingTable = {
  // Background color for the keyboard shortcuts table header.
  // {default: #cccccc0a}
  headerBackground: pallet.background1,

  // Background color for the keyboard shortcuts table alternating rows.
  // {default: #cccccc0a}
  rowsBackground: 'null',  // {theme: #ffffff0a}
};

{
  'keybindingTable.headerBackground': keybindingTable.headerBackground,
  'keybindingTable.rowsBackground': keybindingTable.rowsBackground,
}
