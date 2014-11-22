
package Paws::OpsWorks::DescribeLoadBasedAutoScalingResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has LoadBasedAutoScalingConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::LoadBasedAutoScalingConfiguration]');

}
1;