
package Paws::AutoScaling::DescribeAutoScalingNotificationTypesAnswer {
  use Moose;
  with 'Paws::API::ResultParser';
  has AutoScalingNotificationTypes => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;