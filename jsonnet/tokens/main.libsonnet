local pallet = (import '../pallet.libsonnet');

local temp = [
  {  // NOTE: Comment done
    name: 'Comment',
    scope: ['comment', 'punctuation.definition.comment'],
    settings+: { foreground: '#546E7A' } +
               { foreground: pallet.mono108 },
  },
  {
    name: 'Variables',
    scope: ['variable', 'string constant.other.placeholder'],
    settings: { foreground: '#EEFFFF' },
  },
  {
    name: 'Colors',
    scope: ['constant.other.color'],
    settings: { foreground: '#ffffff' },
  },
  {
    name: 'Invalid',
    scope: ['invalid', 'invalid.illegal'],
    settings: { foreground: '#FF5370' },
  },
  {
    name: 'Keyword, Storage',
    scope: ['keyword', 'storage.type', 'storage.modifier'],
    settings+: { foreground: '#C792EA' },
  },
  {
    name: 'Operator, Misc',
    scope: [
      'keyword.control',
      'constant.other.color',
      'punctuation',
      'meta.tag',
      'punctuation.definition.tag',
      'punctuation.separator.inheritance.php',
      'punctuation.definition.tag.html',
      'punctuation.definition.tag.begin.html',
      'punctuation.definition.tag.end.html',
      'punctuation.section.embedded',
      'keyword.other.template',
      'keyword.other.substitution',
    ],
    settings+: { foreground: '#89DDFF' } +
               { foreground: pallet.mono128 },
  },
  {  // NOTE: Tag done
    name: 'Tag',
    scope: [
      'entity.name.tag',
      'meta.tag.sgml',
      'markup.deleted.git_gutter',
    ],
    settings+: { foreground: '#f07178' } +
               { foreground: pallet.tokens.blue2 },
  },
  {
    name: 'Function, Special Method',
    scope: [
      'entity.name.function',
      'meta.function-call',
      'variable.function',
      'support.function',
      'keyword.other.special-method',
    ],
    settings: { foreground: '#82AAFF' },
  },
  {
    name: 'Block Level Variables',
    scope: ['meta.block variable.other'],
    settings: { foreground: '#f07178' },
  },
  {
    name: 'Other Variable, String Link',
    scope: ['support.other.variable', 'string.other.link'],
    settings: { foreground: '#f07178' },
  },
  {
    name: 'Number, Constant, Function Argument, Tag Attribute, Embedded',
    scope: [
      'constant.numeric',
      'constant.language',
      'support.constant',
      'constant.character',
      'constant.escape',
      'variable.parameter',
      'keyword.other.unit',
      'keyword.other',
    ],
    settings: { foreground: '#F78C6C' },
  },
  {
    name: 'String, Symbols, Inherited Class, Markup Heading',
    scope: [
      'string',
      'constant.other.symbol',
      'constant.other.key',
      'entity.other.inherited-class',
      'markup.heading',
      'markup.inserted.git_gutter',
      'meta.group.braces.curly constant.other.object.key.js string.unquoted.label.js',
    ],
    settings: { foreground: '#C3E88D' },
  },
  {
    name: 'Class, Support',
    scope: [
      'entity.name',
      'support.type',
      'support.class',
      'support.other.namespace.use.php',
      'meta.use.php',
      'support.other.namespace.php',
      'markup.changed.git_gutter',
      'support.type.sys-types',
    ],
    settings: {
      foreground: '#FFCB6B',
    },
  },
  {
    name: 'Entity Types',
    scope: ['support.type'],
    settings: {
      foreground: '#B2CCD6',
    },
  },
  {
    name: 'CSS Class and Support',
    scope: [
      'source.css support.type.property-name',
      'source.sass support.type.property-name',
      'source.scss support.type.property-name',
      'source.less support.type.property-name',
      'source.stylus support.type.property-name',
      'source.postcss support.type.property-name',
    ],
    settings: {
      foreground: '#B2CCD6',
    },
  },
  {
    name: 'Sub-methods',
    scope: ['entity.name.module.js', 'variable.import.parameter.js', 'variable.other.class.js'],
    settings: {
      foreground: '#FF5370',
    },
  },
  {
    name: 'Language methods',
    scope: ['variable.language'],
    settings: {
      fontStyle: 'italic',
      foreground: '#FF5370',
    },
  },
  {
    name: 'entity.name.method.js',
    scope: ['entity.name.method.js'],
    settings: {
      fontStyle: 'italic',
      foreground: '#82AAFF',
    },
  },
  {
    name: 'meta.method.js',
    scope: ['meta.class-method.js entity.name.function.js', 'variable.function.constructor'],
    settings: {
      foreground: '#82AAFF',
    },
  },
  {
    name: 'Attributes',
    scope: [
      'entity.other.attribute-name',
    ],
    settings: { foreground+: '#C792EA' } +
              { foreground: pallet.tokens.blue1 },
  },
  {
    name: 'HTML Attributes',
    scope: ['text.html.basic entity.other.attribute-name.html', 'text.html.basic entity.other.attribute-name'],
    settings: {
      fontStyle: 'italic',
      foreground: '#FFCB6B',
    },
  },
  {
    name: 'CSS Classes',
    scope: ['entity.other.attribute-name.class'],
    settings: {
      foreground: '#FFCB6B',
    },
  },
  {
    name: "CSS ID's",
    scope: ['source.sass keyword.control'],
    settings: {
      foreground: '#82AAFF',
    },
  },
  {
    name: 'Inserted',
    scope: ['markup.inserted'],
    settings: {
      foreground: '#C3E88D',
    },
  },
  {
    name: 'Deleted',
    scope: ['markup.deleted'],
    settings: {
      foreground: '#FF5370',
    },
  },
  {
    name: 'Changed',
    scope: ['markup.changed'],
    settings: {
      foreground: '#C792EA',
    },
  },
  {
    name: 'Regular Expressions',
    scope: ['string.regexp'],
    settings: {
      foreground: '#89DDFF',
    },
  },
  {
    name: 'Escape Characters',
    scope: ['constant.character.escape'],
    settings: {
      foreground: '#89DDFF',
    },
  },
  {
    name: 'URL',
    scope: ['*url*', '*link*', '*uri*'],
    settings: {
      fontStyle: 'underline',
    },
  },
  {
    name: 'Decorators',
    scope: ['tag.decorator.js entity.name.tag.js', 'tag.decorator.js punctuation.definition.tag.js'],
    settings: {
      fontStyle: 'italic',
      foreground: '#82AAFF',
    },
  },
  {
    name: 'ES7 Bind Operator',
    scope: ['source.js constant.other.object.key.js string.unquoted.label.js'],
    settings: {
      fontStyle: 'italic',
      foreground: '#FF5370',
    },
  },
  {
    name: 'JSON Key - Level 0',
    scope: ['source.json meta.structure.dictionary.json support.type.property-name.json'],
    settings: {
      foreground: '#C792EA',
    },
  },
  {
    name: 'JSON Key - Level 1',
    scope: ['source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json'],
    settings: {
      foreground: '#FFCB6B',
    },
  },
  {
    name: 'JSON Key - Level 2',
    scope: [
      'source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json',
    ],
    settings: {
      foreground: '#F78C6C',
    },
  },
  {
    name: 'JSON Key - Level 3',
    scope: [
      'source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json',
    ],
    settings: {
      foreground: '#FF5370',
    },
  },
  {
    name: 'JSON Key - Level 4',
    scope: [
      'source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json',
    ],
    settings: {
      foreground: '#C17E70',
    },
  },
  {
    name: 'JSON Key - Level 5',
    scope: [
      'source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json',
    ],
    settings: {
      foreground: '#82AAFF',
    },
  },
  {
    name: 'JSON Key - Level 6',
    scope: [
      'source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json',
    ],
    settings: {
      foreground: '#f07178',
    },
  },
  {
    name: 'JSON Key - Level 7',
    scope: [
      'source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json',
    ],
    settings: {
      foreground: '#C792EA',
    },
  },
  {
    name: 'JSON Key - Level 8',
    scope: [
      'source.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json meta.structure.dictionary.value.json meta.structure.dictionary.json support.type.property-name.json',
    ],
    settings: {
      foreground: '#C3E88D',
    },
  },
  {
    name: 'Markdown - Plain',
    scope: ['text.html.markdown', 'punctuation.definition.list_item.markdown'],
    settings: {
      foreground: '#EEFFFF',
    },
  },
  {
    name: 'Markdown - Markup Raw Inline',
    scope: ['text.html.markdown markup.inline.raw.markdown'],
    settings: {
      foreground: '#C792EA',
    },
  },
  {
    name: 'Markdown - Markup Raw Inline Punctuation',
    scope: ['text.html.markdown markup.inline.raw.markdown punctuation.definition.raw.markdown'],
    settings: {
      foreground: '#65737E',
    },
  },
  {
    name: 'Markdown - Heading',
    scope: ['markdown.heading', 'markup.heading | markup.heading entity.name', 'markup.heading.markdown punctuation.definition.heading.markdown'],
    settings: {
      foreground: '#C3E88D',
    },
  },
  {
    name: 'Markup - Italic',
    scope: ['markup.italic'],
    settings+: { fontStyle: 'italic', foreground: '#f07178' } +
               { foreground:: super.foreground },
  },
  {
    name: 'Markup - Bold',
    scope: ['markup.bold', 'markup.bold string'],
    settings+: { fontStyle: 'bold', foreground: '#f07178' } +
               { foreground:: super.foreground },
  },
  {
    name: 'Markup - Bold-Italic',
    scope: [
      'markup.bold markup.italic',
      'markup.italic markup.bold',
      'markup.quote markup.bold',
      'markup.bold markup.italic string',
      'markup.italic markup.bold string',
      'markup.quote markup.bold string',
    ],
    settings+: { fontStyle: 'bold', foreground: '#f07178' } +
               { fontStyle: 'bold italic', foreground:: super.foreground },
  },
  {
    name: 'Markup - Underline',
    scope: ['markup.underline'],
    settings: {
      fontStyle: 'underline',
      foreground: '#F78C6C',
    },
  },
  {
    name: 'Markdown - Blockquote',
    scope: ['markup.quote punctuation.definition.blockquote.markdown'],
    settings: {
      foreground: '#65737E',
    },
  },
  {
    name: 'Markup - Quote',
    scope: ['markup.quote'],
    settings: {
      fontStyle: 'italic',
    },
  },
  {  // NOTE: Markdown link done
    name: 'Markdown - Link',
    scope: ['string.other.link.title.markdown'],
    settings+: { foreground: '#82AAFF' } +
               { foreground: pallet.tokens.blue1 },
  },
  {
    name: 'Markdown - Link Description',
    scope: ['string.other.link.description.title.markdown'],
    settings: { foreground: '#C792EA' },
  },
  {
    name: 'Markdown - Link Anchor',
    scope: ['constant.other.reference.link.markdown'],
    settings: {
      foreground: '#FFCB6B',
    },
  },
  {
    name: 'Markup - Raw Block',
    scope: ['markup.raw.block'],
    settings: {
      foreground: '#C792EA',
    },
  },
  {
    name: 'Markdown - Raw Block Fenced',
    scope: ['markup.raw.block.fenced.markdown'],
    settings: {
      foreground: '#00000050',
    },
  },
  {
    name: 'Markdown - Fenced Bode Block',
    scope: ['punctuation.definition.fenced.markdown'],
    settings: {
      foreground: '#00000050',
    },
  },
  {
    name: 'Markdown - Fenced Bode Block Variable',
    scope: ['markup.raw.block.fenced.markdown', 'variable.language.fenced.markdown', 'punctuation.section.class.end'],
    settings: {
      foreground: '#EEFFFF',
    },
  },
  {
    name: 'Markdown - Fenced Language',
    scope: ['variable.language.fenced.markdown'],
    settings: {
      foreground: '#65737E',
    },
  },
  {
    name: 'Markdown - Separator',
    scope: ['meta.separator'],
    settings: {
      fontStyle: 'bold',
      foreground: '#65737E',
    },
  },
  {
    name: 'Markup - Table',
    scope: ['markup.table'],
    settings: {
      foreground: '#EEFFFF',
    },
  },
];

[
  {
    scope: [
      'meta.embedded',
      'source.groovy.embedded',
      'string meta.image.inline.markdown',
    ],
    settings: {
      foreground: '#D4D4D4',
    },
  },
  {
    scope: 'emphasis',
    settings: {
      fontStyle: 'italic',
    },
  },
  {
    scope: 'strong',
    settings: {
      fontStyle: 'bold',
    },
  },
  {
    scope: 'header',
    settings: {
      foreground: '#000080',
    },
  },
  {
    scope: 'comment',
    settings: {
      foreground: '#6A9955',
    },
  },
  {
    scope: 'constant.language',
    settings: {
      foreground: '#569CD6',
    },
  },
  {
    scope: [
      'constant.numeric',
      'variable.other.enummember',
      'keyword.operator.plus.exponent',
      'keyword.operator.minus.exponent',
    ],
    settings: {
      foreground: '#B5CEA8',
    },
  },
  {
    scope: 'constant.regexp',
    settings: {
      foreground: '#646695',
    },
  },
  {
    scope: 'entity.name.tag',
    settings: {
      foreground: '#569CD6',
    },
  },
  {
    scope: 'entity.name.tag.css',
    settings: {
      foreground: '#D7BA7D',
    },
  },
  {
    scope: 'entity.other.attribute-name',
    settings: {
      foreground: '#9CDCFE',
    },
  },
  {
    scope: [
      'entity.other.attribute-name.class.css',
      'entity.other.attribute-name.class.mixin.css',
      'entity.other.attribute-name.id.css',
      'entity.other.attribute-name.parent-selector.css',
      'entity.other.attribute-name.pseudo-class.css',
      'entity.other.attribute-name.pseudo-element.css',
      'source.css.less entity.other.attribute-name.id',
      'entity.other.attribute-name.scss',
    ],
    settings: {
      foreground: '#D7BA7D',
    },
  },
  {
    scope: 'invalid',
    settings: {
      foreground: '#F44747',
    },
  },
  {
    scope: 'markup.underline',
    settings: {
      fontStyle: 'underline',
    },
  },
  {
    scope: 'markup.bold',
    settings: {
      foreground: '#569CD6',
      fontStyle: 'bold',
    },
  },
  {
    scope: 'markup.heading',
    settings: {
      foreground: '#569CD6',
      fontStyle: 'bold',
    },
  },
  {
    scope: 'markup.italic',
    settings: {
      fontStyle: 'italic',
    },
  },
  {
    scope: 'markup.strikethrough',
    settings: {
      fontStyle: 'strikethrough',
    },
  },
  {
    scope: 'markup.inserted',
    settings: {
      foreground: '#B5CEA8',
    },
  },
  {
    scope: 'markup.deleted',
    settings: {
      foreground: '#CE9178',
    },
  },
  {
    scope: 'markup.changed',
    settings: {
      foreground: '#569CD6',
    },
  },
  {
    scope: 'punctuation.definition.quote.begin.markdown',
    settings: {
      foreground: '#6A9955',
    },
  },
  {
    scope: 'punctuation.definition.list.begin.markdown',
    settings: {
      foreground: '#6796E6',
    },
  },
  {
    scope: 'markup.inline.raw',
    settings: {
      foreground: '#CE9178',
    },
  },
  {
    scope: 'punctuation.definition.tag',
    settings: {
      foreground: '#808080',
    },
  },
  {
    scope: [
      'meta.preprocessor',
      'entity.name.function.preprocessor',
    ],
    settings: {
      foreground: '#569CD6',
    },
  },
  {
    scope: 'meta.preprocessor.string',
    settings: {
      foreground: '#CE9178',
    },
  },
  {
    scope: 'meta.preprocessor.numeric',
    settings: {
      foreground: '#B5CEA8',
    },
  },
  {
    scope: 'meta.structure.dictionary.key.python',
    settings: {
      foreground: '#9CDCFE',
    },
  },
  {
    scope: 'meta.diff.header',
    settings: {
      foreground: '#569CD6',
    },
  },
  {
    scope: 'storage',
    settings: {
      foreground: '#569CD6',
    },
  },
  {
    scope: 'storage.type',
    settings: {
      foreground: '#569CD6',
    },
  },
  {
    scope: [
      'storage.modifier',
      'keyword.operator.noexcept',
    ],
    settings: {
      foreground: '#569CD6',
    },
  },
  {
    scope: [
      'string',
      'meta.embedded.assembly',
    ],
    settings: {
      foreground: '#CE9178',
    },
  },
  {
    scope: 'string.tag',
    settings: {
      foreground: '#CE9178',
    },
  },
  {
    scope: 'string.value',
    settings: {
      foreground: '#CE9178',
    },
  },
  {
    scope: 'string.regexp',
    settings: {
      foreground: '#D16969',
    },
  },
  {
    scope: [
      'punctuation.definition.template-expression.begin',
      'punctuation.definition.template-expression.end',
      'punctuation.section.embedded',
    ],
    settings: {
      foreground: '#569CD6',
    },
  },
  {
    scope: [
      'meta.template.expression',
    ],
    settings: {
      foreground: '#D4D4D4',
    },
  },
  {
    scope: [
      'support.type.vendored.property-name',
      'support.type.property-name',
      'variable.css',
      'variable.scss',
      'variable.other.less',
      'source.coffee.embedded',
    ],
    settings: {
      foreground: '#9CDCFE',
    },
  },
  {
    scope: 'keyword',
    settings: {
      foreground: '#569CD6',
    },
  },
  {
    scope: 'keyword.control',
    settings: {
      foreground: '#569CD6',
    },
  },
  {
    scope: 'keyword.operator',
    settings: {
      foreground: '#D4D4D4',
    },
  },
  {
    scope: [
      'keyword.operator.new',
      'keyword.operator.expression',
      'keyword.operator.cast',
      'keyword.operator.sizeof',
      'keyword.operator.alignof',
      'keyword.operator.typeid',
      'keyword.operator.alignas',
      'keyword.operator.instanceof',
      'keyword.operator.logical.python',
      'keyword.operator.wordlike',
    ],
    settings: {
      foreground: '#569CD6',
    },
  },
  {
    scope: 'keyword.other.unit',
    settings: {
      foreground: '#B5CEA8',
    },
  },
  {
    scope: [
      'punctuation.section.embedded.begin.php',
      'punctuation.section.embedded.end.php',
    ],
    settings: {
      foreground: '#569CD6',
    },
  },
  {
    scope: 'support.function.git-rebase',
    settings: {
      foreground: '#9CDCFE',
    },
  },
  {
    scope: 'constant.sha.git-rebase',
    settings: {
      foreground: '#B5CEA8',
    },
  },
  {
    scope: [
      'storage.modifier.import.java',
      'variable.language.wildcard.java',
      'storage.modifier.package.java',
    ],
    settings: {
      foreground: '#D4D4D4',
    },
  },
  {
    scope: 'variable.language',
    settings: {
      foreground: '#569CD6',
    },
  },
  {
    scope: [
      'entity.name.function',
      'support.function',
      'support.constant.handlebars',
      'source.powershell variable.other.member',
      'entity.name.operator.custom-literal',
    ],
    settings: {
      foreground: '#DCDCAA',
    },
  },
  {
    scope: [
      'support.class',
      'support.type',
      'entity.name.type',
      'entity.name.namespace',
      'entity.other.attribute',
      'entity.name.scope-resolution',
      'entity.name.class',
      'storage.type.numeric.go',
      'storage.type.byte.go',
      'storage.type.boolean.go',
      'storage.type.string.go',
      'storage.type.uintptr.go',
      'storage.type.error.go',
      'storage.type.rune.go',
      'storage.type.cs',
      'storage.type.generic.cs',
      'storage.type.modifier.cs',
      'storage.type.variable.cs',
      'storage.type.annotation.java',
      'storage.type.generic.java',
      'storage.type.java',
      'storage.type.object.array.java',
      'storage.type.primitive.array.java',
      'storage.type.primitive.java',
      'storage.type.token.java',
      'storage.type.groovy',
      'storage.type.annotation.groovy',
      'storage.type.parameters.groovy',
      'storage.type.generic.groovy',
      'storage.type.object.array.groovy',
      'storage.type.primitive.array.groovy',
      'storage.type.primitive.groovy',
    ],
    settings: {
      foreground: '#4EC9B0',
    },
  },
  {
    scope: [
      'meta.type.cast.expr',
      'meta.type.new.expr',
      'support.constant.math',
      'support.constant.dom',
      'support.constant.json',
      'entity.other.inherited-class',
    ],
    settings: {
      foreground: '#4EC9B0',
    },
  },
  {
    scope: [
      'keyword.control',
      'source.cpp keyword.operator.new',
      'keyword.operator.delete',
      'keyword.other.using',
      'keyword.other.operator',
      'entity.name.operator',
    ],
    settings: {
      foreground: '#C586C0',
    },
  },
  {
    scope: [
      'variable',
      'meta.definition.variable.name',
      'support.variable',
      'entity.name.variable',
      'constant.other.placeholder',
    ],
    settings: {
      foreground: '#9CDCFE',
    },
  },
  {
    scope: [
      'variable.other.constant',
      'variable.other.enummember',
    ],
    settings: {
      foreground: '#4FC1FF',
    },
  },
  {
    scope: [
      'meta.object-literal.key',
    ],
    settings: {
      foreground: '#9CDCFE',
    },
  },
  {
    scope: [
      'support.constant.property-value',
      'support.constant.font-name',
      'support.constant.media-type',
      'support.constant.media',
      'constant.other.color.rgb-value',
      'constant.other.rgb-value',
      'support.constant.color',
    ],
    settings: {
      foreground: '#CE9178',
    },
  },
  {
    scope: [
      'punctuation.definition.group.regexp',
      'punctuation.definition.group.assertion.regexp',
      'punctuation.definition.character-class.regexp',
      'punctuation.character.set.begin.regexp',
      'punctuation.character.set.end.regexp',
      'keyword.operator.negation.regexp',
      'support.other.parenthesis.regexp',
    ],
    settings: {
      foreground: '#CE9178',
    },
  },
  {
    scope: [
      'constant.character.character-class.regexp',
      'constant.other.character-class.set.regexp',
      'constant.other.character-class.regexp',
      'constant.character.set.regexp',
    ],
    settings: {
      foreground: '#D16969',
    },
  },
  {
    scope: [
      'keyword.operator.or.regexp',
      'keyword.control.anchor.regexp',
    ],
    settings: {
      foreground: '#DCDCAA',
    },
  },
  {
    scope: 'keyword.operator.quantifier.regexp',
    settings: {
      foreground: '#D7BA7D',
    },
  },
  {
    scope: [
      'constant.character',
      'constant.other.option',
    ],
    settings: {
      foreground: '#569CD6',
    },
  },
  {
    scope: 'constant.character.escape',
    settings: {
      foreground: '#D7BA7D',
    },
  },
  {
    scope: 'entity.name.label',
    settings: {
      foreground: '#C8C8C8',
    },
  },
  {
    scope: 'token.info-token',
    settings: {
      foreground: '#6796E6',
    },
  },
  {
    scope: 'token.warn-token',
    settings: {
      foreground: '#CD9731',
    },
  },
  {
    scope: 'token.error-token',
    settings: {
      foreground: '#F44747',
    },
  },
  {
    scope: 'token.debug-token',
    settings: {
      foreground: '#B267E6',
    },
  },
]
