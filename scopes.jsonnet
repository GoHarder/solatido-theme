local default = {
  comment: {
    _description: ['For comments.'],
    line: {
      _description: [
        'line comments, we specialize further so that the type of comment',
        'start character(s) can be extracted from the scope.',
      ],
      'double-slash': { _description: ['// comment'] },
      'double-dash': { _description: ['-- comment'] },
      'number-sign': { _description: ['# comment'] },
      percentage: { _description: ['% comment'] },
      character: { _description: ['Other types of line comments.'] },
    },
    block: {
      _description: ['Multi-line comments like /* … */ and <!-- … -->.'],
      documentation: { _description: ['Embedded documentation.'] },
    },
  },
  constant: {
    _description: ['Various forms of constants.'],
    numeric: { _description: ['Those which represent numbers, e.g. 42, 1.3f, 0x4AB1U.'] },
    character: {
      _description: [@'Those which represent characters, e.g. &lt;, \e, \031.'],
      escape: { _description: [@'Escape sequences like \e would be constant.character.escape.'] },
    },
    language: { _description: [
      'Constants (generally) provided by the language which are “special”',
      'like true, false, nil, YES, NO, etc.',
    ] },
    other: { _description: ['Other constants, e.g. colors in CSS.'] },
  },
  entity: {
    _description: [
      'an entity refers to a larger part of the document, for example a',
      'chapter, class, function, or tag. We do not scope the entire entity as',
      'entity.* (we use meta.* for that). But we do use entity.* for the',
      '“placeholders” in the larger entity, e.g. if the entity is a chapter,',
      'we would use entity.name.section for the chapter title.',
    ],
    name: {
      _description: ['We are naming the larger entity.'],
      'function': { _description: ['The name of a function.'] },
      type: { _description: ['The name of a type declaration or class.'] },
      tag: { _description: ['A tag name.'] },
      section: { _description: ['The name is the name of a section/heading.'] },
    },
    other: {
      _description: ['Other entities.'],
      'inherited-class': { _description: ['The superclass/baseclass name.'] },
      'attribute-name': { _description: ['The name of an attribute (mainly in tags).'] },
    },
  },
  invalid: {
    _description: ['Stuff which is “invalid”.'],
    illegal: { _description: [
      'Illegal, e.g. an ampersand or lower-than character in HTML (which is',
      'not part of an entity/tag).',
    ] },
    deprecated: { _description: [
      'For deprecated stuff e.g. using an API function which is deprecated',
      'or using styling with strict HTML.',
    ] },
  },
  keyword: {
    _description: ['Keywords (when these do not fall into the other groups).'],
    control: { _description: ['Mainly related to flow control like continue, while, return, etc.'] },
    operator: { _description: ['Operators can either be textual (e.g. or) or be characters.'] },
    other: { _description: ['Other keywords.'] },
  },
  markup: {
    _description: [
      'This is for markup languages and generally applies to larger subsets',
      'of the text.',
    ],
    underline: {
      _description: ['Underlined text.'],
      link: { _description: [
        'This is for links, as a convenience this is derived from',
        'markup.underline so that if there is no theme rule which',
        'specifically targets markup.underline.link then it will inherit',
        'the underline style.',
      ] },
    },
    bold: { _description: [
      'Bold text (text which is strong and similar should preferably be',
      'derived from this name).',
    ] },
    heading: { _description: [
      'A section header. Optionally provide the heading level as the next',
      'element, for example markup.heading.2.html for <h2>…</h2> in HTML.',
    ] },
    italic: { _description: [
      'Italic text (text which is emphasized and similar should preferably',
      'be derived from this name).',
    ] },
    list: {
      _description: ['List items.'],
      numbered: { _description: ['Numbered list items.'] },
      unnumbered: { _description: ['Unnumbered list items.'] },
    },
    quote: { _description: ['Quoted (sometimes block quoted) text.'] },
    raw: { _description: [
      'Text which is verbatim, e.g. code listings. Normally spell checking',
      'is disabled for markup.raw.',
    ] },
    other: { _description: ['Other markup constructs.'] },
  },
  meta: {
    _description: [
      'The meta scope is generally used to markup larger parts of the document.',
      'For example the entire line which declares a function would be',
      'meta.function and the subsets would be storage.type,',
      'entity.name.function, variable.parameter etc. and only the latter would',
      'be styled. Sometimes the meta part of the scope will be used only to',
      'limit the more general element that is styled, most of the time meta',
      'scopes are however used in scope selectors for activation of bundle',
      'items. For example in Objective-C there is a meta scope for the',
      'interface declaration of a class and the implementation, allowing the',
      'same tab-triggers to expand differently, depending on context.',
    ],
  },
  storage: {
    _description: ['Things relating to “storage”.'],
    type: { _description: ['The type of something, class, function, int, var, etc.'] },
    modifier: { _description: ['A storage modifier like static, final, abstract, etc.'] },
  },
  string: {
    _description: ['Strings.'],
    quoted: {
      _description: ['Quoted strings.'],
      single: { _description: ["Single quoted strings: 'foo'."] },
      double: { _description: ['Double quoted strings: "foo".'] },
      triple: { _description: ['Triple quoted strings: """Python""".'] },
      other: { _description: ["Other types of quoting: $'shell', %s{...}."] },
    },
    unquoted: { _description: ['For things like here-docs and here-strings.'] },
    interpolated: { _description: ['Strings which are “evaluated”: `date`, $(pwd).'] },
    regexp: { _description: [@'Regular expressions: /(\w+)/.'] },
    other: { _description: ['Other types of strings (should rarely be used).'] },
  },
  support: {
    _description: ['Things provided by a framework or library should be below support.'],
    'function': { _description: [
      'Functions provided by the framework/library. For example NSLog in',
      'Objective-C is support.function.',
    ] },
    class: { _description: ['When the framework/library provides classes.'] },
    type: { _description: [
      'Types provided by the framework/library, this is probably only used',
      'for languages derived from C, which has typedef (and struct). Most',
      'other languages would introduce new types as classes.',
    ] },
    constant: { _description: ['Constants (magic values) provided by the framework/library.'] },
    variable: { _description: ['Variables provided by the framework/library. For example NSApp in AppKit.'] },
    other: { _description: ['The above should be exhaustive, but for everything else use support.other.'] },
  },
  variable: {
    _description: ['Variables. Not all languages allow easy identification (and thus markup) of these.'],
    parameter: { _description: ['When the variable is declared as the parameter.'] },
    language: { _description: ['Reserved language variables like this, super, self, etc.'] },
    other: { _description: ['Other variables, like $some_variables.'] },
  },
};

local stringSub = { constant: { other: { placeholder: { _settings: { foreground: '#eeffff' } } } } };

local theme = {
  comment: { _settings: { foreground: '#546e7a' } },
  constant: { other: { color: { _clash: [
    { _settings: { foreground: '#ffffff' } },
    { _settings: { foreground: '#89ddff' } },
  ] } } },
  entity: {
    name: {
      'function': {
        _settings: { foreground: '#82aaff' },
      },
      tag: { _settings: { foreground: '#f07178' } },
    },
  },
  invalid: {
    _settings: { foreground: '#ff5370' },
    illegal: { _settings: { foreground: '#ff5370' } },
  },
  keyword: {
    _settings: { foreground: '#c792ea' },
    control: { _settings: { foreground: '#89ddff' } },
    other: {
      'special-method': { _settings: { foreground: '#82aaff' } },
      substitution: { _settings: { foreground: '#89ddff' } },
      template: { _settings: { foreground: '#89ddff' } },
    },
  },
  markup: { deleted: { git_gutter: { _settings: { foreground: '#f07178' } } } },
  meta: {
    'function-call': { _settings: { foreground: '#82aaff' } },
    tag: {
      _settings: { foreground: '#89ddff' },
      sgml: { _settings: { foreground: '#f07178' } },
    },
  },
  punctuation: {
    _settings: { foreground: '#89ddff' },
    definition: {
      comment: { _settings: { foreground: '#546e7a' } },
      separator: { inheritance: { php: { _settings: { foreground: '#89ddff' } } } },
      tag: {
        _settings: { foreground: '#89ddff' },
        begin: { html: { _settings: { foreground: '#89ddff' } } },
        end: { html: { _settings: { foreground: '#89ddff' } } },
        html: { _settings: { foreground: '#89ddff' } },
      },
    },
    section: { embedded: { _settings: { foreground: '#89ddff' } } },
  },
  storage: {
    modifier: { _settings: { foreground: '#c792ea' } },
    type: { _settings: { foreground: '#c792ea' } },
  },
  string: { _sub: stringSub },
  support: { 'function': { _settings: { foreground: '#82aaff' } } },
  variable: {
    _settings: { foreground: '#eeffff' },
    'function': { _settings: { foreground: '#82aaff' } },
  },
};

local temp = [
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
    settings: { foreground+: '#C792EA' },
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
  {
    name: 'Markdown - Link',
    scope: ['string.other.link.title.markdown'],
    settings: { foreground: '#82AAFF' },
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

std.mergePatch(default, theme)
