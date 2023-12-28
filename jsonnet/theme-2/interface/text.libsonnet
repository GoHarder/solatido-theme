// --------------------------------------------------------
// Text Colors
// Colors inside a text document, such as the welcome page.
// --------------------------------------------------------

local color = (import '../colors.libsonnet');

local textBlockQuote = {
  // Background color for block quotes in text.
  background: color.surfaceContainer,

  // Border color for block quotes in text.
  border: color.outlineVariant,
};

local textCodeBlock = {
  // Background color for code blocks in text.
  background: color.surfaceContainer,
};

local textLink = {
  // Foreground color for links in text when clicked on and on mouse hover.
  activeForeground: color.primaryHover,

  // Foreground color for links in text.
  foreground: color.primary,
};

local textPreformat = {
  // Foreground color for preformatted text segments.
  foreground: color.tertiary,
};

local textSeparator = {
  // Color for text separators. {default: #ffffff2e}
  foreground: 'null',  // NOTE: Can't find.
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
