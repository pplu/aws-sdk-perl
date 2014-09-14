
package Aws::OpsWorks::DescribeTimeBasedAutoScalingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TimeBasedAutoScalingConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::TimeBasedAutoScalingConfiguration]');

}
1;
