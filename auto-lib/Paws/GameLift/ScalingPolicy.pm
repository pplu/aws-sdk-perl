package Paws::GameLift::ScalingPolicy;
  use Moose;
  has ComparisonOperator => (is => 'ro', isa => 'Str');
  has EvaluationPeriods => (is => 'ro', isa => 'Int');
  has FleetId => (is => 'ro', isa => 'Str');
  has MetricName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has PolicyType => (is => 'ro', isa => 'Str');
  has ScalingAdjustment => (is => 'ro', isa => 'Int');
  has ScalingAdjustmentType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TargetConfiguration => (is => 'ro', isa => 'Paws::GameLift::TargetConfiguration');
  has Threshold => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ScalingPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::ScalingPolicy object:

  $service_obj->Method(Att1 => { ComparisonOperator => $value, ..., Threshold => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::ScalingPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->ComparisonOperator

=head1 DESCRIPTION

Rule that controls how a fleet is scaled. Scaling policies are uniquely
identified by the combination of name and fleet ID.

=over

=item *

DescribeFleetCapacity

=item *

UpdateFleetCapacity

=item *

DescribeEC2InstanceLimits

=item *

Manage scaling policies:

=over

=item *

PutScalingPolicy (auto-scaling)

=item *

DescribeScalingPolicies (auto-scaling)

=item *

DeleteScalingPolicy (auto-scaling)

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back


=head1 ATTRIBUTES


=head2 ComparisonOperator => Str

  Comparison operator to use when measuring a metric against the
threshold value.


=head2 EvaluationPeriods => Int

  Length of time (in minutes) the metric must be at or beyond the
threshold before a scaling event is triggered.


=head2 FleetId => Str

  Unique identifier for a fleet that is associated with this scaling
policy.


=head2 MetricName => Str

  Name of the Amazon GameLift-defined metric that is used to trigger a
scaling adjustment. For detailed descriptions of fleet metrics, see
Monitor Amazon GameLift with Amazon CloudWatch
(https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html).

=over

=item *

B<ActivatingGameSessions> -- Game sessions in the process of being
created.

=item *

B<ActiveGameSessions> -- Game sessions that are currently running.

=item *

B<ActiveInstances> -- Fleet instances that are currently running at
least one game session.

=item *

B<AvailableGameSessions> -- Additional game sessions that fleet could
host simultaneously, given current capacity.

=item *

B<AvailablePlayerSessions> -- Empty player slots in currently active
game sessions. This includes game sessions that are not currently
accepting players. Reserved player slots are not included.

=item *

B<CurrentPlayerSessions> -- Player slots in active game sessions that
are being used by a player or are reserved for a player.

=item *

B<IdleInstances> -- Active instances that are currently hosting zero
game sessions.

=item *

B<PercentAvailableGameSessions> -- Unused percentage of the total
number of game sessions that a fleet could host simultaneously, given
current capacity. Use this metric for a target-based scaling policy.

=item *

B<PercentIdleInstances> -- Percentage of the total number of active
instances that are hosting zero game sessions.

=item *

B<QueueDepth> -- Pending game session placement requests, in any queue,
where the current fleet is the top-priority destination.

=item *

B<WaitTime> -- Current wait time for pending game session placement
requests, in any queue, where the current fleet is the top-priority
destination.

=back



=head2 Name => Str

  Descriptive label that is associated with a scaling policy. Policy
names do not need to be unique.


=head2 PolicyType => Str

  Type of scaling policy to create. For a target-based policy, set the
parameter I<MetricName> to 'PercentAvailableGameSessions' and specify a
I<TargetConfiguration>. For a rule-based policy set the following
parameters: I<MetricName>, I<ComparisonOperator>, I<Threshold>,
I<EvaluationPeriods>, I<ScalingAdjustmentType>, and
I<ScalingAdjustment>.


=head2 ScalingAdjustment => Int

  Amount of adjustment to make, based on the scaling adjustment type.


=head2 ScalingAdjustmentType => Str

  Type of adjustment to make to a fleet's instance count (see
FleetCapacity):

=over

=item *

B<ChangeInCapacity> -- add (or subtract) the scaling adjustment value
from the current instance count. Positive values scale up while
negative values scale down.

=item *

B<ExactCapacity> -- set the instance count to the scaling adjustment
value.

=item *

B<PercentChangeInCapacity> -- increase or reduce the current instance
count by the scaling adjustment, read as a percentage. Positive values
scale up while negative values scale down.

=back



=head2 Status => Str

  Current status of the scaling policy. The scaling policy can be in
force only when in an C<ACTIVE> status. Scaling policies can be
suspended for individual fleets (see StopFleetActions; if suspended for
a fleet, the policy status does not change. View a fleet's stopped
actions by calling DescribeFleetCapacity.

=over

=item *

B<ACTIVE> -- The scaling policy can be used for auto-scaling a fleet.

=item *

B<UPDATE_REQUESTED> -- A request to update the scaling policy has been
received.

=item *

B<UPDATING> -- A change is being made to the scaling policy.

=item *

B<DELETE_REQUESTED> -- A request to delete the scaling policy has been
received.

=item *

B<DELETING> -- The scaling policy is being deleted.

=item *

B<DELETED> -- The scaling policy has been deleted.

=item *

B<ERROR> -- An error occurred in creating the policy. It should be
removed and recreated.

=back



=head2 TargetConfiguration => L<Paws::GameLift::TargetConfiguration>

  Object that contains settings for a target-based scaling policy.


=head2 Threshold => Num

  Metric value used to trigger a scaling event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

