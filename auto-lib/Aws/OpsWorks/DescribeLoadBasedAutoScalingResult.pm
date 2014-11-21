
package Aws::OpsWorks::DescribeLoadBasedAutoScalingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LoadBasedAutoScalingConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::LoadBasedAutoScalingConfiguration]');

}
1;