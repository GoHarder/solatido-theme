local pallet = (import '../pallet.libsonnet');

local welcomePage = {
  // Background color for the Welcome page. {default: null}
  background: 'null',  // set with code default

  progress: {
    // Background color for the Welcome page progress bars.
    // {defalut: #3c3c3c}
    background: pallet.mono0,

    // Foreground color for the Welcome page progress bars.
    // {default: #3794ff}
    foreground: pallet.green.base,
  },

  //  Background color for the tiles on the Get Started page.
  // {default: #252526}
  tileBackground: pallet.background1,

  // Hover background color for the tiles on the Get Started.
  // {default: #2c2c2d}
  tileHoverBackground: pallet.border2,

  // Border color for the tiles on the Get Started page.
  // {default: #ffffff1a}
  tileBorder: pallet.border3,
};

local walkThrough = {
  // Background color for the embedded editors on the Interactive Playground.
  // {default: #00000066}
  embeddedEditorBackground: pallet.background1,

  // Foreground color of the heading of each walkthrough step.
  // {default: #ffffff}
  stepTitle: { foreground: 'null' },  // set with code default
};

{
  'welcomePage.background': welcomePage.background,
  'welcomePage.progress.background': welcomePage.progress.background,
  'welcomePage.progress.foreground': welcomePage.progress.foreground,
  'welcomePage.tileBackground': welcomePage.tileBackground,
  'welcomePage.tileHoverBackground': welcomePage.tileHoverBackground,
  'welcomePage.tileBorder': welcomePage.tileBorder,
  'walkThrough.embeddedEditorBackground': walkThrough.embeddedEditorBackground,
  'walkthrough.stepTitle.foreground': walkThrough.stepTitle.foreground,
}
