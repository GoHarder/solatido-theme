// ---------------------------------------------------------
// Side Bar
// The Side Bar contains views like the Explorer and Search.
// ---------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local sideBar = {
  // Side Bar background color. {default: #252526}
  background: pallet.background2,

  // Side Bar foreground color. The Side Bar is the container for views
  // like Explorer and Search. {default: null}
  foreground: 'null',  // set with code default

  // Side Bar border color on the side separating the editor. {default: null}
  border: pallet.border2,

  // Drag and drop feedback color for the side bar sections. The color
  // should have transparency so that the side bar sections can still
  // shine through. {default: #53595d80}
  dropBackground: pallet.dropBackground,
};

local sideBarTitle = {
  // Side Bar title foreground color. {default: null}
  foreground: pallet.focus2,
};

local sideBarSectionHeader = {
  // Side Bar section header background color. {default: #80808033}
  background: pallet.background2,

  // Side Bar section header foreground color. {default: null}
  foreground: 'null',

  // Side bar section header border color. {default: null}
  border: pallet.border2,
};

{
  'sideBar.background': sideBar.background,
  'sideBar.foreground': sideBar.foreground,
  'sideBar.border': sideBar.border,
  'sideBar.dropBackground': sideBar.dropBackground,
  'sideBarTitle.foreground': sideBarTitle.foreground,
  'sideBarSectionHeader.background': sideBarSectionHeader.background,
  'sideBarSectionHeader.foreground': sideBarSectionHeader.foreground,
  'sideBarSectionHeader.border': sideBarSectionHeader.border,
}
