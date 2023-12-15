// -----------------------------------------------------------
// Lists and Trees
// Colors for list and trees like the File Explorer. An active
// list/tree has keyboard focus, an inactive does not.
// -----------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local list = {
  // List/Tree background color for the selected item when the list/tree is
  // active. {default: #04395e}
  activeSelectionBackground: pallet.focus2,

  // List/Tree foreground color for the selected item when the list/tree is
  // active. {default: #ffffff}
  activeSelectionForeground: pallet.mono0,

  // List/Tree icon foreground color for the selected item when the
  // list/tree is active. An active list/tree has keyboard focus, an
  // inactive does not. {default: null}
  activeSelectionIconForeground: 'null',  // set with code default

  // List/Tree drag and drop background when moving items around using the
  // mouse. {default: #062f4a}
  dropBackground: pallet.dropBackground,

  // List/Tree background color for the focused item when the list/tree is
  // active. {default: null}
  focusBackground: 'null',  // set with code default

  // List/Tree foreground color for the focused item when the list/tree is
  // active. An active list/tree has keyboard focus, an inactive does not.
  // {default: null}
  focusForeground: 'null',  // set with code default

  // List/Tree outline color for the focused item when the list/tree is
  // active. An active list/tree has keyboard focus, an inactive does not.
  // {default: #007fd4}
  focusOutline: pallet.focus2,

  // List/Tree outline color for the focused item when the list/tree is
  // active and selected. An active list/tree has keyboard focus, an
  // inactive does not. {default: null}
  focusAndSelectionOutline: pallet.mono0,

  // List/Tree foreground color of the match highlights on actively focused
  // items when searching inside the list/tree. {default: #2aaaff}
  focusHighlightForeground: pallet.mono0,

  // List/Tree foreground color of the match highlights when searching
  // inside the list/tree. {default: #2aaaff}
  highlightForeground: pallet.blue.base,

  // List/Tree background when hovering over items using the mouse.
  // {default: #2a2d2e}
  hoverBackground: pallet.border2,

  // List/Tree foreground when hovering over items using the mouse.
  // {default: null}
  hoverForeground: pallet.foreground1,

  // List/Tree background color for the selected item when the
  // list/tree is inactive. {default: #37373d}
  inactiveSelectionBackground: pallet.mono58,

  // List/Tree foreground color for the selected item when the
  // list/tree is inactive. An active list/tree has keyboard focus,
  // an inactive does not. {default: null}
  inactiveSelectionForeground: 'null',  // set with code default

  // List/Tree icon foreground color for the selected item when the
  // list/tree is inactive. An active list/tree has keyboard focus,
  // an inactive does not. {default: null}
  inactiveSelectionIconForeground: 'null',  // set with code default

  // List background color for the focused item when the list is
  // inactive. An active list has keyboard focus, an inactive does
  // not. Currently only supported in lists. {default: null}
  inactiveFocusBackground: 'null',  // set with code default

  // List/Tree outline color for the focused item when the list/tree
  // is inactive. An active list/tree has keyboard focus, an inactive
  // does not. {default: null}
  inactiveFocusOutline: 'null',  // set with code default

  // List/Tree foreground color for invalid items, for example an
  // unresolved root in explorer. {default: #b89500}
  invalidItemForeground: pallet.yellow.base,

  // Foreground color of list items containing errors. {default: #f88070}
  errorForeground: pallet.red.base,

  // Foreground color of list items containing warnings. {default: #cca700}
  warningForeground: pallet.yellow.base,

  // Background color of the filtered matches in lists and trees.
  // {default: #ea5c0055}
  filterMatchBackground: 'null',  // {theme: #98bf6655}

  // Border color of the filtered matches in lists and trees. {default: null}
  filterMatchBorder: 'null',  // {theme: #98bf66}

  // List/Tree foreground color for items that are deemphasized.
  // {default: #8c8c8c}
  deemphasizedForeground: 'null',  // TODO: Set list.deemphasizedForeground
};

local listFilterWidget = {
  // List/Tree Filter background color of typed text when searching inside
  // the list/tree. {default: #252526}
  background: pallet.background3,

  // List/Tree Filter Widget's outline color of typed text when searching
  // inside the list/tree. {default: #00000000}
  outline: 'null',  // TODO: Set listFilterWidget.outline

  // List/Tree Filter Widget's outline color when no match is found of typed
  // text when searching inside the list/tree. {default: #be1100}
  noMatchesOutline: 'null',  // TODO: Set listFilterWidget.noMatchesOutline

  // Shadow color of the type filter widget in lists and tree.
  // {default: #0000005c}
  shadow: 'null',  // set with code default
};

local tree = {
  // Tree Widget's stroke color for indent guides. {default: #585858}
  indentGuidesStroke: 'null',  // set with code default

  // Tree stroke color for the indentation guides that are not active.
  // {default: #58585866}
  inactiveIndentGuidesStroke: 'null',  // set with code default

  // Tree stroke color for the indentation guides. {default: #cccccc20}
  tableColumnsBorder: pallet.foreground1 + pallet.opacity12_5,

  // Background color for odd table rows. {default: #cccccc0a}
  tableOddRowsBackground: pallet.foreground1 + pallet.opacity03_9,
};

{
  'list.activeSelectionBackground': list.activeSelectionBackground,
  'list.activeSelectionForeground': list.activeSelectionForeground,
  'list.activeSelectionIconForeground': list.activeSelectionIconForeground,
  'list.dropBackground': list.dropBackground,
  'list.focusBackground': list.focusBackground,
  'list.focusForeground': list.focusForeground,
  'list.focusHighlightForeground': list.focusHighlightForeground,
  'list.focusOutline': list.focusOutline,
  'list.focusAndSelectionOutline': list.focusAndSelectionOutline,
  'list.highlightForeground': list.highlightForeground,
  'list.hoverBackground': list.hoverBackground,
  'list.hoverForeground': list.hoverForeground,
  'list.inactiveSelectionBackground': list.inactiveSelectionBackground,
  'list.inactiveSelectionForeground': list.inactiveSelectionForeground,
  'list.inactiveSelectionIconForeground': list.inactiveSelectionIconForeground,
  'list.inactiveFocusBackground': list.inactiveFocusBackground,
  'list.inactiveFocusOutline': list.inactiveFocusOutline,
  'list.invalidItemForeground': list.invalidItemForeground,
  'list.errorForeground': list.errorForeground,
  'list.warningForeground': list.warningForeground,
  'listFilterWidget.background': listFilterWidget.background,
  'listFilterWidget.outline': listFilterWidget.outline,
  'listFilterWidget.noMatchesOutline': listFilterWidget.noMatchesOutline,
  'listFilterWidget.shadow': listFilterWidget.shadow,
  'list.filterMatchBackground': list.filterMatchBackground,
  'list.filterMatchBorder': list.filterMatchBorder,
  'list.deemphasizedForeground': list.deemphasizedForeground,
  'tree.indentGuidesStroke': tree.indentGuidesStroke,
  'tree.inactiveIndentGuidesStroke': tree.inactiveIndentGuidesStroke,
  'tree.tableColumnsBorder': tree.tableColumnsBorder,
  'tree.tableOddRowsBackground': tree.tableOddRowsBackground,
}
