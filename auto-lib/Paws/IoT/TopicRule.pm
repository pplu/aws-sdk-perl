package Paws::IoT::TopicRule;
  use Moose;
  has actions => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Action]');
  has createdAt => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Str');
  has ruleDisabled => (is => 'ro', isa => 'Bool');
  has ruleName => (is => 'ro', isa => 'Str');
  has sql => (is => 'ro', isa => 'Str');
1;
