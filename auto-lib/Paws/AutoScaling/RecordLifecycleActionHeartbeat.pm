
package Paws::AutoScaling::RecordLifecycleActionHeartbeat {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleActionToken => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleHookName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RecordLifecycleActionHeartbeat');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::RecordLifecycleActionHeartbeatAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RecordLifecycleActionHeartbeatResult');
}
1;