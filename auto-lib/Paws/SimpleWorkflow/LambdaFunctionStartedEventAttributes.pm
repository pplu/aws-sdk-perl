package Paws::SimpleWorkflow::LambdaFunctionStartedEventAttributes {
  use Moose;
  has scheduledEventId => (is => 'ro', isa => 'Int', required => 1);
}
1;
