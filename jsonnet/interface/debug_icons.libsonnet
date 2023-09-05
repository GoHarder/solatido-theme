local pallet = (import '../pallet.libsonnet');

local debugIcon = {
  // Icon color for breakpoints. {default: #e51400}
  breakpointForeground: 'null',  // TODO: Set debugIcon.breakpointForeground

  // Icon color for disabled breakpoints. {default: #848484}
  breakpointDisabledForeground: 'null',  // TODO: Set debugIcon.breakpointDisabledForeground

  // Icon color for unverified breakpoints. {default: #848484}
  breakpointUnverifiedForeground: 'null',  // TODO: Set debugIcon.breakpointUnverifiedForeground

  // Icon color for the current breakpoint stack frame. {default: #ffcc00}
  breakpointCurrentStackframeForeground: 'null',  // TODO: Set debugIcon.breakpointCurrentStackframeForeground

  // Icon color for all breakpoint stack frames. {default: #89d185}
  breakpointStackframeForeground: 'null',  // TODO: Set debugIcon.breakpointStackframeForeground

  // Debug toolbar icon for start debugging. {default: #89d185}
  startForeground: pallet.green.base,

  // Debug toolbar icon for pause. {default: #75beff}
  pauseForeground: pallet.blue.base,

  // Debug toolbar icon for stop. {default: #f48771}
  stopForeground: pallet.red.base,

  // Debug toolbar icon for disconnect. {default: #f48771}
  disconnectForeground: pallet.red.base,

  // Debug toolbar icon for restart. {default: #89d185}
  restartForeground: pallet.green.base,

  // Debug toolbar icon for step over. {default: #75beff}
  stepOverForeground: pallet.blue.base,

  // Debug toolbar icon for step into. {default: #75beff}
  stepIntoForeground: pallet.blue.base,

  // Debug toolbar icon for step over. {default: #75beff}
  stepOutForeground: pallet.blue.base,

  // Debug toolbar icon for continue. {default: #75beff}
  continueForeground: pallet.blue.base,

  // Debug toolbar icon for step back. {default: #75beff}
  stepBackForeground: pallet.blue.base,
};

local debugConsole = {
  // Foreground color for info messages in debug REPL console.
  // {default: #3794ff}
  infoForeground: 'null',  // {theme: #50b9ff}

  // Foreground color for warning messages in debug REPL console.
  // {default: #cca700}
  warningForeground: 'null',  // {theme: #f8bd49}

  // Foreground color for error messages in debug REPL console.
  // {default: #f48771}
  errorForeground: 'null',  // {theme: #ff2828}

  // Foreground color for source filenames in debug REPL console.
  // {default: #cccccc}
  sourceForeground: 'null',  // {theme: #d0d0d0}
};

local debugConsoleInputIcon = {
  // Foreground color for debug console input marker icon.
  // {default: #cccccc}
  foreground: 'null',  // TODO: Set debugConsoleInputIcon.foreground
};

{
  'debugIcon.breakpointForeground': debugIcon.breakpointForeground,
  'debugIcon.breakpointDisabledForeground': debugIcon.breakpointDisabledForeground,
  'debugIcon.breakpointUnverifiedForeground': debugIcon.breakpointUnverifiedForeground,
  'debugIcon.breakpointCurrentStackframeForeground': debugIcon.breakpointCurrentStackframeForeground,
  'debugIcon.breakpointStackframeForeground': debugIcon.breakpointStackframeForeground,
  'debugIcon.startForeground': debugIcon.startForeground,
  'debugIcon.pauseForeground': debugIcon.pauseForeground,
  'debugIcon.stopForeground': debugIcon.stopForeground,
  'debugIcon.disconnectForeground': debugIcon.disconnectForeground,
  'debugIcon.restartForeground': debugIcon.restartForeground,
  'debugIcon.stepOverForeground': debugIcon.stepOverForeground,
  'debugIcon.stepIntoForeground': debugIcon.stepIntoForeground,
  'debugIcon.stepOutForeground': debugIcon.stepOutForeground,
  'debugIcon.continueForeground': debugIcon.continueForeground,
  'debugIcon.stepBackForeground': debugIcon.stepBackForeground,
  'debugConsole.infoForeground': debugConsole.infoForeground,
  'debugConsole.warningForeground': debugConsole.warningForeground,
  'debugConsole.errorForeground': debugConsole.errorForeground,
  'debugConsole.sourceForeground': debugConsole.sourceForeground,
  'debugConsoleInputIcon.foreground': debugConsoleInputIcon.foreground,
}
