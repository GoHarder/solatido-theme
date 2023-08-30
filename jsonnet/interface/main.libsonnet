local sections =
  (import './base_colors.libsonnet') +
  (import './window_border.libsonnet') +
  (import './text.libsonnet') +
  (import './action_colors.libsonnet') +
  (import './button_control.libsonnet') +
  (import './dropdown_control.libsonnet') +
  (import './input_control.libsonnet') +
  (import './scrollbar_control.libsonnet') +
  (import './badge.libsonnet') +
  (import './progressbar.libsonnet') +
  (import './lists_and_trees.libsonnet') +
  (import './activity_bar.libsonnet') +
  (import './profiles.libsonnet') +
  (import './side_bar.libsonnet') +
  (import './minimap.libsonnet') +
  (import './editor_groups_and_tabs.libsonnet') +
  (import './editor.libsonnet') +
  (import './diff_editor.libsonnet') +
  // chat
  // inline_chat
  (import './editor_widget.libsonnet') +
  // peek_view
  // merge_conflicts
  // pannel
  (import './status_bar.libsonnet') +
  (import './title_bar.libsonnet') +
  (import './menu_bar.libsonnet') +
  (import './command_center.libsonnet') +
  (import './notification.libsonnet') +
  // banner
  // extension
  (import './quick_picker.libsonnet') +
  // keybinding_label
  // keyboard_shortcut_table
  // integrated_terminal
  (import './debug.libsonnet') +
  // testing
  // welcome_page
  // source_control
  (import './git.libsonnet') +
  // settings_editor
  (import './breadcrumbs.libsonnet') +
  // snippets
  // symbol_icons
  // debug_icons
  // notebook
  // chart
  (import './ports.libsonnet');
// comments_view

{
  [key]: sections[key]
  for key in std.objectFields(sections)
  if (sections[key] != 'null')
} +
{
  'panel.background': '#121212',
  'terminal.background': '#080808',
}
