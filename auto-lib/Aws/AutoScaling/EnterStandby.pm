
package Aws::AutoScaling::EnterStandby {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has ShouldDecrementDesiredCapacity => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnterStandby');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::EnterStandbyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'EnterStandbyResult');
}
1;
