package Paws::IoT::TopicRuleListItem;
  use Moose;
  has createdAt => (is => 'ro', isa => 'Str');
  has ruleDisabled => (is => 'ro', isa => 'Bool');
  has ruleName => (is => 'ro', isa => 'Str');
  has topicPattern => (is => 'ro', isa => 'Str');
1;
