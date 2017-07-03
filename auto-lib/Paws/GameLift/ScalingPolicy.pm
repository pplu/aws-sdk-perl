package Paws::GameLift::ScalingPolicy;
  use Moose;
  has ComparisonOperator => (is => 'ro', isa => 'Str');
  has EvaluationPeriods => (is => 'ro', isa => 'Int');
  has FleetId => (is => 'ro', isa => 'Str');
  has MetricName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ScalingAdjustment => (is => 'ro', isa => 'Int');
  has ScalingAdjustmentType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
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

Fleet-related operations include:

=over

=item *

CreateFleet

=item *

ListFleets

=item *

Describe fleets:

=over

=item *

DescribeFleetAttributes

=item *

DescribeFleetPortSettings

=item *

DescribeFleetUtilization

=item *

DescribeRuntimeConfiguration

=item *

DescribeFleetEvents

=back

=item *

Update fleets:

=over

=item *

UpdateFleetAttributes

=item *

UpdateFleetCapacity

=item *

UpdateFleetPortSettings

=item *

UpdateRuntimeConfiguration

=back

=item *

Manage fleet capacity:

=over

=item *

DescribeFleetCapacity

=item *

UpdateFleetCapacity

=item *

PutScalingPolicy (automatic scaling)

=item *

DescribeScalingPolicies (automatic scaling)

=item *

DeleteScalingPolicy (automatic scaling)

=item *

DescribeEC2InstanceLimits

=back

=item *

DeleteFleet

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

  Name of the Amazon GameLift-defined metric that is used to trigger an
adjustment.

=over

=item *

B<ActivatingGameSessions> E<ndash> number of game sessions in the
process of being created (game session status = C<ACTIVATING>).

=item *

B<ActiveGameSessions> E<ndash> number of game sessions currently
running (game session status = C<ACTIVE>).

=item *

B<CurrentPlayerSessions> E<ndash> number of active or reserved player
sessions (player session status = C<ACTIVE> or C<RESERVED>).

=item *

B<AvailablePlayerSessions> E<ndash> number of player session slots
currently available in active game sessions across the fleet,
calculated by subtracting a game session's current player session count
from its maximum player session count. This number does include game
sessions that are not currently accepting players (game session
C<PlayerSessionCreationPolicy> = C<DENY_ALL>).

=item *

B<ActiveInstances> E<ndash> number of instances currently running a
game session.

=item *

B<IdleInstances> E<ndash> number of instances not currently running a
game session.

=back



=head2 Name => Str

  Descriptive label that is associated with a scaling policy. Policy
names do not need to be unique.


=head2 ScalingAdjustment => Int

  Amount of adjustment to make, based on the scaling adjustment type.


=head2 ScalingAdjustmentType => Str

  Type of adjustment to make to a fleet's instance count (see
FleetCapacity):

=over

=item *

B<ChangeInCapacity> E<ndash> add (or subtract) the scaling adjustment
value from the current instance count. Positive values scale up while
negative values scale down.

=item *

B<ExactCapacity> E<ndash> set the instance count to the scaling
adjustment value.

=item *

B<PercentChangeInCapacity> E<ndash> increase or reduce the current
instance count by the scaling adjustment, read as a percentage.
Positive values scale up while negative values scale down.

=back



=head2 Status => Str

  Current status of the scaling policy. The scaling policy is only in
force when in an C<ACTIVE> status.

=over

=item *

B<ACTIVE> E<ndash> The scaling policy is currently in force.

=item *

B<UPDATE_REQUESTED> E<ndash> A request to update the scaling policy has
been received.

=item *

B<UPDATING> E<ndash> A change is being made to the scaling policy.

=item *

B<DELETE_REQUESTED> E<ndash> A request to delete the scaling policy has
been received.

=item *

B<DELETING> E<ndash> The scaling policy is being deleted.

=item *

B<DELETED> E<ndash> The scaling policy has been deleted.

=item *

B<ERROR> E<ndash> An error occurred in creating the policy. It should
be removed and recreated.

=back



=head2 Threshold => Num

  Metric value used to trigger a scaling event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

