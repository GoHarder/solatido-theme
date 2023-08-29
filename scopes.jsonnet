local default = {
  comment: {
    _description: 'For comments.',

    // line comments, we specialize further so that the type of comment
    // start character(s) can be extracted from the scope.
    line: {
      // // comment
      'double-slash': {},
      // -- comment
      'double-dash': {},
      // # comment
      'number-sign': {},
      // % comment
      percentage: {},
      // other types of line comments.
      character: {},
    },
    // multi-line comments like /* … */ and <!-- … -->.
    block: {
      // embedded documentation.
      documentation: {},
    },
  },
  // various forms of constants.
  constant: {
    // those which represent numbers, e.g. 42, 1.3f, 0x4AB1U.
    numeric: {},
    // those which represent characters, e.g. &lt;, \e, \031.
    character: {
      // escape sequences like \e would be constant.character.escape.
      escape: {},
    },
    // constants (generally) provided by the language which are “special”
    // like true, false, nil, YES, NO, etc.
    language: {},
    // other constants, e.g. colors in CSS.
    other: {},
  },
  // an entity refers to a larger part of the document, for example a
  // chapter, class, function, or tag. We do not scope the entire entity as
  // entity.* (we use meta.* for that). But we do use entity.* for the
  // “placeholders” in the larger entity, e.g. if the entity is a chapter,
  // we would use entity.name.section for the chapter title.
  entity: {
    // we are naming the larger entity.
    name: {
      // the name of a function.
      'function': {},
      // the name of a type declaration or class.
      type: {},
      // a tag name.
      tag: {},
      // the name is the name of a section/heading.
      section: {},
    },
    // other entities.
    other: {
      // the superclass/baseclass name.
      'inherited-class': {},
      // the name of an attribute (mainly in tags).
      'attribute-name': {},
    },
  },
  // stuff which is “invalid”.
  invalid+: {
    // illegal, e.g. an ampersand or lower-than character in HTML (which is
    // not part of an entity/tag).
    illegal+: {},
    // for deprecated stuff e.g. using an API function which is deprecated
    // or using styling with strict HTML.
    deprecated+: {},
  },
  // keywords (when these do not fall into the other groups).
  keyword+: {
    // mainly related to flow control like continue, while, return, etc.
    control+: {},
    // operators can either be textual (e.g. or) or be characters.
    operator+: {},
    // other keywords.
    other+: {},
  },
  // this is for markup languages and generally applies to larger subsets
  // of the text.
  markup+: {
    // underlined text.
    underline+: {
      // this is for links, as a convenience this is derived from
      // markup.underline so that if there is no theme rule which
      // specifically targets markup.underline.link then it will inherit
      // the underline style.
      link+: {},
    },
    // bold text (text which is strong and similar should preferably be
    // derived from this name).
    bold+: {},
    // a section header. Optionally provide the heading level as the next
    // element, for example markup.heading.2.html for <h2>…</h2> in HTML.
    heading+: {},
    // italic text (text which is emphasized and similar should preferably
    // be derived from this name).
    italic+: {},
    // list items.
    list+: {
      // numbered list items.
      numbered+: {},
      // unnumbered list items.
      unnumbered+: {},
    },
    // quoted (sometimes block quoted) text.
    quote+: {},
    // text which is verbatim, e.g. code listings. Normally spell checking
    // is disabled for markup.raw.
    raw+: {},
    // other markup constructs.
    other+: {},
  },
  // the meta scope is generally used to markup larger parts of the document.
  // For example the entire line which declares a function would be
  // meta.function and the subsets would be storage.type,
  // entity.name.function, variable.parameter etc. and only the latter would
  // be styled. Sometimes the meta part of the scope will be used only to
  // limit the more general element that is styled, most of the time meta
  // scopes are however used in scope selectors for activation of bundle
  // items. For example in Objective-C there is a meta scope for the
  // interface declaration of a class and the implementation, allowing the
  // same tab-triggers to expand differently, depending on context.
  meta+: {},
  // things relating to “storage”.
  storage+: {
    // the type of something, class, function, int, var, etc.
    type+: {},
    // a storage modifier like static, final, abstract, etc.
    modifier+: {},
  },
  // strings.
  string+: {
    // quoted strings.
    quoted+: {
      // single quoted strings: 'foo'.
      single+: {},
      // double quoted strings: "foo".
      double+: {},
      // triple quoted strings: """Python""".
      triple+: {},
      // other types of quoting: $'shell', %s{...}.
      other+: {},
    },
    // for things like here-docs and here-strings.
    unquoted+: {},
    // strings which are “evaluated”: `date`, $(pwd).
    interpolated+: {},
    // regular expressions: /(\w+)/.
    regexp+: {},
    // other types of strings (should rarely be used).
    other+: {},
  },
  // things provided by a framework or library should be below support.
  support+: {
    // functions provided by the framework/library. For example NSLog in
    // Objective-C is support.function.
    'function'+: {},
    // when the framework/library provides classes.
    class+: {},
    // types provided by the framework/library, this is probably only used
    // for languages derived from C, which has typedef (and struct). Most
    // other languages would introduce new types as classes.
    type+: {},
    // constants (magic values) provided by the framework/library.
    constant+: {},
    // variables provided by the framework/library. For example NSApp in AppKit.
    variable+: {},
    // the above should be exhaustive, but for everything else use support.other.
    other+: {},
  },
  // variables. Not all languages allow easy identification (and thus markup) of these.
  variable: {
    // when the variable is declared as the parameter.
    parameter: {},
    // reserved language variables like this, super, self, etc.
    language: {},
    // other variables, like $some_variables.
    other: {},
  },
};

local theme = {
  comment: { _settings: { foreground: '#546e7a' } },
  punctuation: {
    definition: {
      comment: { _settings: { foreground: '#546e7a' } },
    },
  },
  string: {},
  variable: { _settings: { foreground: '#eeffff' } },
};

local temp = [
  {
    name: 'Variables',
    scope: ['variable', 'string constant.other.placeholder'],
    settings: {
      foreground: '#EEFFFF',
    },
  },
  {
    name: 'Colors',
    scope: ['constant.other.color'],
    settings: {
      foreground: '#ffffff',
    },
  },
  {
    name: 'Invalid',
    scope: ['invalid', 'invalid.illegal'],
    settings: {
      foreground: '#FF5370',
    },
  },
  {
    name: 'Keyword, Storage',
    scope: ['keyword', 'storage.type', 'storage.modifier'],
    settings: {
      foreground: '#C792EA',
    },
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
    settings+: { foreground: '#89DDFF' },

  },
  {
    name: 'Tag',
    scope: [
      'entity.name.tag',
      'meta.tag.sgml',
      'markup.deleted.git_gutter',
    ],
    settings+: { foreground: '#f07178' } +
               {},
  },
  {
    name: 'Function, Special Method',
    scope: ['entity.name.function', 'meta.function-call', 'variable.function', 'support.function', 'keyword.other.special-method'],
    settings: {
      foreground: '#82AAFF',
    },
  },
  {
    name: 'Block Level Variables',
    scope: ['meta.block variable.other'],
    settings: {
      foreground: '#f07178',
    },
  },
  {
    name: 'Other Variable, String Link',
    scope: ['support.other.variable', 'string.other.link'],
    settings: {
      foreground: '#f07178',
    },
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
    settings: {
      foreground: '#F78C6C',
    },
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
    settings: {
      foreground: '#C3E88D',
    },
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
    scope: ['entity.other.attribute-name'],
    settings: {
      foreground: '#C792EA',
    },
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
    settings: {
      fontStyle: 'italic',
      foreground: '#f07178',
    },
  },
  {
    name: 'Markup - Bold',
    scope: ['markup.bold', 'markup.bold string'],
    settings: {
      fontStyle: 'bold',
      foreground: '#f07178',
    },
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
    settings: {
      fontStyle: 'bold',
      foreground: '#f07178',
    },
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
    settings: {
      foreground: '#82AAFF',
    },
  },
  {
    name: 'Markdown - Link Description',
    scope: ['string.other.link.description.title.markdown'],
    settings: {
      foreground: '#C792EA',
    },
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
