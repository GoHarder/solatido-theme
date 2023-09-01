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
  (import './chat.libsonnet') +
  (import './inline_chat.libsonnet') +
  (import './editor_widget.libsonnet') +
  (import './peek_view.libsonnet') +
  // merge_conflicts
  (import './panel.libsonnet') +
  (import './status_bar.libsonnet') +
  (import './title_bar.libsonnet') +
  (import './menu_bar.libsonnet') +
  (import './command_center.libsonnet') +
  (import './notification.libsonnet') +
  (import './banner.libsonnet') +
  (import './extension.libsonnet') +
  (import './quick_picker.libsonnet') +
  (import './keybinding_label.libsonnet') +
  // keyboard_shortcut_table
  (import './integrated_terminal.libsonnet') +
  (import './debug.libsonnet') +
  (import './testing.libsonnet') +
  (import './welcome_page.libsonnet') +
  (import './source_control.libsonnet') +
  (import './git.libsonnet') +
  (import './settings_editor.libsonnet') +
  (import './breadcrumbs.libsonnet') +
  // snippets
  (import './symbol_icons.libsonnet') +
  (import './debug_icons.libsonnet') +
  // notebook
  // chart
  (import './ports.libsonnet') +
  (import './comments_view.libsonnet');

{
  [key]: sections[key]
  for key in std.objectFields(sections)
  if (sections[key] != 'null')
}
