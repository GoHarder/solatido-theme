// --------------------------------------------------------------------
// Notification Colors
// Notification toasts slide up from the bottom-right of the workbench.
// Once opened in the Notification Center, they are displayed in a list
// with a header.
// --------------------------------------------------------------------

local pallet = (import '../pallet.libsonnet');

local notificationCenter = {
  // Notification Center border color. {default: null}
  border: pallet.border3,
};

local notificationCenterHeader = {
  // Notification Center header foreground color. {default: null}
  foreground: pallet.focus2,

  // Notification Center header background color. {default: #303031}
  background: pallet.background2,
};

local notificationToast = {
  // Notification toast border color. {default: null}
  border: 'null',  // {theme: #444444}
};

local notifications = {
  // Notification foreground color. {default: #cccccc}
  foreground: 'null',  // {theme: #d0d0d0}

  // Notification background color. {default: #252526}
  background: pallet.background3,

  // Notification border color separating from other notifications in the
  // Notification Center. {default: #303031}
  border: pallet.border2,
};

local notificationLink = {
  // Notification links foreground color. {default: #3794ff}
  foreground: 'null',  // {theme: #50b9ff}
};

local notificationsErrorIcon = {
  // The color used for the notification error icon. {defalut: #f14c4c}
  foreground: pallet.red.base,
};

local notificationsWarningIcon = {
  // The color used for the notification warning icon. {default: #cca700}
  foreground: pallet.yellow.base,
};

local notificationsInfoIcon = {
  // The color used for the notification info icon. {default: #3794ff}
  foreground: pallet.blue.base,
};

{
  'notificationCenter.border': notificationCenter.border,
  'notificationCenterHeader.foreground': notificationCenterHeader.foreground,
  'notificationCenterHeader.background': notificationCenterHeader.background,
  'notificationToast.border': notificationToast.border,
  'notifications.foreground': notifications.foreground,
  'notifications.background': notifications.background,
  'notifications.border': notifications.border,
  'notificationLink.foreground': notificationLink.foreground,
  'notificationsErrorIcon.foreground': notificationsErrorIcon.foreground,
  'notificationsWarningIcon.foreground': notificationsWarningIcon.foreground,
  'notificationsInfoIcon.foreground': notificationsInfoIcon.foreground,
}
