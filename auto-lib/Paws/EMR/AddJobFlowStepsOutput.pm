
package Paws::EMR::AddJobFlowStepsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has StepIds => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;