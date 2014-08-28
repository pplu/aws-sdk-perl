
package Aws::AutoScaling::ExitStandby {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExitStandby');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::ExitStandbyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ExitStandbyResult');
}
1;
  