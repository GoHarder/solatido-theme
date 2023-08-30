local pallet = (import '../pallet.libsonnet');

local commandCenter = {
  // Foreground color of the Command Center. {default: #cccccc}
  foreground: 'null',  // {theme: #d0d0d0}

  // Background color of the Command Center. {default: #ffffff0d}
  background: pallet.background2,

  // Border color of the Command Center. {default: #cccccc33}
  border: pallet.border2,

  // Active foreground color of the Command Center. {default: #cccccc}
  activeForeground: pallet.foreground1,

  // Active background color of the Command Center. {default: #ffffff14}
  activeBackground: pallet.background1,

  // Active border color of the command center. {default}: #cccccc4d}
  activeBorder: pallet.border3,

  // Foreground color of the Command Center when the window is inactive.
  // {default: #cccccc99}
  inactiveForeground: 'null',  // {theme: #d0d0d099}

  // Border color of the Command Center when the window is inactive.
  // {default: #cccccc26}
  inactiveBorder: pallet.border2,
};

{
  'commandCenter.foreground': commandCenter.foreground,
  'commandCenter.activeForeground': commandCenter.activeForeground,
  'commandCenter.background': commandCenter.background,
  'commandCenter.activeBackground': commandCenter.activeBackground,
  'commandCenter.border': commandCenter.border,
  'commandCenter.inactiveForeground': commandCenter.inactiveForeground,
  'commandCenter.inactiveBorder': commandCenter.inactiveBorder,
  'commandCenter.activeBorder': commandCenter.activeBorder,
}
