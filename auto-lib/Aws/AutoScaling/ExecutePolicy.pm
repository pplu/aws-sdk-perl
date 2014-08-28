
package Aws::AutoScaling::ExecutePolicy {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has HonorCooldown => (is => 'ro', isa => 'Bool');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecutePolicy');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
