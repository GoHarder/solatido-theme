local pallet = (import '../pallet.libsonnet');

local gitDecoration = {
  // NOTE: Used for file labels and the SCM viewlet.

  // Color for added Git resources. {default: #81b88b}
  addedResourceForeground: pallet.green.base,

  // Color for renamed or copied Git resources. {default: #73c991}
  renamedResourceForeground: pallet.green.base,

  // Color for untracked Git resources. {default: #73c991}
  untrackedResourceForeground: pallet.green.base,

  // Color for conflicting Git resources. {default: #e4676b}
  conflictingResourceForeground: pallet.red.base,

  // Color for deleted Git resources. {default: #c74e39}
  deletedResourceForeground: pallet.red.base,

  // Color for staged deletions git decorations. {default: #c74e39}
  stageDeletedResourceForeground: pallet.blue.base,

  // Color for modified Git resources. {default: #e2c08d}
  modifiedResourceForeground: pallet.yellow.base,

  // Color for staged modifications git decorations. {default: #e2c08d}
  stageModifiedResourceForeground: pallet.blue.base,

  // Color for ignored Git resources. {default: #8c8c8c}
  ignoredResourceForeground: pallet.mono158,

  // Color for submodule resources. {default: #8db9e2}
  submoduleResourceForeground: pallet.blue.base,
};

{
  'gitDecoration.addedResourceForeground': gitDecoration.addedResourceForeground,
  'gitDecoration.modifiedResourceForeground': gitDecoration.modifiedResourceForeground,
  'gitDecoration.deletedResourceForeground': gitDecoration.deletedResourceForeground,
  'gitDecoration.renamedResourceForeground': gitDecoration.renamedResourceForeground,
  'gitDecoration.stageModifiedResourceForeground': gitDecoration.stageModifiedResourceForeground,
  'gitDecoration.stageDeletedResourceForeground': gitDecoration.stageDeletedResourceForeground,
  'gitDecoration.untrackedResourceForeground': gitDecoration.untrackedResourceForeground,
  'gitDecoration.ignoredResourceForeground': gitDecoration.ignoredResourceForeground,
  'gitDecoration.conflictingResourceForeground': gitDecoration.conflictingResourceForeground,
  'gitDecoration.submoduleResourceForeground': gitDecoration.submoduleResourceForeground,
}
