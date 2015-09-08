package Paws::SimpleWorkflow::ScheduleLambdaFunctionDecisionAttributes;
  use Moose;
  has id => (is => 'ro', isa => 'Str', required => 1);
  has input => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has startToCloseTimeout => (is => 'ro', isa => 'Str');
1;
