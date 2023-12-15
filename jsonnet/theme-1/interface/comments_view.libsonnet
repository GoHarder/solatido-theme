local pallet = (import './_pallet.libsonnet');

local commentsView = {
  // Icon color for resolved comments. {default: #cccccc80}
  resolvedIcon: 'null',  // TODO: Set commentsView.resolvedIcon

  // Icon color for unresolved comments. {default: #007fd4}
  unresolvedIcon: 'null',  // TODO: Set commentsView.unresolvedIcon
};

{
  'commentsView.resolvedIcon': commentsView.resolvedIcon,
  'commentsView.unresolvedIcon': commentsView.unresolvedIcon,
}
