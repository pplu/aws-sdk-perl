
package Aws::AutoScaling::PutScalingPolicy {
  use Moose;
  has AdjustmentType => (is => 'ro', isa => 'Str', required => 1);
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Cooldown => (is => 'ro', isa => 'Int');
  has MinAdjustmentStep => (is => 'ro', isa => 'Int');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingAdjustment => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutScalingPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::PutScalingPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PutScalingPolicyResult');
}
1;
  