// ------------------------------------------------------------------------
// Keybinding Label Colors
// Keybinding labels are shown when there is a keybinding associated with a
// command. An example of the keybinding label can be seen in the Command
// Palette.

// Usages of the keybinding label include (but are not limited to):
// The Command Palette
// The Keyboard Shortcuts editor
// The Keyboard Shortcuts recorder modal
// The "feature contribution" section of an extension's marketplace page
// ------------------------------------------------------------------------
// NOTE: Example image available.

local pallet = (import './_pallet.libsonnet');

local keybindingLabel = {
  // NOTE: The keybinding label is used to represent a keyboard shortcut

  // Keybinding label background color. {default: #8080802b}
  background: '#2d2d2d',

  // Keybinding label foreground color. {default: #cccccc}
  foreground: 'null',  // {theme: #d0d0d0}

  // Keybinding label border color. {default: #33333399}
  border: '#2a2a2a',

  // Keybinding label border bottom color. {default: #44444499}
  bottomBorder: '#343434',
};

{
  'keybindingLabel.background': keybindingLabel.background,
  'keybindingLabel.foreground': keybindingLabel.foreground,
  'keybindingLabel.border': keybindingLabel.border,
  'keybindingLabel.bottomBorder': keybindingLabel.bottomBorder,
}
