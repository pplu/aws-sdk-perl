
package Paws::GameLift::UpdateAlias;
  use Moose;
  has AliasId => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RoutingStrategy => (is => 'ro', isa => 'Paws::GameLift::RoutingStrategy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAlias');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::UpdateAliasOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateAlias - Arguments for method UpdateAlias on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAlias on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method UpdateAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAlias.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $UpdateAliasOutput = $gamelift->UpdateAlias(
      AliasId         => 'MyAliasId',
      Description     => 'MyNonZeroAndMaxString',                  # OPTIONAL
      Name            => 'MyNonBlankAndLengthConstraintString',    # OPTIONAL
      RoutingStrategy => {
        FleetId => 'MyFleetId',     # OPTIONAL
        Message => 'MyFreeText',    # OPTIONAL
        Type    => 'SIMPLE',        # values: SIMPLE, TERMINAL; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Alias = $UpdateAliasOutput->Alias;

    # Returns a L<Paws::GameLift::UpdateAliasOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/UpdateAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AliasId => Str

A unique identifier for the alias that you want to update. You can use
either the alias ID or ARN value.



=head2 Description => Str

A human-readable description of the alias.



=head2 Name => Str

A descriptive label that is associated with an alias. Alias names do
not need to be unique.



=head2 RoutingStrategy => L<Paws::GameLift::RoutingStrategy>

The routing configuration, including routing type and fleet target, for
the alias.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAlias in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

