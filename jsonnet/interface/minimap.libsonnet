// ---------------------------------------------------------
// Minimap
// The Minimap shows a minified version of the current file.
// ---------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local minimap = {
  // Highlight color for matches from search within files.
  // {default: #d18616}
  findMatchHighlight: pallet.green.sub1,

  // Highlight color for the editor selection. {default: #264f78}
  selectionHighlight: pallet.blue.sub3,

  // Highlight color for errors within the editor. {default: #ff1212b3}
  errorHighlight: pallet.red.base,

  // Highlight color for warnings within the editor. {default: #cca700}
  warningHighlight: pallet.yellow.sub2,

  // Minimap background color. {default: null}
  background: pallet.background2,

  // Minimap marker color for repeating editor selections.
  // {default: #676767}
  selectionOccurrenceHighlight: pallet.mono128,

  // Opacity of foreground elements rendered in the minimap. For example,
  // "#000000c0" will render the elements with 75% opacity.
  // {default: #000000}
  foregroundOpacity: 'null',  // set with code default
};

local minimapSlider = {
  // Minimap slider background color. {default: #79797933}
  background: pallet.mono118 + pallet.opacity20_0,

  // Minimap slider background color when hovering. {default: #64646459}
  hoverBackground: pallet.mono98 + pallet.opacity34_9,

  // Minimap slider background color when clicked on. {default: #bfbfbf33}
  activeBackground: pallet.mono188 + pallet.opacity20_0,
};

local minimapGutter = {
  // Minimap gutter color for added content. {default: #487e02}
  addedBackground: 'null',  // {theme: #98bf66}

  // Minimap gutter color for modified content. {default: #1b81a8}
  modifiedBackground: 'null',  // {theme: #50b9ff}

  // Minimap gutter color for deleted content. {default: #f14c4c}
  deletedBackground: 'null',  // {theme: #e75258}
};

{
  'minimap.findMatchHighlight': minimap.findMatchHighlight,
  'minimap.selectionHighlight': minimap.selectionHighlight,
  'minimap.errorHighlight': minimap.errorHighlight,
  'minimap.warningHighlight': minimap.warningHighlight,
  'minimap.background': minimap.background,
  'minimap.selectionOccurrenceHighlight': minimap.selectionOccurrenceHighlight,
  'minimap.foregroundOpacity': minimap.foregroundOpacity,
  'minimapSlider.background': minimapSlider.background,
  'minimapSlider.hoverBackground': minimapSlider.hoverBackground,
  'minimapSlider.activeBackground': minimapSlider.activeBackground,
  'minimapGutter.addedBackground': minimapGutter.addedBackground,
  'minimapGutter.modifiedBackground': minimapGutter.modifiedBackground,
  'minimapGutter.deletedBackground': minimapGutter.deletedBackground,
}
