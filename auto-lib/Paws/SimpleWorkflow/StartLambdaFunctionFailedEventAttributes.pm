package Paws::SimpleWorkflow::StartLambdaFunctionFailedEventAttributes;
  use Moose;
  has cause => (is => 'ro', isa => 'Str');
  has message => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Int');
1;
