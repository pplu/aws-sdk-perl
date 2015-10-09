package Paws::IoT::TopicRulePayload;
  use Moose;
  has actions => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Action]', required => 1);
  has description => (is => 'ro', isa => 'Str');
  has ruleDisabled => (is => 'ro', isa => 'Bool');
  has sql => (is => 'ro', isa => 'Str', required => 1);
1;
