
package Paws::AutoScaling::PutScalingPolicy;
  use Moose;
  has AdjustmentType => (is => 'ro', isa => 'Str');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Cooldown => (is => 'ro', isa => 'Int');
  has Enabled => (is => 'ro', isa => 'Bool');
  has EstimatedInstanceWarmup => (is => 'ro', isa => 'Int');
  has MetricAggregationType => (is => 'ro', isa => 'Str');
  has MinAdjustmentMagnitude => (is => 'ro', isa => 'Int');
  has MinAdjustmentStep => (is => 'ro', isa => 'Int');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyType => (is => 'ro', isa => 'Str');
  has PredictiveScalingConfiguration => (is => 'ro', isa => 'Paws::AutoScaling::PredictiveScalingConfiguration');
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
      'AutoScalingGroupName'        => 'my-auto-scaling-group',
      'PolicyName'                  => 'alb1000-target-tracking-scaling-policy',
      'PolicyType'                  => 'TargetTrackingScaling',
      'TargetTrackingConfiguration' => {
        'PredefinedMetricSpecification' => {
          'PredefinedMetricType' => 'ALBRequestCountPerTarget',
          'ResourceLabel' =>
'app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff'
        },
        'TargetValue' => 1000
      }
    );

    # Results:
    my $Alarms    = $PolicyARNType->Alarms;
    my $PolicyARN = $PolicyARNType->PolicyARN;

    # Returns a L<Paws::AutoScaling::PolicyARNType> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/PutScalingPolicy>

=head1 ATTRIBUTES


=head2 AdjustmentType => Str

Specifies how the scaling adjustment is interpreted (for example, an
absolute number or a percentage). The valid values are
C<ChangeInCapacity>, C<ExactCapacity>, and C<PercentChangeInCapacity>.

Required if the policy type is C<StepScaling> or C<SimpleScaling>. For
more information, see Scaling adjustment types
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 Cooldown => Int

The duration of the policy's cooldown period, in seconds. When a
cooldown period is specified here, it overrides the default cooldown
period defined for the Auto Scaling group.

Valid only if the policy type is C<SimpleScaling>. For more
information, see Scaling cooldowns for Amazon EC2 Auto Scaling
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 Enabled => Bool

Indicates whether the scaling policy is enabled or disabled. The
default is enabled. For more information, see Disabling a scaling
policy for an Auto Scaling group
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enable-disable-scaling-policy.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 EstimatedInstanceWarmup => Int

The estimated time, in seconds, until a newly launched instance can
contribute to the CloudWatch metrics. If not provided, the default is
to use the value from the default cooldown period for the Auto Scaling
group.

Valid only if the policy type is C<TargetTrackingScaling> or
C<StepScaling>.



=head2 MetricAggregationType => Str

The aggregation type for the CloudWatch metrics. The valid values are
C<Minimum>, C<Maximum>, and C<Average>. If the aggregation type is
null, the value is treated as C<Average>.

Valid only if the policy type is C<StepScaling>.



=head2 MinAdjustmentMagnitude => Int

The minimum value to scale by when the adjustment type is
C<PercentChangeInCapacity>. For example, suppose that you create a step
scaling policy to scale out an Auto Scaling group by 25 percent and you
specify a C<MinAdjustmentMagnitude> of 2. If the group has 4 instances
and the scaling policy is performed, 25 percent of 4 is 1. However,
because you specified a C<MinAdjustmentMagnitude> of 2, Amazon EC2 Auto
Scaling scales out the group by 2 instances.

Valid only if the policy type is C<StepScaling> or C<SimpleScaling>.
For more information, see Scaling adjustment types
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment)
in the I<Amazon EC2 Auto Scaling User Guide>.

Some Auto Scaling groups use instance weights. In this case, set the
C<MinAdjustmentMagnitude> to a value that is at least as large as your
largest instance weight.



=head2 MinAdjustmentStep => Int

Available for backward compatibility. Use C<MinAdjustmentMagnitude>
instead.



=head2 B<REQUIRED> PolicyName => Str

The name of the policy.



=head2 PolicyType => Str

One of the following policy types:

=over

=item *

C<TargetTrackingScaling>

=item *

C<StepScaling>

=item *

C<SimpleScaling> (default)

=item *

C<PredictiveScaling>

=back




=head2 PredictiveScalingConfiguration => L<Paws::AutoScaling::PredictiveScalingConfiguration>

A predictive scaling policy. Provides support for only predefined
metrics.

Predictive scaling works with CPU utilization, network in/out, and the
Application Load Balancer request count.

For more information, see PredictiveScalingConfiguration
(https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PredictiveScalingConfiguration.html)
in the I<Amazon EC2 Auto Scaling API Reference>.

Required if the policy type is C<PredictiveScaling>.



=head2 ScalingAdjustment => Int

The amount by which to scale, based on the specified adjustment type. A
positive value adds to the current capacity while a negative number
removes from the current capacity. For exact capacity, you must specify
a positive value.

Required if the policy type is C<SimpleScaling>. (Not used with any
other policy type.)



=head2 StepAdjustments => ArrayRef[L<Paws::AutoScaling::StepAdjustment>]

A set of adjustments that enable you to scale based on the size of the
alarm breach.

Required if the policy type is C<StepScaling>. (Not used with any other
policy type.)



=head2 TargetTrackingConfiguration => L<Paws::AutoScaling::TargetTrackingConfiguration>

A target tracking scaling policy. Provides support for predefined or
customized metrics.

The following predefined metrics are available:

=over

=item *

C<ASGAverageCPUUtilization>

=item *

C<ASGAverageNetworkIn>

=item *

C<ASGAverageNetworkOut>

=item *

C<ALBRequestCountPerTarget>

=back

If you specify C<ALBRequestCountPerTarget> for the metric, you must
specify the C<ResourceLabel> parameter with the
C<PredefinedMetricSpecification>.

For more information, see TargetTrackingConfiguration
(https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_TargetTrackingConfiguration.html)
in the I<Amazon EC2 Auto Scaling API Reference>.

Required if the policy type is C<TargetTrackingScaling>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutScalingPolicy in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

