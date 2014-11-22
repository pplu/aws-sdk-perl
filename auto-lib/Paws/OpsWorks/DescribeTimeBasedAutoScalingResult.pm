
package Paws::OpsWorks::DescribeTimeBasedAutoScalingResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has TimeBasedAutoScalingConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::TimeBasedAutoScalingConfiguration]');

}
1;