
package Aws::AutoScaling::DescribeAutoScalingNotificationTypes {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingNotificationTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeAutoScalingNotificationTypesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingNotificationTypesResult');
}
1;
  