package Paws::ApplicationAutoScaling::StepScalingPolicyConfiguration;
  use Moose;
  has AdjustmentType => (is => 'ro', isa => 'Str');
  has Cooldown => (is => 'ro', isa => 'Int');
  has MetricAggregationType => (is => 'ro', isa => 'Str');
  has MinAdjustmentMagnitude => (is => 'ro', isa => 'Int');
  has StepAdjustments => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationAutoScaling::StepAdjustment]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::StepScalingPolicyConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationAutoScaling::StepScalingPolicyConfiguration object:

  $service_obj->Method(Att1 => { AdjustmentType => $value, ..., StepAdjustments => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationAutoScaling::StepScalingPolicyConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AdjustmentType

=head1 DESCRIPTION

Represents a step scaling policy configuration to use with Application
Auto Scaling.

=head1 ATTRIBUTES


=head2 AdjustmentType => Str

  The adjustment type, which specifies how the C<ScalingAdjustment>
parameter in a StepAdjustment is interpreted.


=head2 Cooldown => Int

  The amount of time, in seconds, after a scaling activity completes
where previous trigger-related scaling activities can influence future
scaling events.

For scale out policies, while the cooldown period is in effect, the
capacity that has been added by the previous scale out event that
initiated the cooldown is calculated as part of the desired capacity
for the next scale out. The intention is to continuously (but not
excessively) scale out. For example, an alarm triggers a step scaling
policy to scale out an Amazon ECS service by 2 tasks, the scaling
activity completes successfully, and a cooldown period of 5 minutes
starts. During the Cooldown period, if the alarm triggers the same
policy again but at a more aggressive step adjustment to scale out the
service by 3 tasks, the 2 tasks that were added in the previous scale
out event are considered part of that capacity and only 1 additional
task is added to the desired count.

For scale in policies, the cooldown period is used to block subsequent
scale in requests until it has expired. The intention is to scale in
conservatively to protect your application's availability. However, if
another alarm triggers a scale out policy during the cooldown period
after a scale-in, Application Auto Scaling scales out your scalable
target immediately.


=head2 MetricAggregationType => Str

  The aggregation type for the CloudWatch metrics. Valid values are
C<Minimum>, C<Maximum>, and C<Average>.


=head2 MinAdjustmentMagnitude => Int

  The minimum number to adjust your scalable dimension as a result of a
scaling activity. If the adjustment type is C<PercentChangeInCapacity>,
the scaling policy changes the scalable dimension of the scalable
target by this amount.


=head2 StepAdjustments => ArrayRef[L<Paws::ApplicationAutoScaling::StepAdjustment>]

  A set of adjustments that enable you to scale based on the size of the
alarm breach.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

