// --------------------------------------------------------
// Text Colors
// Colors inside a text document, such as the welcome page.
// --------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local textBlockQuote = {
  // Background color for block quotes in text. {default: #7f7f7f1a}
  background: pallet.mono38,

  // Border color for block quotes in text. {default: #007acc80}
  border: pallet.border2,
};

local textCodeBlock = {
  // Background color for code blocks in text. {default: #0a0a0a66}
  background: pallet.mono18,
};

local textLink = {
  // Foreground color for links in text when clicked on and on mouse hover.
  // {default: #3794ff}
  activeForeground: pallet.blue.sub2,

  // Foreground color for links in text. {default: #3794ff}
  foreground: pallet.blue.base,
};

local textPreformat = {
  // Foreground color for preformatted text segments. {default: #d7ba7d}
  foreground: pallet.yellow.base,
};

local textSeparator = {
  // Color for text separators. {default: #ffffff2e}
  foreground: 'null',  // NOTE: Can't find. I think its the underline under markdown headers
};

{
  'textBlockQuote.background': textBlockQuote.background,
  'textBlockQuote.border': textBlockQuote.border,
  'textCodeBlock.background': textCodeBlock.background,
  'textLink.activeForeground': textLink.activeForeground,
  'textLink.foreground': textLink.foreground,
  'textPreformat.foreground': textPreformat.foreground,
  'textSeparator.foreground': textSeparator.foreground,
}
