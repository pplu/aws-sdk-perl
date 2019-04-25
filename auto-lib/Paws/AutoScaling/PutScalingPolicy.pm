
package Paws::AutoScaling::PutScalingPolicy;
  use Moose;
  has AdjustmentType => (is => 'ro', isa => 'Str');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Cooldown => (is => 'ro', isa => 'Int');
  has EstimatedInstanceWarmup => (is => 'ro', isa => 'Int');
  has MetricAggregationType => (is => 'ro', isa => 'Str');
  has MinAdjustmentMagnitude => (is => 'ro', isa => 'Int');
  has MinAdjustmentStep => (is => 'ro', isa => 'Int');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyType => (is => 'ro', isa => 'Str');
  has ScalingAdjustment => (is => 'ro', isa => 'Int');
  has StepAdjustments => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::StepAdjustment]');
  has TargetTrackingConfiguration => (is => 'ro', isa => 'Paws::AutoScaling::TargetTrackingConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutScalingPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::PolicyARNType');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PutScalingPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::PutScalingPolicy - Arguments for method PutScalingPolicy on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutScalingPolicy on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method PutScalingPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutScalingPolicy.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
   # To add a scaling policy to an Auto Scaling group
   # This example adds the specified policy to the specified Auto Scaling group.
    my $PolicyARNType = $autoscaling->PutScalingPolicy(
      {
        'AdjustmentType'       => 'ChangeInCapacity',
        'AutoScalingGroupName' => 'my-auto-scaling-group',
        'PolicyName'           => 'ScaleIn',
        'ScalingAdjustment'    => -1
      }
    );

    # Results:
    my $PolicyARN = $PolicyARNType->PolicyARN;

    # Returns a L<Paws::AutoScaling::PolicyARNType> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/PutScalingPolicy>

=head1 ATTRIBUTES


=head2 AdjustmentType => Str

The adjustment type. The valid values are C<ChangeInCapacity>,
C<ExactCapacity>, and C<PercentChangeInCapacity>.

This parameter is supported if the policy type is C<SimpleScaling> or
C<StepScaling>.

For more information, see Dynamic Scaling
(http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scale-based-on-demand.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 Cooldown => Int

The amount of time, in seconds, after a scaling activity completes and
before the next scaling activity can start. If this parameter is not
specified, the default cooldown period for the group applies.

This parameter is supported if the policy type is C<SimpleScaling>.

For more information, see Scaling Cooldowns
(http://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html) in
the I<Amazon EC2 Auto Scaling User Guide>.



=head2 EstimatedInstanceWarmup => Int

The estimated time, in seconds, until a newly launched instance can
contribute to the CloudWatch metrics. The default is to use the value
specified for the default cooldown period for the group.

This parameter is supported if the policy type is C<StepScaling> or
C<TargetTrackingScaling>.



=head2 MetricAggregationType => Str

The aggregation type for the CloudWatch metrics. The valid values are
C<Minimum>, C<Maximum>, and C<Average>. If the aggregation type is
null, the value is treated as C<Average>.

This parameter is supported if the policy type is C<StepScaling>.



=head2 MinAdjustmentMagnitude => Int

The minimum number of instances to scale. If the value of
C<AdjustmentType> is C<PercentChangeInCapacity>, the scaling policy
changes the C<DesiredCapacity> of the Auto Scaling group by at least
this many instances. Otherwise, the error is C<ValidationError>.

This parameter is supported if the policy type is C<SimpleScaling> or
C<StepScaling>.



=head2 MinAdjustmentStep => Int

Available for backward compatibility. Use C<MinAdjustmentMagnitude>
instead.



=head2 B<REQUIRED> PolicyName => Str

The name of the policy.



=head2 PolicyType => Str

The policy type. The valid values are C<SimpleScaling>, C<StepScaling>,
and C<TargetTrackingScaling>. If the policy type is null, the value is
treated as C<SimpleScaling>.



=head2 ScalingAdjustment => Int

The amount by which to scale, based on the specified adjustment type. A
positive value adds to the current capacity while a negative number
removes from the current capacity.

This parameter is required if the policy type is C<SimpleScaling> and
not supported otherwise.



=head2 StepAdjustments => ArrayRef[L<Paws::AutoScaling::StepAdjustment>]

A set of adjustments that enable you to scale based on the size of the
alarm breach.

This parameter is required if the policy type is C<StepScaling> and not
supported otherwise.



=head2 TargetTrackingConfiguration => L<Paws::AutoScaling::TargetTrackingConfiguration>

A target tracking policy.

This parameter is required if the policy type is
C<TargetTrackingScaling> and not supported otherwise.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutScalingPolicy in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

