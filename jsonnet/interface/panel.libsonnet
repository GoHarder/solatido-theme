// ------------------------------------------------------------------------
// Panel Colors
// Panels are shown below the editor area and contain views like Output and
// Integrated Terminal.
// ------------------------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local panel = {
  // Panel background color. {default: #1e1e1e}
  background: pallet.background2,

  // Panel border color to separate the panel from the editor.
  // {default: #80808059}
  border: pallet.border2,

  // Drag and drop feedback color for the panel titles. Panels are shown
  // below the editor area and contain views like output and integrated
  // terminal.  {default: #e7e7e7}
  dropBorder: pallet.mono255,
};

local panelTitle = {
  // Border color for the active panel title. {default: #e7e7e7}
  activeBorder: pallet.focus2,

  // Title color for the active panel. {default: #e7e7e7}
  activeForeground: 'null',  // set with code default

  // Title color for the inactive panel. {default: #e7e7e799}
  inactiveForeground: 'null',  // set with code default
};

local panelInput = {
  // Input box border for inputs in the panel. {default: null}
  border: 'null',  // {theme: #626262}
};

local panelSection = {
  // Panel section border color used when multiple views are stacked
  // horizontally in the panel. Panels are shown below the editor area and
  // contain views like output and integrated terminal.
  // {default: #80808059}
  border: pallet.border2,

  // Drag and drop feedback color for the panel sections. The color should
  // have transparency so that the panel sections can still shine through.
  // Panels are shown below the editor area and contain views like output
  // and integrated terminal. {default: #53595d80}
  dropBackground: pallet.dropBackground,
};

local panelSectionHeader = {
  // Panel section header background color. Panels are shown below the
  // editor area and contain views like output and integrated terminal.
  // {default: #80808033}
  background: 'null',  // set with code default

  // Panel section header foreground color. Panels are shown below the
  // editor area and contain views like output and integrated terminal.
  // {default: null}
  foreground: pallet.foreground1,

  // Panel section header border color used when multiple views are stacked
  // vertically in the panel. Panels are shown below the editor area and
  // contain views like output and integrated terminal. {default: null}
  border: pallet.border2,
};

{
  'panel.background': panel.background,
  'panel.border': panel.border,
  'panel.dropBorder': panel.dropBorder,
  'panelTitle.activeBorder': panelTitle.activeBorder,
  'panelTitle.activeForeground': panelTitle.activeForeground,
  'panelTitle.inactiveForeground': panelTitle.inactiveForeground,
  'panelInput.border': panelInput.border,
  'panelSection.border': panelSection.border,
  'panelSection.dropBackground': panelSection.dropBackground,
  'panelSectionHeader.background': panelSectionHeader.background,
  'panelSectionHeader.foreground': panelSectionHeader.foreground,
  'panelSectionHeader.border': panelSectionHeader.border,
}
