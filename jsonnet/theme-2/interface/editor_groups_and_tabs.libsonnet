// ------------------------------------------------------------------------
// Editor Groups & Tabs
// Editor Groups are the containers of editors. There can be many editor
// groups. A Tab is the container of an editor. Multiple Tabs can be opened
// in one editor group.
// ------------------------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local editorGroup = {
  // Color to separate multiple editor groups from each other.
  // {default: #444444}
  border: pallet.border2,

  // Background color when dragging editors around. {default: #53595d80}
  dropBackground: pallet.dropBackground,

  // Background color of an empty editor group. {default: null}
  emptyBackground: 'null',  // set with code default

  // Border color of an empty editor group that is focused. {default: null}
  focusedEmptyBorder: 'null',  // set with code default

  // Foreground color of text shown over editors when dragging files. This
  // text informs the user that they can hold shift to drop into the editor.
  // {default:#cccccc}
  dropIntoPromptForeground: 'null',  // {theme: #d0d0d0}

  // Background color of text shown over editors when dragging files. This
  // text informs the user that they can hold shift to drop into the editor.
  // {default: #252526}
  dropIntoPromptBackground: pallet.background2,

  // Border color of text shown over editors when dragging files. This text
  // informs the user that they can hold shift to drop into the editor.
  // {default: null}
  dropIntoPromptBorder: pallet.border3,
};

local editorGroupHeader = {
  // Background color of the editor group title header when Tabs are disabled
  // (set "workbench.editor.showTabs": false). {default: #1e1e1e}
  noTabsBackground: pallet.background2,

  // Background color of the Tabs container. {default: #252526}
  tabsBackground: pallet.background2,

  // Border color below the editor tabs control when tabs are enabled.
  // {default: null}
  tabsBorder: pallet.border2,

  // Border color between editor group header and editor (below breadcrumbs
  // if enabled). {default: null}
  border: pallet.border1,
};

local tab = {
  // Active Tab background color in an active group. {default: #1e1e1e}
  activeBackground: 'null',  // {theme: #1c1c1c}

  // Active Tab foreground color in an active group. {default: #ffffff}
  activeForeground: 'null',  // set with code default

  // Bottom border for the active tab. {default: null}
  activeBorder: pallet.background3,  // {theme: #1c1c1c}

  // Top border for the active tab. {default: null}
  activeBorderTop: pallet.focus2,

  // Active Tab background color in an inactive editor group.
  // {default: #1e1e1e}
  unfocusedActiveBackground: 'null',  // {theme: #1c1c1c}

  // Active tab foreground color in an inactive editor group.
  // {default: #ffffff80}
  unfocusedActiveForeground: 'null',  // set with code default

  // Bottom border for the active tab in an inactive editor group.
  // {default: null}
  unfocusedActiveBorder: pallet.background3,

  // Bottom border for the active tab in an inactive editor group.
  // {default: null}
  unfocusedActiveBorderTop: pallet.border3,

  // Inactive Tab background color. {default: #2d2d2d}
  inactiveBackground: pallet.background2,

  // Inactive Tab foreground color in an active group.
  // {default: #ffffff80,}
  inactiveForeground: 'null',  // set with code default

  // Inactive Tab background color in an unfocused group.
  // {default: #2d2d2d}
  unfocusedInactiveBackground: 'null',  // {theme: self.inactiveBackground}

  // Inactive tab foreground color in an inactive editor group.
  // {default: #ffffff40}
  unfocusedInactiveForeground: 'null',  // set with code default

  // Border to separate Tabs from each other. {default: #252526}
  border: pallet.border2,

  // Border on the right of the last pinned editor to separate from unpinned
  // editors. {default: #585858}
  lastPinnedBorder: pallet.mono255,

  // Border to highlight tabs when hovering. {default: null}
  hoverBorder: 'null',  // set with code default

  // Border to highlight tabs when hovering. {default: null}
  hoverBackground: pallet.mono48,

  // Tab foreground color when hovering. {default: null}
  hoverForeground: 'null',  // set with code default

  // Border to highlight tabs in an unfocused group when hovering.
  // {default: null}
  unfocusedHoverBorder: 'null',  // set with code default

  // Tab background color in an unfocused group when hovering.
  // {default: null}
  unfocusedHoverBackground: pallet.mono38,

  // Tab foreground color in an unfocused group when hovering.
  // {default: null}
  unfocusedHoverForeground: 'null',  // set with code default

  // Border on the top of modified (dirty) active tabs in an active group.
  // {default: #3399cc}
  activeModifiedBorder: pallet.focus1,

  // Border on the top of modified (dirty) inactive tabs in an active
  // group. {default: #3399cc80}
  inactiveModifiedBorder: 'null',  // {theme: #ffdea880}

  // Border on the top of modified (dirty) active tabs in an unfocused
  // group. {default: #3399cc80}
  unfocusedActiveModifiedBorder: 'null',  // {theme: #ffdea880}

  // Border on the top of modified (dirty) inactive tabs in an unfocused
  // group. {default: #3399cc40}
  unfocusedInactiveModifiedBorder: 'null',  // {theme: #ffdea840}
};

local editorPane = {
  // Background color of the editor pane visible on the left and right side
  // of the centered editor layout. {default: #1e1e1e}
  background: 'null',  // {theme: #1c1c1c}
};

local sideBySideEditor = {
  // Color to separate two editors from each other when shown side by
  // side in an editor group from top to bottom.
  horizontalBorder: 'null',  // {theme: #444444}

  // Color to separate two editors from each other when shown side by
  // side in an editor group from left to right.
  verticalBorder: 'null',  // {theme: #444444}
};

{
  'editorGroup.border': editorGroup.border,
  'editorGroup.dropBackground': editorGroup.dropBackground,
  'editorGroupHeader.noTabsBackground': editorGroupHeader.noTabsBackground,
  'editorGroupHeader.tabsBackground': editorGroupHeader.tabsBackground,
  'editorGroupHeader.tabsBorder': editorGroupHeader.tabsBorder,
  'editorGroupHeader.border': editorGroupHeader.border,
  'editorGroup.emptyBackground': editorGroup.emptyBackground,
  'editorGroup.focusedEmptyBorder': editorGroup.focusedEmptyBorder,
  'editorGroup.dropIntoPromptForeground': editorGroup.dropIntoPromptForeground,
  'editorGroup.dropIntoPromptBackground': editorGroup.dropIntoPromptBackground,
  'editorGroup.dropIntoPromptBorder': editorGroup.dropIntoPromptBorder,
  'tab.activeBackground': tab.activeBackground,
  'tab.unfocusedActiveBackground': tab.unfocusedActiveBackground,
  'tab.activeForeground': tab.activeBackground,
  'tab.border': tab.border,
  'tab.activeBorder': tab.activeBorder,
  'tab.unfocusedActiveBorder': tab.unfocusedActiveBorder,
  'tab.activeBorderTop': tab.activeBorderTop,
  'tab.unfocusedActiveBorderTop': tab.unfocusedActiveBorderTop,
  'tab.lastPinnedBorder': tab.lastPinnedBorder,
  'tab.inactiveBackground': tab.inactiveBackground,
  'tab.unfocusedInactiveBackground': tab.unfocusedInactiveBackground,
  'tab.inactiveForeground': tab.inactiveForeground,
  'tab.unfocusedActiveForeground': tab.unfocusedActiveForeground,
  'tab.unfocusedInactiveForeground': tab.unfocusedInactiveForeground,
  'tab.hoverBackground': tab.hoverBackground,
  'tab.unfocusedHoverBackground': tab.unfocusedHoverBackground,
  'tab.hoverForeground': tab.hoverForeground,
  'tab.unfocusedHoverForeground': tab.unfocusedHoverForeground,
  'tab.hoverBorder': tab.hoverBorder,
  'tab.unfocusedHoverBorder': tab.unfocusedHoverBorder,
  'tab.activeModifiedBorder': tab.activeModifiedBorder,
  'tab.inactiveModifiedBorder': tab.inactiveModifiedBorder,
  'tab.unfocusedActiveModifiedBorder': tab.unfocusedActiveModifiedBorder,
  'tab.unfocusedInactiveModifiedBorder': tab.unfocusedInactiveModifiedBorder,
  'editorPane.background': editorPane.background,
  'sideBySideEditor.horizontalBorder': sideBySideEditor.horizontalBorder,
  'sideBySideEditor.verticalBorder': sideBySideEditor.verticalBorder,
}
