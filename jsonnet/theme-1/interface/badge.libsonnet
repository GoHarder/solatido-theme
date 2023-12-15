local pallet = (import '../pallet.libsonnet');

local badge = {
  // Badge foreground color. {default: #ffffff}
  foreground: pallet.yellow.base,

  // Badge background color. {default: #4d4d4d}
  background: pallet.background2,
};

{
  'badge.foreground': badge.foreground,
  'badge.background': badge.background,
}
