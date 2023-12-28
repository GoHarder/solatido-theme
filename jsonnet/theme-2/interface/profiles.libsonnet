local color = (import '../colors.libsonnet');

local profileBadge = {
  // Profile badge background color. The profile badge shows on top of the
  // settings gear icon in the activity bar.
  background: color.tertiary,

  // Profile badge foreground color. The profile badge shows on top of the
  // settings gear icon in the activity bar.
  foreground: color.onTertiary,
};

{
  'profileBadge.background': profileBadge.background,
  'profileBadge.foreground': profileBadge.foreground,
}
