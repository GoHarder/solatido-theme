// ------------------------------------------------------------------------
// Banner Colors
// The banner appears below the title bar and spans the entire width of the
// workbench when visible.
// ------------------------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local banner = {
  // Banner background color. {default: #04395e}
  background: pallet.background2,

  // Banner foreground color. {default: #ffffff}
  foreground: pallet.foreground1,

  // Color for the icon in front of the banner text. {default: #3794ff}
  iconForeground: pallet.yellow.base,
};

{
  'banner.background': banner.background,
  'banner.foreground': banner.foreground,
  'banner.iconForeground': banner.iconForeground,
}
