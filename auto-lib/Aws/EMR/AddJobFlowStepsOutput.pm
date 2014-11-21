
package Aws::EMR::AddJobFlowStepsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has StepIds => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;