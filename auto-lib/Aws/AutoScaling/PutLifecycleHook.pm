
package Aws::AutoScaling::PutLifecycleHook {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has DefaultResult => (is => 'ro', isa => 'Str');
  has HeartbeatTimeout => (is => 'ro', isa => 'Int');
  has LifecycleHookName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleTransition => (is => 'ro', isa => 'Str');
  has NotificationMetadata => (is => 'ro', isa => 'Str');
  has NotificationTargetARN => (is => 'ro', isa => 'Str');
  has RoleARN => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutLifecycleHook');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::PutLifecycleHookResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PutLifecycleHookResult');
}
1;
  