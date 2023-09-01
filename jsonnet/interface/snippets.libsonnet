// ------------------------------
// Snippets Colors
// The theme colors for snippets.
// ------------------------------

local pallet = (import './_pallet.libsonnet');

local editor = {
  // Highlight background color of a snippet tabstop. {default: #7c7c7c4d}
  snippetTabstopHighlightBackground: 'null',  // set with code default

  // Highlight border color of a snippet tabstop. {default: #525252}
  snippetTabstopHighlightBorder: 'null',  // set with code default

  // Highlight background color of the final tabstop of a snippet.
  // {default: null}
  snippetFinalTabstopHighlightBackground: 'null',  // set with code default

  // Highlight border color of the final tabstop of a snippet.
  // {default: null}
  snippetFinalTabstopHighlightBorder: 'null',  // set with code default
};

{
  'editor.snippetTabstopHighlightBackground': editor.snippetTabstopHighlightBackground,
  'editor.snippetTabstopHighlightBorder': editor.snippetTabstopHighlightBorder,
  'editor.snippetFinalTabstopHighlightBackground': editor.snippetFinalTabstopHighlightBackground,
  'editor.snippetFinalTabstopHighlightBorder': editor.snippetFinalTabstopHighlightBorder,
}
