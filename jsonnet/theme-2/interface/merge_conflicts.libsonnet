// ---------------------------------------------------------------------
// Merge Conflicts Colors
// Merge conflict decorations are shown when the editor contains special
// diff ranges.
// ---------------------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local merge = {
  // Current header background in inline merge conflicts. The color must
  // not be opaque so as not to hide underlying decorations.
  // {default: #40c8ae80}
  currentHeaderBackground: 'null',  // TODO: Set merge.currentHeaderBackground

  // Current content background in inline merge conflicts. The color must
  // not be opaque so as not to hide underlying decorations.
  // {default: #40c8ae33}
  currentContentBackground: 'null',  // TODO: Set merge.currentContentBackground

  // Incoming header background in inline merge conflicts. The color must
  // not be opaque so as not to hide underlying decorations.
  // {default: #40a6ff80}
  incomingHeaderBackground: 'null',  // TODO: Set merge.incomingHeaderBackground

  // Incoming content background in inline merge conflicts. The color must
  // not be opaque so as not to hide underlying decorations.
  // {default: #40a6ff33}
  incomingContentBackground: 'null',  // TODO: Set merge.incomingContentBackground

  // Border color on headers and the splitter in inline merge conflicts.
  // {default: null}
  border: 'null',  // TODO: Set merge.border

  // Common ancestor content background in inline merge-conflicts. The
  // color must not be opaque so as not to hide underlying decorations.
  // {default: #60606029}
  commonContentBackground: 'null',  // TODO: Set merge.commonContentBackground

  // Common ancestor header background in inline merge-conflicts. The color
  // must not be opaque so as not to hide underlying decorations.
  // {default: #60606066}
  commonHeaderBackground: 'null',  // TODO: Set merge.commonHeaderBackground
};

local editorOverviewRuler = {
  // Current overview ruler foreground for inline merge conflicts.
  // {default: #40c8ae80}
  currentContentForeground: 'null',  // TODO: Set editorOverviewRuler.currentContentForeground

  // Incoming overview ruler foreground for inline merge conflicts.
  // {default: #40a6ff80}
  incomingContentForeground: 'null',  // TODO: Set editorOverviewRuler.incomingContentForeground

  // Common ancestor overview ruler foreground for inline merge conflicts.
  // {default: #60606066}
  commonContentForeground: 'null',  // TODO: Set editorOverviewRuler.commonContentForeground

  // Editor overview ruler decoration color for resolved comments. This
  // color should be opaque. {default: #37373d}
  commentForeground: 'null',  // TODO: Set editorOverviewRuler.commentForeground

  // Editor overview ruler decoration color for unresolved comments. This
  // color should be opaque. {default: #37373d}
  commentUnresolvedForeground: 'null',  // TODO: Set editorOverviewRuler.commentUnresolvedForeground
};

local mergeEditor = {
  change: {
    // The background color for changes. {default: #9bb95533}
    background: pallet.yellow.base + pallet.opacity20_0,

    // The background color for word changes. {default: #9ccc2c33}
    word: { background: pallet.yellow.base + pallet.opacity20_0 },
  },

  conflict: {
    // The border color of unhandled unfocused conflicts.
    // {default: #ffa6007a}
    unhandledUnfocused: { border: pallet.yellow.base + pallet.opacity47_8 },

    // The border color of unhandled focused conflicts. {default: #ffa600}
    unhandledFocused: { border: pallet.yellow.base },

    // The border color of handled unfocused conflicts.
    // {default: #86868649}
    handledUnfocused: { border: pallet.mono128 + pallet.opacity28_6 },

    // The border color of handled focused conflicts. {default: #c1c1c1cc}
    handledFocused: { border: pallet.mono188 + pallet.opacity80_0 },

    // The foreground color for changes in input 1. {default: #adaca8ee}
    handled: {
      minimapOverViewRuler: 'null',  // NOTE: Can't find
    },

    // The foreground color for changes in input 1. {default: #fcba03}
    unhandled: { minimapOverViewRuler: pallet.yellow.base },

    input1: {
      // The background color of decorations in input 1.
      // {default: #40c8ae33}
      background: 'null',  // TODO: Set mergeEditor.conflict.input1.background
    },

    input2: {
      // The background color of decorations in input 2.
      // {default: #40a6ff33}
      background: 'null',  // TODO: Set mergeEditor.conflict.input2.background
    },
  },

  conflictingLines: {
    // The background of the "Conflicting Lines" text. {default: #ffea0047}
    background: 'null',  // TODO: Set mergeEditor.conflictingLines.background
  },

  changeBase: {
    // The background color for changes in base. {default: #4b1818}
    background: 'null',  // TODO: Set mergeEditor.changeBase.background

    word: {
      // The background color for word changes in base. {default: #6f1313}
      background: 'null',  // TODO: Set mergeEditor.changeBase.word.background
    },
  },
};

{
  'merge.currentHeaderBackground': merge.currentHeaderBackground,
  'merge.currentContentBackground': merge.currentContentBackground,
  'merge.incomingHeaderBackground': merge.incomingHeaderBackground,
  'merge.incomingContentBackground': merge.incomingContentBackground,
  'merge.border': merge.border,
  'merge.commonContentBackground': merge.commonContentBackground,
  'merge.commonHeaderBackground': merge.commonHeaderBackground,
  'editorOverviewRuler.currentContentForeground': editorOverviewRuler.currentContentForeground,
  'editorOverviewRuler.incomingContentForeground': editorOverviewRuler.incomingContentForeground,
  'editorOverviewRuler.commonContentForeground': editorOverviewRuler.commonContentForeground,
  'editorOverviewRuler.commentForeground': editorOverviewRuler.commentForeground,
  'editorOverviewRuler.commentUnresolvedForeground': editorOverviewRuler.commentUnresolvedForeground,
  'mergeEditor.change.background': mergeEditor.change.background,
  'mergeEditor.change.word.background': mergeEditor.change.word.background,
  'mergeEditor.conflict.unhandledUnfocused.border': mergeEditor.conflict.unhandledUnfocused.border,
  'mergeEditor.conflict.unhandledFocused.border': mergeEditor.conflict.unhandledFocused.border,
  'mergeEditor.conflict.handledUnfocused.border': mergeEditor.conflict.handledUnfocused.border,
  'mergeEditor.conflict.handledFocused.border': mergeEditor.conflict.handledFocused.border,
  'mergeEditor.conflict.handled.minimapOverViewRuler': mergeEditor.conflict.handled.minimapOverViewRuler,
  'mergeEditor.conflict.unhandled.minimapOverViewRuler': mergeEditor.conflict.unhandled.minimapOverViewRuler,
  'mergeEditor.conflictingLines.background': mergeEditor.conflictingLines.background,
  'mergeEditor.changeBase.background': mergeEditor.changeBase.background,
  'mergeEditor.changeBase.word.background': mergeEditor.changeBase.word.background,
  'mergeEditor.conflict.input1.background': mergeEditor.conflict.input1.background,
  'mergeEditor.conflict.input2.background': mergeEditor.conflict.input2.background,
}
