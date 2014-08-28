
package Aws::RedShift::DescribeHsmConfigurationsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HsmConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::HsmConfiguration]', traits => ['Unwrapped'], xmlname => 'HsmConfiguration');
  has Marker => (is => 'ro', isa => 'Str');

}
1;