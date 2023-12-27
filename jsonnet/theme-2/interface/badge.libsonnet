local color = (import '../colors.libsonnet');

local badge = {
  // Badge foreground color.
  foreground: color.onTertiary,

  // Badge background color.
  background: color.tertiary,
};

{
  'badge.foreground': badge.foreground,
  'badge.background': badge.background,
}
