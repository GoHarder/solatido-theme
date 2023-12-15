local pallet = (import '../pallet.libsonnet');

local ports = {
  // The color of the icon for a port that has an associated running
  // process. {default: #007acc}
  iconRunningProcessForeground: pallet.green.base,
};


{ 'ports.iconRunningProcessForeground': ports.iconRunningProcessForeground }
