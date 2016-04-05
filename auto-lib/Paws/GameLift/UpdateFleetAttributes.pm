
package Paws::GameLift::UpdateFleetAttributes;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has NewGameSessionProtectionPolicy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFleetAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::UpdateFleetAttributesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateFleetAttributes - Arguments for method UpdateFleetAttributes on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFleetAttributes on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method UpdateFleetAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFleetAttributes.

As an example:

  $service_obj->UpdateFleetAttributes(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Description => Str

Human-readable description of the fleet.



=head2 B<REQUIRED> FleetId => Str

Unique identifier for the fleet you want to update attribute metadata
for.



=head2 Name => Str

Descriptive label associated with this fleet. Fleet names do not need
to be unique.



=head2 NewGameSessionProtectionPolicy => Str

Game session protection policy to apply to all new instances created in
this fleet. Instances that already exist will not be affected. You can
set protection for individual instances using UpdateGameSession.

=over

=item * NoProtection: The game session can be terminated during a
scale-down event.

=item * FullProtection: If the game session is in an ACTIVE status, it
cannot be terminated during a scale-down event.

=back


Valid values are: C<"NoProtection">, C<"FullProtection">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFleetAttributes in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

