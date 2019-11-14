
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
      'AdjustmentType'       => 'ChangeInCapacity',
      'AutoScalingGroupName' => 'my-auto-scaling-group',
      'PolicyName'           => 'ScaleIn',
      'ScalingAdjustment'    => -1
    );

    # Results:
    my $PolicyARN = $PolicyARNType->PolicyARN;

    # Returns a L<Paws::AutoScaling::PolicyARNType> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/PutScalingPolicy>

=head1 ATTRIBUTES


=head2 AdjustmentType => Str

Specifies whether the C<ScalingAdjustment> parameter is an absolute
number or a percentage of the current capacity. The valid values are
C<ChangeInCapacity>, C<ExactCapacity>, and C<PercentChangeInCapacity>.

Valid only if the policy type is C<StepScaling> or C<SimpleScaling>.
For more information, see Scaling Adjustment Types
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 Cooldown => Int

The amount of time, in seconds, after a scaling activity completes
before any further dynamic scaling activities can start. If this
parameter is not specified, the default cooldown period for the group
applies.

Valid only if the policy type is C<SimpleScaling>. For more
information, see Scaling Cooldowns
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 EstimatedInstanceWarmup => Int

The estimated time, in seconds, until a newly launched instance can
contribute to the CloudWatch metrics. The default is to use the value
specified for the default cooldown period for the group.

Valid only if the policy type is C<StepScaling> or
C<TargetTrackingScaling>.



=head2 MetricAggregationType => Str

The aggregation type for the CloudWatch metrics. The valid values are
C<Minimum>, C<Maximum>, and C<Average>. If the aggregation type is
null, the value is treated as C<Average>.

Valid only if the policy type is C<StepScaling>.



=head2 MinAdjustmentMagnitude => Int

The minimum number of instances to scale. If the value of
C<AdjustmentType> is C<PercentChangeInCapacity>, the scaling policy
changes the C<DesiredCapacity> of the Auto Scaling group by at least
this many instances. Otherwise, the error is C<ValidationError>.

This property replaces the C<MinAdjustmentStep> property. For example,
suppose that you create a step scaling policy to scale out an Auto
Scaling group by 25 percent and you specify a C<MinAdjustmentMagnitude>
of 2. If the group has 4 instances and the scaling policy is performed,
25 percent of 4 is 1. However, because you specified a
C<MinAdjustmentMagnitude> of 2, Amazon EC2 Auto Scaling scales out the
group by 2 instances.

Valid only if the policy type is C<SimpleScaling> or C<StepScaling>.



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

The amount by which a simple scaling policy scales the Auto Scaling
group in response to an alarm breach. The adjustment is based on the
value that you specified in the C<AdjustmentType> parameter (either an
absolute number or a percentage). A positive value adds to the current
capacity and a negative value subtracts from the current capacity. For
exact capacity, you must specify a positive value.

Conditional: If you specify C<SimpleScaling> for the policy type, you
must specify this parameter. (Not used with any other policy type.)



=head2 StepAdjustments => ArrayRef[L<Paws::AutoScaling::StepAdjustment>]

A set of adjustments that enable you to scale based on the size of the
alarm breach.

Conditional: If you specify C<StepScaling> for the policy type, you
must specify this parameter. (Not used with any other policy type.)



=head2 TargetTrackingConfiguration => L<Paws::AutoScaling::TargetTrackingConfiguration>

A target tracking scaling policy. Includes support for predefined or
customized metrics.

For more information, see TargetTrackingConfiguration
(https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_TargetTrackingConfiguration.html)
in the I<Amazon EC2 Auto Scaling API Reference>.

Conditional: If you specify C<TargetTrackingScaling> for the policy
type, you must specify this parameter. (Not used with any other policy
type.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutScalingPolicy in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

