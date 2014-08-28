
package Aws::AutoScaling::PutNotificationConfiguration {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has NotificationTypes => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has TopicARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutNotificationConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
