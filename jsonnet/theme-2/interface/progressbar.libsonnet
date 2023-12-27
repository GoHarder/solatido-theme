local color = (import '../colors.libsonnet');

local progressBar = {
  // Background color of the progress bar shown for long running operations.
  background: color.primary,
};

local keys = ['progressBar.background'];

{ 'progressBar.background': progressBar.background }
