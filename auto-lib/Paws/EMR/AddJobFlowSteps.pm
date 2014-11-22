
package Paws::EMR::AddJobFlowSteps {
  use Moose;
  has JobFlowId => (is => 'ro', isa => 'Str', required => 1);
  has Steps => (is => 'ro', isa => 'ArrayRef[Paws::EMR::StepConfig]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddJobFlowSteps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::AddJobFlowStepsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;