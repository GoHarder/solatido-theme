// -------------------------------------------------------------------
// Symbol Icons colors
// The theme colors for symbol icons that appears in the Outline view,
// breadcrumb navigation, and suggest widget:
// -------------------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local symbolIcon = {
  // The foreground color for array symbols. {default: #cccccc}
  arrayForeground: 'null',  // TODO: Set symbolIcon.arrayForeground

  // The foreground color for boolean symbols. {default: #cccccc}
  booleanForeground: 'null',  // TODO: Set symbolIcon.booleanForeground

  // The foreground color for class symbols. {default: #ee9d28}
  classForeground: pallet.yellow.base,

  // The foreground color for color symbols. {default: #cccccc}
  colorForeground: 'null',  // TODO: Set symbolIcon.colorForeground

  // The foreground color for constant symbols. {default: #cccccc}
  constantForeground: 'null',  // TODO: Set symbolIcon.constantForeground

  // The foreground color for constructor symbols. {default: #b180d7}
  constructorForeground: pallet.magenta.base,

  // The foreground color for enumerator symbols. {default: #ee9d28}
  enumeratorForeground: pallet.yellow.base,

  // The foreground color for enumerator member symbols. {default: #75beff}
  enumeratorMemberForeground: pallet.blue.base,

  // The foreground color for event symbols. {default: #ee9d28}
  eventForeground: pallet.yellow.base,

  // The foreground color for field symbols. {default: #75beff}
  fieldForeground: pallet.blue.base,

  // The foreground color for file symbols. {default: #cccccc}
  fileForeground: 'null',  // TODO: Set symbolIcon.fileForeground

  // The foreground color for folder symbols. {default: #cccccc}
  folderForeground: 'null',  // TODO: Set symbolIcon.folderForeground

  // The foreground color for function symbols. {default: #b180d7}
  functionForeground: pallet.magenta.base,

  // The foreground color for interface symbols. {default: #75beff}
  interfaceForeground: pallet.blue.base,

  // The foreground color for key symbols. {default: #cccccc}
  keyForeground: 'null',  // TODO: Set symbolIcon.keyForeground

  // The foreground color for keyword symbols. {default: #cccccc}
  keywordForeground: 'null',  // TODO: Set symbolIcon.keywordForeground

  // The foreground color for method symbols. {default: #b180d7}
  methodForeground: pallet.magenta.base,

  // The foreground color for module symbols. {default: #cccccc}
  moduleForeground: 'null',  // TODO: Set symbolIcon.moduleForeground

  // The foreground color for namespace symbols. {default: #cccccc}
  namespaceForeground: 'null',  // TODO: Set symbolIcon.namespaceForeground

  // The foreground color for null symbols. {default: #cccccc}
  nullForeground: 'null',  // TODO: Set symbolIcon.nullForeground

  // The foreground color for number symbols. {default: #cccccc}
  numberForeground: 'null',  // TODO: Set symbolIcon.numberForeground

  // The foreground color for object symbols. {default: #cccccc}
  objectForeground: 'null',  // TODO: Set symbolIcon.objectForeground

  // The foreground color for operator symbols. {default: #cccccc}
  operatorForeground: 'null',  // TODO: Set symbolIcon.operatorForeground

  // The foreground color for package symbols. {default: #cccccc}
  packageForeground: 'null',  // TODO: Set symbolIcon.packageForeground

  // The foreground color for property symbols. {default: #cccccc}
  propertyForeground: 'null',  // TODO: Set symbolIcon.propertyForeground

  // The foreground color for reference symbols. {default: #cccccc}
  referenceForeground: 'null',  // TODO: Set symbolIcon.referenceForeground

  // The foreground color for snippet symbols. {default: #cccccc}
  snippetForeground: 'null',  // TODO: Set symbolIcon.snippetForeground

  // The foreground color for string symbols. {default: #cccccc}
  stringForeground: 'null',  // TODO: Set symbolIcon.stringForeground

  // The foreground color for struct symbols. {default: #cccccc}
  structForeground: 'null',  // TODO: Set symbolIcon.structForeground

  // The foreground color for text symbols. {default: #cccccc}
  textForeground: 'null',  // TODO: Set symbolIcon.textForeground

  // The foreground color for type parameter symbols. {default: #cccccc}
  typeParameterForeground: 'null',  // TODO: Set symbolIcon.typeParameterForeground

  // The foreground color for unit symbols. {default: #cccccc}
  unitForeground: 'null',  // TODO: Set symbolIcon.unitForeground

  // The foreground color for variable symbols. {default: #75beff}
  variableForeground: pallet.blue.base,
};

{
  'symbolIcon.arrayForeground': symbolIcon.arrayForeground,
  'symbolIcon.booleanForeground': symbolIcon.booleanForeground,
  'symbolIcon.classForeground': symbolIcon.classForeground,
  'symbolIcon.colorForeground': symbolIcon.colorForeground,
  'symbolIcon.constantForeground': symbolIcon.constantForeground,
  'symbolIcon.constructorForeground': symbolIcon.constructorForeground,
  'symbolIcon.enumeratorForeground': symbolIcon.enumeratorForeground,
  'symbolIcon.enumeratorMemberForeground': symbolIcon.enumeratorMemberForeground,
  'symbolIcon.eventForeground': symbolIcon.eventForeground,
  'symbolIcon.fieldForeground': symbolIcon.fieldForeground,
  'symbolIcon.fileForeground': symbolIcon.fileForeground,
  'symbolIcon.folderForeground': symbolIcon.folderForeground,
  'symbolIcon.functionForeground': symbolIcon.functionForeground,
  'symbolIcon.interfaceForeground': symbolIcon.interfaceForeground,
  'symbolIcon.keyForeground': symbolIcon.keyForeground,
  'symbolIcon.keywordForeground': symbolIcon.keywordForeground,
  'symbolIcon.methodForeground': symbolIcon.methodForeground,
  'symbolIcon.moduleForeground': symbolIcon.moduleForeground,
  'symbolIcon.namespaceForeground': symbolIcon.namespaceForeground,
  'symbolIcon.nullForeground': symbolIcon.nullForeground,
  'symbolIcon.numberForeground': symbolIcon.numberForeground,
  'symbolIcon.objectForeground': symbolIcon.objectForeground,
  'symbolIcon.operatorForeground': symbolIcon.operatorForeground,
  'symbolIcon.packageForeground': symbolIcon.packageForeground,
  'symbolIcon.propertyForeground': symbolIcon.propertyForeground,
  'symbolIcon.referenceForeground': symbolIcon.referenceForeground,
  'symbolIcon.snippetForeground': symbolIcon.snippetForeground,
  'symbolIcon.stringForeground': symbolIcon.stringForeground,
  'symbolIcon.structForeground': symbolIcon.structForeground,
  'symbolIcon.textForeground': symbolIcon.textForeground,
  'symbolIcon.typeParameterForeground': symbolIcon.typeParameterForeground,
  'symbolIcon.unitForeground': symbolIcon.unitForeground,
  'symbolIcon.variableForeground': symbolIcon.variableForeground,
}
