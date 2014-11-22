
package Paws::AutoScaling::DescribeAccountLimitsAnswer {
  use Moose;
  with 'Paws::API::ResultParser';
  has MaxNumberOfAutoScalingGroups => (is => 'ro', isa => 'Int');
  has MaxNumberOfLaunchConfigurations => (is => 'ro', isa => 'Int');

}
1;