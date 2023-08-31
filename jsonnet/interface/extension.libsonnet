local pallet = (import '../pallet.libsonnet');

local extensionButton = {
  // Extension view button foreground color (for example Install button).
  // {default: #ffffff}
  prominentForeground: pallet.foreground1,

  // Extension view button background color. {default: #0e639c}
  prominentBackground: pallet.green.sub3,

  // Extension view button background hover color. {default: #1177bb}
  prominentHoverBackground: 'null',  // NOTE: can't find

  // Button background color for extension actions. {default: #0e639c}
  background: pallet.green.sub3,

  // Button foreground color for extension actions. {default: #ffffff}
  foreground: pallet.foreground1,

  // Button background hover color for extension actions.
  // {default: #1177bb}
  hoverBackground: pallet.green.base,

  // Button separator color for extension actions. {default: #ffffff66}
  separator: pallet.foreground1 + pallet.opacity40_0,
};

local extensionBadge = {
  // Background color for the remote badge in the extensions view.
  // {default: #007acc}
  remoteBackground: pallet.border2,

  // Foreground color for the remote badge in the extensions view.
  // {default: #ffffff}
  remoteForeground: pallet.foreground1,
};

local extensionIcon = {
  // The icon color for extension ratings. {default: #ff8e00}
  starForeground: pallet.yellow.sub2,

  // The icon color for extension verified publisher. {default: #3794ff}
  verifiedForeground: pallet.yellow.base,  // {theme: #50b9ff}

  // The icon color for pre-release extension. {default: #1d9271}
  // preReleaseForeground: pallet.background2,
  preReleaseForeground: pallet.blue.sub3,

  // The icon color for extension sponsor. {default: #d758b3}
  sponsorForeground: pallet.red.sub3,
};

{
  'extensionButton.prominentForeground': extensionButton.prominentForeground,
  'extensionButton.prominentBackground': extensionButton.prominentBackground,
  'extensionButton.prominentHoverBackground': extensionButton.prominentHoverBackground,
  'extensionButton.background': extensionButton.background,
  'extensionButton.foreground': extensionButton.foreground,
  'extensionButton.hoverBackground': extensionButton.hoverBackground,
  'extensionButton.separator': extensionButton.separator,
  'extensionBadge.remoteBackground': extensionBadge.remoteBackground,
  'extensionBadge.remoteForeground': extensionBadge.remoteForeground,
  'extensionIcon.starForeground': extensionIcon.starForeground,
  'extensionIcon.verifiedForeground': extensionIcon.verifiedForeground,
  'extensionIcon.preReleaseForeground': extensionIcon.preReleaseForeground,
  'extensionIcon.sponsorForeground': extensionIcon.sponsorForeground,
}
