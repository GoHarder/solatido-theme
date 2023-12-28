local color = (import '../colors.libsonnet');

local scrollbar = {
  // Scrollbar slider shadow to indicate that the view is scrolled.
  shadow: color.onSurfaceVariant + color.opacity08,
};

local scrollbarSlider = {
  // Scrollbar slider background color when clicked on.
  activeBackground: color.onSurfaceVariant + color.opacity16,

  // Scrollbar slider background color.
  background: color.onSurfaceVariant + color.opacity08,

  // Scrollbar slider background color when hovering.
  hoverBackground: color.onSurfaceVariant + color.opacity12,
};

{
  'scrollbar.shadow': scrollbar.shadow,
  'scrollbarSlider.activeBackground': scrollbarSlider.activeBackground,
  'scrollbarSlider.background': scrollbarSlider.background,
  'scrollbarSlider.hoverBackground': scrollbarSlider.hoverBackground,
}
