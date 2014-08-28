
package Aws::EMR::AddJobFlowStepsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has StepIds => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;
