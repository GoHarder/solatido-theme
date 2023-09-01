local pallet = (import '../pallet.libsonnet');

local charts = {
  // Contrast color for text in charts. {default: #cccccc}
  foreground: 'null',  // TODO: Set charts.foreground

  // Color for lines in charts. {default: #cccccc80}
  lines: 'null',  // TODO: Set charts.lines

  // Color for red elements in charts. {default: #f14c4c}
  red: 'null',  // TODO: Set charts.red

  // Color for blue elements in charts. {default: #3794ff}
  blue: 'null',  // TODO: Set charts.blue

  // Color for yellow elements in charts. {default: #cca700}
  yellow: 'null',  // TODO: Set charts.yellow

  // Color for orange elements in charts. {default: #d18616}
  orange: 'null',  // TODO: Set charts.orange

  // Color for green elements in charts. {default: #89d185}
  green: 'null',  // TODO: Set charts.green

  // Color for purple elements in charts. {default: #b180d7}
  purple: 'null',  // TODO: Set charts.purple
};

{
  'charts.foreground': charts.foreground,
  'charts.lines': charts.lines,
  'charts.red': charts.red,
  'charts.blue': charts.blue,
  'charts.yellow': charts.yellow,
  'charts.orange': charts.orange,
  'charts.green': charts.green,
  'charts.purple': charts.purple,
}
