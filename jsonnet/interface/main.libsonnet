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
  // editor_widget
  // peek_view
  // merge_conflicts
  // pannel
  (import './status_bar.libsonnet');
// title_bar
// menu_bar
// command_center
// notification
// banner
// extension
// quick_picker
// keybinding_label
// keyboard_shortcut_table
// integrated_terminal
// debug
// testing
// welcome_page
// source_control
// git
// settings_editor
// breadcrumbs
// snippets
// symbol_icons
// debug_icons
// notebook
// chart
// ports
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
