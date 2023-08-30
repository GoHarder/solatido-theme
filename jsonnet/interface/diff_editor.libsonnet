// --------------------------------------------------------------------
// Diff Editor Colors
// For coloring inserted and removed text, use either a background or a
// border color but not both.
// --------------------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local diffEditor = {
  // Border color between the two text editors. {default: null}
  border: pallet.border2,

  // Color of the diff editor's diagonal fill. The diagonal fill is used in
  // side-by-side diff views. {default: #cccccc33}
  // diagonalFill: pallet.mono148 + pallet.opacity20_0,
  diagonalFill: 'null',  // TODO: Set diffEditor.diagonalFill

  // The border color for text that got moved in the diff editor.
  // {default: #8b8b8b9c}
  move: { border: 'null' },  // TODO: Set diffEditor.move.border

  // Background color for text that got inserted. The color must not be
  // opaque so as not to hide underlying decorations. {default: #9ccc2c33}
  //   insertedTextBackground: pallet.valid5 + pallet.p16_2,
  insertedTextBackground: 'null',  // TODO: Set diffEditor.insertedTextBackground

  // Background color for lines that got inserted. The color must not be
  // opaque so as not to hide underlying decorations. {default: #9bb95533}
  //   insertedLineBackground: pallet.valid5 + pallet.p16_2,
  insertedLineBackground: 'null',  // TODO: Set diffEditor.insertedLineBackground

  // Outline color for the text that got inserted. {default: null}
  insertedTextBorder: 'null',  // set with code default

  // Background color for text that got removed. The color must not be
  // opaque so as not to hide underlying decorations. {default: #ff000033}
  // removedTextBackground: pallet.error3 + pallet.p16_2,
  removedTextBackground: 'null',  // TODO: Set diffEditor.removedTextBackground

  // Background color for lines that got removed. The color must not be
  // opaque so as not to hide underlying decorations. {default: #ff000033}
  // removedLineBackground: pallet.error3 + pallet.p16_2,
  removedLineBackground: 'null',  // TODO: Set diffEditor.removedLineBackground

  // Outline color for text that got removed. {default: null}
  removedTextBorder: 'null',  // set with code default

  // The color of unchanged blocks in diff editor. {default: #3e3e3e}
  unchangedRegionBackground: 'null',  // TODO: Set diffEditor.unchangedRegionBackground

  // The foreground color of unchanged blocks in the diff editor.
  // {default: #a3a2a2}
  unchangedRegionForeground: 'null',  // TODO: Set diffEditor.unchangedRegionForeground

  // The background color of unchanged code in the diff editor.
  // {default: #74747429}
  unchangedCodeBackground: 'null',  // TODO: Set diffEditor.unchangedCodeBackground
};

local diffEditorGutter = {
  // Background color for the margin where lines got inserted.
  // {default: null}
  insertedLineBackground: 'null',  // set with code default

  // Background color for the margin where lines got removed.
  // {default: null}
  removedLineBackground: 'null',  // set with code default
};

local diffEditorOverview = {
  // Diff overview ruler foreground for inserted content. {default: null}
  insertedForeground: 'null',  // set with code default

  // Diff overview ruler foreground for removed content. {default: null}
  removedForeground: 'null',  // set with code default
};

{
  'diffEditor.insertedTextBackground': diffEditor.insertedTextBackground,
  'diffEditor.insertedTextBorder': diffEditor.insertedTextBorder,
  'diffEditor.removedTextBackground': diffEditor.removedTextBackground,
  'diffEditor.removedTextBorder': diffEditor.removedTextBorder,
  'diffEditor.border': diffEditor.border,
  'diffEditor.diagonalFill': diffEditor.diagonalFill,
  'diffEditor.insertedLineBackground': diffEditor.insertedLineBackground,
  'diffEditor.removedLineBackground': diffEditor.removedLineBackground,
  'diffEditorGutter.insertedLineBackground': diffEditorGutter.insertedLineBackground,
  'diffEditorGutter.removedLineBackground': diffEditorGutter.removedLineBackground,
  'diffEditorOverview.insertedForeground': diffEditorOverview.insertedForeground,
  'diffEditorOverview.removedForeground': diffEditorOverview.removedForeground,
  'diffEditor.unchangedRegionBackground': diffEditor.unchangedRegionBackground,
  'diffEditor.unchangedRegionForeground': diffEditor.unchangedRegionForeground,
  'diffEditor.unchangedCodeBackground': diffEditor.unchangedCodeBackground,
  'diffEditor.move.border': diffEditor.move.border,

}
