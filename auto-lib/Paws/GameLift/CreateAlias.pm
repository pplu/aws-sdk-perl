
package Paws::GameLift::CreateAlias;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoutingStrategy => (is => 'ro', isa => 'Paws::GameLift::RoutingStrategy', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAlias');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateAliasOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateAlias - Arguments for method CreateAlias on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAlias on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method CreateAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAlias.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $CreateAliasOutput = $gamelift->CreateAlias(
      Name            => 'MyNonBlankAndLengthConstraintString',
      RoutingStrategy => {
        FleetId => 'MyFleetId',     # OPTIONAL
        Message => 'MyFreeText',    # OPTIONAL
        Type    => 'SIMPLE',        # values: SIMPLE, TERMINAL; OPTIONAL
      },
      Description => 'MyNonZeroAndMaxString',    # OPTIONAL
    );

    # Results:
    my $Alias = $CreateAliasOutput->Alias;

    # Returns a L<Paws::GameLift::CreateAliasOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/CreateAlias>

=head1 ATTRIBUTES


=head2 Description => Str

Human-readable description of an alias.



=head2 B<REQUIRED> Name => Str

Descriptive label that is associated with an alias. Alias names do not
need to be unique.



=head2 B<REQUIRED> RoutingStrategy => L<Paws::GameLift::RoutingStrategy>

Object that specifies the fleet and routing type to use for the alias.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAlias in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

