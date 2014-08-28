
package Aws::AutoScaling::DescribeAutoScalingNotificationTypesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AutoScalingNotificationTypes => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;