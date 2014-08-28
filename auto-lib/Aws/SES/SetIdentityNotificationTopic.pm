
package Aws::SES::SetIdentityNotificationTopic {
  use Moose;
  has Identity => (is => 'ro', isa => 'Str', required => 1);
  has NotificationType => (is => 'ro', isa => 'Str', required => 1);
  has SnsTopic => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetIdentityNotificationTopic');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::SetIdentityNotificationTopicResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetIdentityNotificationTopicResult');
}
1;
