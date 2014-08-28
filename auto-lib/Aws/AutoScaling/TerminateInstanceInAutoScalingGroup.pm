
package Aws::AutoScaling::TerminateInstanceInAutoScalingGroup {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ShouldDecrementDesiredCapacity => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateInstanceInAutoScalingGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::TerminateInstanceInAutoScalingGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'TerminateInstanceInAutoScalingGroupResult');
}
1;
