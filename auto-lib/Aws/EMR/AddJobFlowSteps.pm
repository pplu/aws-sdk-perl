
package Aws::EMR::AddJobFlowSteps {
  use Moose;
  has JobFlowId => (is => 'ro', isa => 'Str', required => 1);
  has Steps => (is => 'ro', isa => 'ArrayRef[Aws::EMR::StepConfig]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddJobFlowSteps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::AddJobFlowStepsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;