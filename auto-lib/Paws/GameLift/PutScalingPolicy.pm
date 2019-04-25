
package Paws::GameLift::PutScalingPolicy;
  use Moose;
  has ComparisonOperator => (is => 'ro', isa => 'Str');
  has EvaluationPeriods => (is => 'ro', isa => 'Int');
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has PolicyType => (is => 'ro', isa => 'Str');
  has ScalingAdjustment => (is => 'ro', isa => 'Int');
  has ScalingAdjustmentType => (is => 'ro', isa => 'Str');
  has TargetConfiguration => (is => 'ro', isa => 'Paws::GameLift::TargetConfiguration');
  has Threshold => (is => 'ro', isa => 'Num');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutScalingPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::PutScalingPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::PutScalingPolicy - Arguments for method PutScalingPolicy on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutScalingPolicy on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method PutScalingPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutScalingPolicy.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $PutScalingPolicyOutput = $gamelift->PutScalingPolicy(
      FleetId               => 'MyFleetId',
      MetricName            => 'ActivatingGameSessions',
      Name                  => 'MyNonZeroAndMaxString',
      ComparisonOperator    => 'GreaterThanOrEqualToThreshold',    # OPTIONAL
      EvaluationPeriods     => 1,                                  # OPTIONAL
      PolicyType            => 'RuleBased',                        # OPTIONAL
      ScalingAdjustment     => 1,                                  # OPTIONAL
      ScalingAdjustmentType => 'ChangeInCapacity',                 # OPTIONAL
      TargetConfiguration   => {
        TargetValue => 1,

      },                                                           # OPTIONAL
      Threshold => 1,                                              # OPTIONAL
    );

    # Results:
    my $Name = $PutScalingPolicyOutput->Name;

    # Returns a L<Paws::GameLift::PutScalingPolicyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/PutScalingPolicy>

=head1 ATTRIBUTES


=head2 ComparisonOperator => Str

Comparison operator to use when measuring the metric against the
threshold value.

Valid values are: C<"GreaterThanOrEqualToThreshold">, C<"GreaterThanThreshold">, C<"LessThanThreshold">, C<"LessThanOrEqualToThreshold">

=head2 EvaluationPeriods => Int

Length of time (in minutes) the metric must be at or beyond the
threshold before a scaling event is triggered.



=head2 B<REQUIRED> FleetId => Str

Unique identifier for a fleet to apply this policy to. The fleet cannot
be in any of the following statuses: ERROR or DELETING.



=head2 B<REQUIRED> MetricName => Str

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


Valid values are: C<"ActivatingGameSessions">, C<"ActiveGameSessions">, C<"ActiveInstances">, C<"AvailableGameSessions">, C<"AvailablePlayerSessions">, C<"CurrentPlayerSessions">, C<"IdleInstances">, C<"PercentAvailableGameSessions">, C<"PercentIdleInstances">, C<"QueueDepth">, C<"WaitTime">

=head2 B<REQUIRED> Name => Str

Descriptive label that is associated with a scaling policy. Policy
names do not need to be unique. A fleet can have only one scaling
policy with the same name.



=head2 PolicyType => Str

Type of scaling policy to create. For a target-based policy, set the
parameter I<MetricName> to 'PercentAvailableGameSessions' and specify a
I<TargetConfiguration>. For a rule-based policy set the following
parameters: I<MetricName>, I<ComparisonOperator>, I<Threshold>,
I<EvaluationPeriods>, I<ScalingAdjustmentType>, and
I<ScalingAdjustment>.

Valid values are: C<"RuleBased">, C<"TargetBased">

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
scale up while negative values scale down; for example, a value of
"-10" scales the fleet down by 10%.

=back


Valid values are: C<"ChangeInCapacity">, C<"ExactCapacity">, C<"PercentChangeInCapacity">

=head2 TargetConfiguration => L<Paws::GameLift::TargetConfiguration>

Object that contains settings for a target-based scaling policy.



=head2 Threshold => Num

Metric value used to trigger a scaling event.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutScalingPolicy in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

