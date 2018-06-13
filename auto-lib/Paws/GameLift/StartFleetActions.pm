
package Paws::GameLift::StartFleetActions;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartFleetActions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::StartFleetActionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::StartFleetActions - Arguments for method StartFleetActions on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartFleetActions on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method StartFleetActions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartFleetActions.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $StartFleetActionsOutput = $gamelift->StartFleetActions(
      Actions => [
        'AUTO_SCALING', ...    # values: AUTO_SCALING
      ],
      FleetId => 'MyFleetId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/StartFleetActions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[Str|Undef]

List of actions to restart on the fleet.



=head2 B<REQUIRED> FleetId => Str

Unique identifier for a fleet




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartFleetActions in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

