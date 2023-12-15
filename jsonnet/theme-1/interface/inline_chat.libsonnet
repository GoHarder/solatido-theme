local pallet = (import '../pallet.libsonnet');

local inlineChat = {
  // Background color of the interactive editor widget. {default: #252526}
  background: 'null',  // TODO: Set inlineChat.background

  // Border color of the interactive editor widget. {default: #454545}
  border: 'null',  // TODO: Set inlineChat.border

  // Shadow color of the interactive editor widget. {default: #0000005c}
  shadow: 'null',  // TODO: Set inlineChat.shadow

  // Background highlighting of the current interactive region. Must be
  // transparent. {default: #264f7840}
  regionHighlight: 'null',  // TODO: Set inlineChat.regionHighlight
};

local inlineChatInput = {
  // Border color of the interactive editor input. {default: #454545}
  border: 'null',  // TODO: Set inlineChatInput.border

  // Border color of the interactive editor input when focused.
  // {default: #007fd4}
  focusBorder: 'null',  // TODO: Set inlineChatInput.focusBorder

  // Foreground color of the interactive editor input placeholder.
  // {default: #cccccc80}
  placeholderForeground: 'null',  // TODO: Set inlineChatInput.placeholderForeground

  // Background color of the interactive editor input. {default: #3c3c3c}
  background: 'null',  // TODO: Set inlineChatInput.background
};

local inlineChatDiff = {
  // Background color of inserted text in the interactive editor input.
  // {default: #9ccc2c1a}
  inserted: 'null',  // TODO: Set inlineChatDiff.inserted

  // Background color of removed text in the interactive editor input.
  // {default: #ff00001a}
  removed: 'null',  // TODO: Set inlineChatDiff.removed
};

{
  'inlineChat.background': inlineChat.background,
  'inlineChat.border': inlineChat.border,
  'inlineChat.shadow': inlineChat.shadow,
  'inlineChat.regionHighlight': inlineChat.regionHighlight,
  'inlineChatInput.border': inlineChatInput.border,
  'inlineChatInput.focusBorder': inlineChatInput.focusBorder,
  'inlineChatInput.placeholderForeground': inlineChatInput.placeholderForeground,
  'inlineChatInput.background': inlineChatInput.background,
  'inlineChatDiff.inserted': inlineChatDiff.inserted,
  'inlineChatDiff.removed': inlineChatDiff.removed,
}
