local pallet = (import '../pallet.libsonnet');

local testing = {
  // Color for the 'failed' icon in the test explorer. {default: #f14c4c}
  iconFailed: 'null',  // TODO: Set testing.iconFailed

  // Color for the 'Errored' icon in the test explorer. {default: #f14c4c}
  iconErrored: 'null',  // TODO: Set testing.iconErrored

  // Color for the 'passed' icon in the test explorer. {default: #73c991}
  iconPassed: 'null',  // TODO: Set testing.iconPassed

  // Color for 'run' icons in the editor. {default: #73c991}
  runAction: 'null',  // TODO: Set testing.runAction

  // Color for the 'Queued' icon in the test explorer. {default: #cca700}
  iconQueued: 'null',  // TODO: Set testing.iconQueued

  // Color for the 'Unset' icon in the test explorer. {default: #848484}
  iconUnset: 'null',  // TODO: Set testing.iconUnset

  // Color for the 'Skipped' icon in the test explorer. {default: #848484}
  iconSkipped: 'null',  // TODO: Set testing.iconSkipped

  // Color of the peek view borders and arrow. {default: #f14c4c}
  peekBorder: 'null',  // TODO: Set testing.peekBorder

  // Color of the peek view borders and arrow. {default: #f14c4c1a}
  peekHeaderBackground: 'null',  // TODO: Set testing.peekHeaderBackground

  message: {
    'error': {
      // Text color of test error messages shown inline in the editor.
      // {default: #f14c4c}
      decorationForeground: 'null',  // TODO: Set testing.message.error.decorationForeground

      // Margin color beside error messages shown inline in the editor.
      // {default: #ff000033}
      lineBackground: 'null',  // TODO: Set testing.message.error.lineBackground
    },

    info: {
      // Text color of test info messages shown inline in the editor.
      // {default: #bbbbbb80}
      decorationForeground: 'null',  // TODO: Set testing.message.info.decorationForeground

      // Margin color beside info messages shown inline in the editor.
      // {default: null}
      lineBackground: 'null',  // TODO: Set testing.message.info.lineBackground
    },
  },
};

{
  'testing.iconFailed': testing.iconFailed,
  'testing.iconErrored': testing.iconErrored,
  'testing.iconPassed': testing.iconPassed,
  'testing.runAction': testing.runAction,
  'testing.iconQueued': testing.iconQueued,
  'testing.iconUnset': testing.iconUnset,
  'testing.iconSkipped': testing.iconSkipped,
  'testing.peekBorder': testing.peekBorder,
  'testing.peekHeaderBackground': testing.peekHeaderBackground,
  'testing.message.error.decorationForeground': testing.message['error'].decorationForeground,
  'testing.message.error.lineBackground': testing.message['error'].lineBackground,
  'testing.message.info.decorationForeground': testing.message.info.decorationForeground,
  'testing.message.info.lineBackground': testing.message.info.lineBackground,
}
