
package Aws::RedShift::DescribeClusterParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Parameter]', traits => ['Unwrapped'], xmlname => 'Parameter');

}
1;