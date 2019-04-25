
package Paws::GameLift::ListAliases;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has RoutingStrategyType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAliases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::ListAliasesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ListAliases - Arguments for method ListAliases on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAliases on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method ListAliases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAliases.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $ListAliasesOutput = $gamelift->ListAliases(
      Limit               => 1,                     # OPTIONAL
      Name                => 'MyNonEmptyString',    # OPTIONAL
      NextToken           => 'MyNonEmptyString',    # OPTIONAL
      RoutingStrategyType => 'SIMPLE',              # OPTIONAL
    );

    # Results:
    my $Aliases   = $ListAliasesOutput->Aliases;
    my $NextToken = $ListAliasesOutput->NextToken;

    # Returns a L<Paws::GameLift::ListAliasesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/ListAliases>

=head1 ATTRIBUTES


=head2 Limit => Int

Maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages.



=head2 Name => Str

Descriptive label that is associated with an alias. Alias names do not
need to be unique.



=head2 NextToken => Str

Token that indicates the start of the next sequential page of results.
Use the token that is returned with a previous call to this action. To
start at the beginning of the result set, do not specify a value.



=head2 RoutingStrategyType => Str

Type of routing to filter results on. Use this parameter to retrieve
only aliases of a certain type. To retrieve all aliases, leave this
parameter empty.

Possible routing types include the following:

=over

=item *

B<SIMPLE> -- The alias resolves to one specific fleet. Use this type
when routing to active fleets.

=item *

B<TERMINAL> -- The alias does not resolve to a fleet but instead can be
used to display a message to the user. A terminal alias throws a
TerminalRoutingStrategyException with the RoutingStrategy message
embedded.

=back


Valid values are: C<"SIMPLE">, C<"TERMINAL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAliases in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

