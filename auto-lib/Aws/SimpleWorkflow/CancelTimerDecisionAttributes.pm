package Aws::SimpleWorkflow::CancelTimerDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}
1
