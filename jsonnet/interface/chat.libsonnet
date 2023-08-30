local pallet = (import './_pallet.libsonnet');

local chat = {
  // The background color of a chat request. {default: #ffffff08}
  requestBackground: 'null',  // TODO: Set chat.requestBackground

  // The border color of a chat request. {default: #ffffff1a}
  requestBorder: 'null',  // TODO: Set chat.requestBorder
};

{
  'chat.requestBackground': chat.requestBackground,
  'chat.requestBorder': chat.requestBorder,
}
