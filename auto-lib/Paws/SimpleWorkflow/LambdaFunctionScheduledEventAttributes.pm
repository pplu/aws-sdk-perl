package Paws::SimpleWorkflow::LambdaFunctionScheduledEventAttributes;
  use Moose;
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Int', required => 1);
  has id => (is => 'ro', isa => 'Str', required => 1);
  has input => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has startToCloseTimeout => (is => 'ro', isa => 'Str');
1;
