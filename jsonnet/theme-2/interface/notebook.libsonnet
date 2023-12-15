local pallet = (import '../pallet.libsonnet');

local notebook = {
  // Notebook background color. {default: #1e1e1e}
  editorBackground: 'null',  // {theme: #1c1c1c}

  // The border color for notebook cells. {default: #37373d}
  cellBorderColor: pallet.border2,

  // The background color of a cell when the cell is hovered. {default: null}
  cellHoverBackground: 'null',  // set with code default

  // The color of the notebook cell insertion indicator. {default: #007fd4}
  cellInsertionIndicator: 'null',  // {theme: #e4e4e4}

  // The background color of notebook cell status bar items.
  // {default: #ffffff26}
  cellStatusBarItemHoverBackground: 'null',  // set with code default

  // The color of the separator in the cell bottom toolbar
  // {default: #80808059}
  cellToolbarSeparator: pallet.border3,

  // The color of the notebook cell editor background {default: #252526}
  cellEditorBackground: 'null',  // {theme: #121212}

  // The background color of a cell when the cell is focused. {default: null}
  focusedCellBackground: 'null',  // set with code default

  // The color of the cell's focus indicator borders when the cell is
  // focused. {default: #007fd4}
  focusedCellBorder: pallet.focus2,

  // The color of the notebook cell editor border. {default: #007fd4}
  focusedEditorBorder: pallet.border3,

  // The color of the cell's top and bottom border when a cell is focused
  // while the primary focus is outside of the editor. {default: #37373d}
  inactiveFocusedCellBorder: pallet.border2,

  // The color of the cell's borders when multiple cells are selected.
  // {default: null}
  inactiveSelectedCellBorder: pallet.focus1,

  // The Color of the notebook output container background. {default: null}
  outputContainerBackgroundColor: pallet.background2,

  // The border color of the notebook output container. {default: null}
  outputContainerBorderColor: pallet.border2,

  // The background color of a cell when the cell is selected.
  // {default: #37373d}
  selectedCellBackground: pallet.mono255 + pallet.opacity10_2,

  // The color of the cell's top and bottom border when the cell is selected
  // but not focused. {default: #37373d}
  selectedCellBorder: pallet.focus2,

  // Background color of highlighted cell {default: #ffffff0b}
  symbolHighlightBackground: pallet.blue.base + pallet.opacity10_2,
};

local notebookScrollbarSlider = {
  // Notebook scrollbar slider background color when clicked on.
  // {default: #bfbfbf66}
  activeBackground: 'null',  // {theme: #6c6c6c80}

  // Notebook scrollbar slider background color. {default: #79797966}
  background: 'null',  // {theme: #6c6c6c33}

  // Notebook scrollbar slider background color when hovering.
  // {default: #646464b3}
  hoverBackground: 'null',  // {theme: #6c6c6c44}
};

local notebookStatusErrorIcon = {
  // The error icon color of notebook cells in the cell status bar.
  // {default: #f48771}
  foreground: 'null',  // {theme: #ff2828}
};

local notebookStatusRunningIcon = {
  // The running icon color of notebook cells in the cell status bar.
  // {default: #cccccc}
  foreground: pallet.yellow.base,
};

local notebookStatusSuccessIcon = {
  // The success icon color of notebook cells in the cell status bar.
  // {default: #89d185}
  foreground: pallet.green.base,
};

local notebookEditorOverviewRuler = {
  // The color of the running cell decoration in the notebook editor
  // overview ruler. {default: #89d185}
  runningCellForeground: pallet.green.base,
};

local keys = [
  'notebook.editorBackground',
  'notebook.cellBorderColor',
  'notebook.cellHoverBackground',
  'notebook.cellInsertionIndicator',
  'notebook.cellStatusBarItemHoverBackground',
  'notebook.cellToolbarSeparator',
  'notebook.cellEditorBackground',
  'notebook.focusedCellBackground',
  'notebook.focusedCellBorder',
  'notebook.focusedEditorBorder',
  'notebook.inactiveFocusedCellBorder',
  'notebook.inactiveSelectedCellBorder',
  'notebook.outputContainerBackgroundColor',
  'notebook.outputContainerBorderColor',
  'notebook.selectedCellBackground',
  'notebook.selectedCellBorder',
  'notebook.symbolHighlightBackground',
  'notebookScrollbarSlider.activeBackground',
  'notebookScrollbarSlider.background',
  'notebookScrollbarSlider.hoverBackground',
  'notebookStatusErrorIcon.foreground',
  'notebookStatusRunningIcon.foreground',
  'notebookStatusSuccessIcon.foreground',
  'notebookEditorOverviewRuler.runningCellForeground',
];

{
  'notebook.editorBackground': notebook.editorBackground,
  'notebook.cellBorderColor': notebook.cellBorderColor,
  'notebook.cellHoverBackground': notebook.cellHoverBackground,
  'notebook.cellInsertionIndicator': notebook.cellInsertionIndicator,
  'notebook.cellStatusBarItemHoverBackground': notebook.cellStatusBarItemHoverBackground,
  'notebook.cellToolbarSeparator': notebook.cellToolbarSeparator,
  'notebook.cellEditorBackground': notebook.cellEditorBackground,
  'notebook.focusedCellBackground': notebook.focusedCellBackground,
  'notebook.focusedCellBorder': notebook.focusedCellBorder,
  'notebook.focusedEditorBorder': notebook.focusedEditorBorder,
  'notebook.inactiveFocusedCellBorder': notebook.inactiveFocusedCellBorder,
  'notebook.inactiveSelectedCellBorder': notebook.inactiveSelectedCellBorder,
  'notebook.outputContainerBackgroundColor': notebook.outputContainerBackgroundColor,
  'notebook.outputContainerBorderColor': notebook.outputContainerBorderColor,
  'notebook.selectedCellBackground': notebook.selectedCellBackground,
  'notebook.selectedCellBorder': notebook.selectedCellBorder,
  'notebook.symbolHighlightBackground': notebook.symbolHighlightBackground,
  'notebookScrollbarSlider.activeBackground': notebookScrollbarSlider.activeBackground,
  'notebookScrollbarSlider.background': notebookScrollbarSlider.background,
  'notebookScrollbarSlider.hoverBackground': notebookScrollbarSlider.hoverBackground,
  'notebookStatusErrorIcon.foreground': notebookStatusErrorIcon.foreground,
  'notebookStatusRunningIcon.foreground': notebookStatusRunningIcon.foreground,
  'notebookStatusSuccessIcon.foreground': notebookStatusSuccessIcon.foreground,
  'notebookEditorOverviewRuler.runningCellForeground': notebookEditorOverviewRuler.runningCellForeground,
}
