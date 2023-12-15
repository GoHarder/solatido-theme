local pallet = (import '../pallet.libsonnet');

local scrollbar = {
  // Scrollbar slider shadow to indicate that the view is scrolled.
  // {default: #000000}
  shadow: pallet.mono68 + pallet.opacity20_0,
};

local scrollbarSlider = {
  // Scrollbar slider background color when clicked on.
  // {default: #bfbfbf66}
  activeBackground: pallet.mono108 + pallet.opacity50_2,

  // Scrollbar slider background color. {default: #79797966}
  background: pallet.mono108 + pallet.opacity20_0,

  // Scrollbar slider background color when hovering. {default: #646464b3}
  hoverBackground: pallet.mono108 + pallet.opacity26_7,
};

{
  'scrollbar.shadow': scrollbar.shadow,
  'scrollbarSlider.activeBackground': scrollbarSlider.activeBackground,
  'scrollbarSlider.background': scrollbarSlider.background,
  'scrollbarSlider.hoverBackground': scrollbarSlider.hoverBackground,
}
