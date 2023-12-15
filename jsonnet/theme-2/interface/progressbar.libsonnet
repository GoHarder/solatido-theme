local pallet = (import '../pallet.libsonnet');

local progressBar = {
  // Background color of the progress bar shown for long running operations.
  // {default: #0e70c0}
  background: pallet.yellow.base,
};

local keys = ['progressBar.background'];

{ 'progressBar.background': progressBar.background }
