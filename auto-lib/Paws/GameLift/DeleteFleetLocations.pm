
package Paws::GameLift::DeleteFleetLocations;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has Locations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFleetLocations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DeleteFleetLocationsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DeleteFleetLocations - Arguments for method DeleteFleetLocations on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFleetLocations on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DeleteFleetLocations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFleetLocations.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DeleteFleetLocationsOutput = $gamelift->DeleteFleetLocations(
      FleetId   => 'MyFleetIdOrArn',
      Locations => [
        'MyLocationStringModel', ...    # min: 1, max: 64
      ],

    );

    # Results:
    my $FleetArn       = $DeleteFleetLocationsOutput->FleetArn;
    my $FleetId        = $DeleteFleetLocationsOutput->FleetId;
    my $LocationStates = $DeleteFleetLocationsOutput->LocationStates;

    # Returns a L<Paws::GameLift::DeleteFleetLocationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DeleteFleetLocations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetId => Str

A unique identifier for the fleet to delete locations for. You can use
either the fleet ID or ARN value.



=head2 B<REQUIRED> Locations => ArrayRef[Str|Undef]

The list of fleet locations to delete. Specify locations in the form of
an AWS Region code, such as C<us-west-2>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFleetLocations in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

