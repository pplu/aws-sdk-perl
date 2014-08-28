
package Aws::SimpleWorkflow::RespondDecisionTaskCompleted {
  use Moose;
  has decisions => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::Decision]');
  has executionContext => (is => 'ro', isa => 'Str');
  has taskToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RespondDecisionTaskCompleted');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;