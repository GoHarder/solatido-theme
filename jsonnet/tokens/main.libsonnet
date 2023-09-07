local pallet = (import '../pallet.libsonnet');
local default1 = (import './default1.libsonnet');
local default2 = (import './default2.libsonnet');

local markup = [
  {
    name: 'Markup - Italic-Bold',
    scope: [
      'markup.bold markup.italic',
      'markup.italic markup.bold',
      'markup.bold markup.italic string',
      'markup.italic markup.bold string',
    ],
    settings: { fontStyle: 'italic bold' },
  },
  {
    name: 'Markup - Underline',
    scope: ['markup.underline'],
    settings: { fontStyle: 'underline' },
  },
  {
    name: 'Markup - Italic',
    scope: ['markup.italic'],
    settings: { fontStyle: 'italic' },
  },
  {
    name: 'Markup - Bold',
    scope: ['markup.bold', 'markup.bold string'],
    settings: { fontStyle: 'bold' },
  },
];

local theme = [
  {
    name: 'Comment',
    scope: ['comment'],
    settings: { foreground: pallet.mono158 },
  },
  {
    name: 'Keyword - Operator',
    scope: ['keyword.operator'],
    settings: { foreground: pallet.mono208 },
  },
  {
    name: 'Punctuation - tag',
    scope: ['punctuation.definition.tag'],
    settings: { foreground: pallet.mono128 },
  },
  {
    name: 'Entity - Tag',
    scope: ['entity.name.tag', 'meta.tag.sgml'],
    settings: { foreground: pallet.cyan.sub2 },
  },
  {
    name: 'String',
    scope: ['string'],
    settings: { foreground: '#dfab5c' },
  },
  {
    name: 'Entity - Attribute-Name',
    scope: ['entity.other.attribute-name'],
    settings: { foreground: pallet.tokens.blue2 },
  },

] + markup;

// default2
default1
// theme
