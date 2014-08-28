
package Aws::RDS::DescribeDBParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Parameter]', traits => ['Unwrapped'], xmlname => 'Parameter');

}
1;