package Aws::AutoScaling::NotificationConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has NotificationType => (is => 'ro', isa => 'Str');
  has TopicARN => (is => 'ro', isa => 'Str');
}
1
