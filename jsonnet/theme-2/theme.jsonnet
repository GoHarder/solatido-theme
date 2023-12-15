local interface = (import './interface/main.libsonnet');
local tokens = (import './tokens/main.libsonnet');

{
  '$schema': 'vscode://schemas/color-theme',
  colors: interface,
  tokenColors: tokens,
}
