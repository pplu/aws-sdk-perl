package Paws::AutoScaling::ScalingPolicy;
  use Moose;
  has AdjustmentType => (is => 'ro', isa => 'Str');
  has Alarms => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::Alarm]');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has Cooldown => (is => 'ro', isa => 'Int');
  has EstimatedInstanceWarmup => (is => 'ro', isa => 'Int');
  has MetricAggregationType => (is => 'ro', isa => 'Str');
  has MinAdjustmentMagnitude => (is => 'ro', isa => 'Int');
  has MinAdjustmentStep => (is => 'ro', isa => 'Int');
  has PolicyARN => (is => 'ro', isa => 'Str');
  has PolicyName => (is => 'ro', isa => 'Str');
  has PolicyType => (is => 'ro', isa => 'Str');
  has ScalingAdjustment => (is => 'ro', isa => 'Int');
  has StepAdjustments => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::StepAdjustment]');
  has TargetTrackingConfiguration => (is => 'ro', isa => 'Paws::AutoScaling::TargetTrackingConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::ScalingPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::ScalingPolicy object:

  $service_obj->Method(Att1 => { AdjustmentType => $value, ..., TargetTrackingConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::ScalingPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->AdjustmentType

=head1 DESCRIPTION

Describes a scaling policy.

=head1 ATTRIBUTES


=head2 AdjustmentType => Str

  The adjustment type, which specifies how C<ScalingAdjustment> is
interpreted. Valid values are C<ChangeInCapacity>, C<ExactCapacity>,
and C<PercentChangeInCapacity>.


=head2 Alarms => ArrayRef[L<Paws::AutoScaling::Alarm>]

  The CloudWatch alarms related to the policy.


=head2 AutoScalingGroupName => Str

  The name of the Auto Scaling group.


=head2 Cooldown => Int

  The amount of time, in seconds, after a scaling activity completes
before any further dynamic scaling activities can start.


=head2 EstimatedInstanceWarmup => Int

  The estimated time, in seconds, until a newly launched instance can
contribute to the CloudWatch metrics.


=head2 MetricAggregationType => Str

  The aggregation type for the CloudWatch metrics. Valid values are
C<Minimum>, C<Maximum>, and C<Average>.


=head2 MinAdjustmentMagnitude => Int

  The minimum number of instances to scale. If the value of
C<AdjustmentType> is C<PercentChangeInCapacity>, the scaling policy
changes the C<DesiredCapacity> of the Auto Scaling group by at least
this many instances. Otherwise, the error is C<ValidationError>.


=head2 MinAdjustmentStep => Int

  Available for backward compatibility. Use C<MinAdjustmentMagnitude>
instead.


=head2 PolicyARN => Str

  The Amazon Resource Name (ARN) of the policy.


=head2 PolicyName => Str

  The name of the scaling policy.


=head2 PolicyType => Str

  The policy type. Valid values are C<SimpleScaling> and C<StepScaling>.


=head2 ScalingAdjustment => Int

  The amount by which to scale, based on the specified adjustment type. A
positive value adds to the current capacity while a negative number
removes from the current capacity.


=head2 StepAdjustments => ArrayRef[L<Paws::AutoScaling::StepAdjustment>]

  A set of adjustments that enable you to scale based on the size of the
alarm breach.


=head2 TargetTrackingConfiguration => L<Paws::AutoScaling::TargetTrackingConfiguration>

  A target tracking policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

