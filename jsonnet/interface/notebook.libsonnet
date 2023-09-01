local pallet = (import './_pallet.libsonnet');

local notebook = {
  // Notebook background color. {default: #1e1e1e}
  editorBackground: 'null',  // TODO: Set notebook.editorBackground

  // The border color for notebook cells. {default: #37373d}
  cellBorderColor: 'null',  // TODO: Set notebook.cellBorderColor

  // The background color of a cell when the cell is hovered. {default: null}
  cellHoverBackground: 'null',  // TODO: Set notebook.cellHoverBackground

  // The color of the notebook cell insertion indicator. {default: #007fd4}
  cellInsertionIndicator: 'null',  // TODO: Set notebook.cellInsertionIndicator

  // The background color of notebook cell status bar items.
  // {default: #ffffff26}
  cellStatusBarItemHoverBackground: 'null',  // TODO: Set notebook.cellStatusBarItemHoverBackground

  // The color of the separator in the cell bottom toolbar
  // {default: #80808059}
  cellToolbarSeparator: 'null',  // TODO: Set notebook.cellToolbarSeparator

  // The color of the notebook cell editor background {default: #252526}
  cellEditorBackground: 'null',  // TODO: Set notebook.cellEditorBackground

  // The background color of a cell when the cell is focused. {default: null}
  focusedCellBackground: 'null',  // TODO: Set notebook.focusedCellBackground

  // The color of the cell's focus indicator borders when the cell is
  // focused. {default: #007fd4}
  focusedCellBorder: 'null',  // TODO: Set notebook.focusedCellBorder

  // The color of the notebook cell editor border. {default: #007fd4}
  focusedEditorBorder: 'null',  // TODO: Set notebook.focusedEditorBorder

  // The color of the cell's top and bottom border when a cell is focused
  // while the primary focus is outside of the editor. {default: #37373d}
  inactiveFocusedCellBorder: 'null',  // TODO: Set notebook.inactiveFocusedCellBorder

  // The color of the cell's borders when multiple cells are selected.
  // {default: null}
  inactiveSelectedCellBorder: 'null',  // TODO: Set notebook.inactiveSelectedCellBorder

  // The Color of the notebook output container background. {default: null}
  outputContainerBackgroundColor: 'null',  // TODO: Set notebook.outputContainerBackgroundColor

  // The border color of the notebook output container. {default: null}
  outputContainerBorderColor: 'null',  // TODO: Set notebook.outputContainerBorderColor

  // The background color of a cell when the cell is selected.
  // {default: #37373d}
  selectedCellBackground: 'null',  // TODO: Set notebook.selectedCellBackground

  // The color of the cell's top and bottom border when the cell is selected
  // but not focused. {default: #37373d}
  selectedCellBorder: 'null',  // TODO: Set notebook.selectedCellBorder

  // Background color of highlighted cell {default: #ffffff0b}
  symbolHighlightBackground: 'null',  // TODO: Set notebook.symbolHighlightBackground
};

local notebookScrollbarSlider = {
  // Notebook scrollbar slider background color when clicked on.
  // {default: #bfbfbf66}
  activeBackground: 'null',  // TODO: Set notebookScrollbarSlider.activeBackground

  // Notebook scrollbar slider background color. {default: #79797966}
  background: 'null',  // TODO: Set notebookScrollbarSlider.background

  // Notebook scrollbar slider background color when hovering.
  // {default: #646464b3}
  hoverBackground: 'null',  // TODO: Set notebookScrollbarSlider.hoverBackground
};

local notebookStatusErrorIcon = {
  // The error icon color of notebook cells in the cell status bar.
  // {default: #f48771}
  foreground: 'null',  // TODO: Set notebookStatusErrorIcon.foreground
};

local notebookStatusRunningIcon = {
  // The running icon color of notebook cells in the cell status bar.
  // {default: #cccccc}
  foreground: 'null',  // TODO: Set notebookStatusRunningIcon.foreground
};

local notebookStatusSuccessIcon = {
  // The success icon color of notebook cells in the cell status bar.
  // {default: #89d185}
  foreground: 'null',  // TODO: Set notebookStatusSuccessIcon.foreground
};

local notebookEditorOverviewRuler = {
  // The color of the running cell decoration in the notebook editor
  // overview ruler. {default: #89d185}
  runningCellForeground: 'null',  // TODO: Set notebookEditorOverviewRuler.runningCellForeground
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
