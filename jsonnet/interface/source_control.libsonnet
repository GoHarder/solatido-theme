local pallet = (import '../pallet.libsonnet');

local scm = {
  // SCM Provider separator border. {default: #454545}
  providerBorder: pallet.border2,
};

{ 'scm.providerBorder': scm.providerBorder }
