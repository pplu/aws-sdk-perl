
package Aws::EMR::ListStepsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Steps => (is => 'ro', isa => 'ArrayRef[Aws::EMR::StepSummary]');

}
1;