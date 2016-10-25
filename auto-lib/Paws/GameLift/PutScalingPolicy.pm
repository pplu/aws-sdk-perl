
package Paws::GameLift::PutScalingPolicy;
  use Moose;
  has ComparisonOperator => (is => 'ro', isa => 'Str', required => 1);
  has EvaluationPeriods => (is => 'ro', isa => 'Int', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ScalingAdjustment => (is => 'ro', isa => 'Int', required => 1);
  has ScalingAdjustmentType => (is => 'ro', isa => 'Str', required => 1);
  has Threshold => (is => 'ro', isa => 'Num', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutScalingPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::PutScalingPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::PutScalingPolicy - Arguments for method PutScalingPolicy on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutScalingPolicy on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method PutScalingPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutScalingPolicy.

As an example:

  $service_obj->PutScalingPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComparisonOperator => Str

Comparison operator to use when measuring the metric against the
threshold value.

Valid values are: C<"GreaterThanOrEqualToThreshold">, C<"GreaterThanThreshold">, C<"LessThanThreshold">, C<"LessThanOrEqualToThreshold">

=head2 B<REQUIRED> EvaluationPeriods => Int

Length of time (in minutes) the metric must be at or beyond the
threshold before a scaling event is triggered.



=head2 B<REQUIRED> FleetId => Str

Unique identity for the fleet to scale with this policy.



=head2 B<REQUIRED> MetricName => Str

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
from its maximum player session count. This number includes game
sessions that are not currently accepting players (game session
C<PlayerSessionCreationPolicy> = C<DENY_ALL>).

=item *

B<ActiveInstances> E<ndash> number of instances currently running a
game session.

=item *

B<IdleInstances> E<ndash> number of instances not currently running a
game session.

=back


Valid values are: C<"ActivatingGameSessions">, C<"ActiveGameSessions">, C<"ActiveInstances">, C<"AvailablePlayerSessions">, C<"CurrentPlayerSessions">, C<"IdleInstances">

=head2 B<REQUIRED> Name => Str

Descriptive label associated with a scaling policy. Policy names do not
need to be unique. A fleet can have only one scaling policy with the
same name.



=head2 B<REQUIRED> ScalingAdjustment => Int

Amount of adjustment to make, based on the scaling adjustment type.



=head2 B<REQUIRED> ScalingAdjustmentType => Str

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
Positive values scale up while negative values scale down; for example,
a value of "-10" scales the fleet down by 10%.

=back


Valid values are: C<"ChangeInCapacity">, C<"ExactCapacity">, C<"PercentChangeInCapacity">

=head2 B<REQUIRED> Threshold => Num

Metric value used to trigger a scaling event.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutScalingPolicy in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

