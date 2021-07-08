
package Paws::GameLift::UpdateFleetAttributes;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has MetricGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str');
  has NewGameSessionProtectionPolicy => (is => 'ro', isa => 'Str');
  has ResourceCreationLimitPolicy => (is => 'ro', isa => 'Paws::GameLift::ResourceCreationLimitPolicy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFleetAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::UpdateFleetAttributesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateFleetAttributes - Arguments for method UpdateFleetAttributes on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFleetAttributes on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method UpdateFleetAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFleetAttributes.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $UpdateFleetAttributesOutput = $gamelift->UpdateFleetAttributes(
      FleetId      => 'MyFleetIdOrArn',
      Description  => 'MyNonZeroAndMaxString',    # OPTIONAL
      MetricGroups => [
        'MyMetricGroup', ...                      # min: 1, max: 255
      ],    # OPTIONAL
      Name                           => 'MyNonZeroAndMaxString',    # OPTIONAL
      NewGameSessionProtectionPolicy => 'NoProtection',             # OPTIONAL
      ResourceCreationLimitPolicy    => {
        NewGameSessionsPerCreator => 1,                             # OPTIONAL
        PolicyPeriodInMinutes     => 1,                             # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $FleetId = $UpdateFleetAttributesOutput->FleetId;

    # Returns a L<Paws::GameLift::UpdateFleetAttributesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/UpdateFleetAttributes>

=head1 ATTRIBUTES


=head2 Description => Str

A human-readable description of a fleet.



=head2 B<REQUIRED> FleetId => Str

A unique identifier for the fleet to update attribute metadata for. You
can use either the fleet ID or ARN value.



=head2 MetricGroups => ArrayRef[Str|Undef]

The name of a metric group to add this fleet to. Use a metric group in
Amazon CloudWatch to aggregate the metrics from multiple fleets.
Provide an existing metric group name, or create a new metric group by
providing a new name. A fleet can only be in one metric group at a
time.



=head2 Name => Str

A descriptive label that is associated with a fleet. Fleet names do not
need to be unique.



=head2 NewGameSessionProtectionPolicy => Str

The game session protection policy to apply to all new instances
created in this fleet. Instances that already exist are not affected.
You can set protection for individual instances using
UpdateGameSession.

=over

=item *

B<NoProtection> -- The game session can be terminated during a
scale-down event.

=item *

B<FullProtection> -- If the game session is in an C<ACTIVE> status, it
cannot be terminated during a scale-down event.

=back


Valid values are: C<"NoProtection">, C<"FullProtection">

=head2 ResourceCreationLimitPolicy => L<Paws::GameLift::ResourceCreationLimitPolicy>

Policy settings that limit the number of game sessions an individual
player can create over a span of time.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFleetAttributes in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

