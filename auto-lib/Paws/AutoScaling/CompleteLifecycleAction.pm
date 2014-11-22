
package Paws::AutoScaling::CompleteLifecycleAction {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleActionResult => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleActionToken => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleHookName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CompleteLifecycleAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::CompleteLifecycleActionAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CompleteLifecycleActionResult');
}
1;