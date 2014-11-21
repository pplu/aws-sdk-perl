
package Aws::AutoScaling::DescribeAutoScalingNotificationTypesAnswer {
  use Moose;
  with 'AWS::API::ResultParser';
  has AutoScalingNotificationTypes => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;