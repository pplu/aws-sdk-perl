
package Aws::AutoScaling::DeleteLifecycleHook {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleHookName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLifecycleHook');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DeleteLifecycleHookAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLifecycleHookResult');
}
1;