local pallet = (import '../pallet.libsonnet');

local profileBadge = {
  // Profile badge background color. The profile badge shows on top of the
  // settings gear icon in the activity bar. {default: #4d4d4d}
  background: pallet.background3,

  // Profile badge foreground color. The profile badge shows on top of the
  // settings gear icon in the activity bar. {default: #ffffff}
  foreground: pallet.focus2,
};

{
  'profileBadge.background': profileBadge.background,
  'profileBadge.foreground': profileBadge.foreground,
}
