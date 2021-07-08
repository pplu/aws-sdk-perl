
package Paws::GameLift::ListGameServers;
  use Moose;
  has GameServerGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGameServers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::ListGameServersOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ListGameServers - Arguments for method ListGameServers on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGameServers on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method ListGameServers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGameServers.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $ListGameServersOutput = $gamelift->ListGameServers(
      GameServerGroupName => 'MyGameServerGroupNameOrArn',
      Limit               => 1,                              # OPTIONAL
      NextToken           => 'MyNonZeroAndMaxString',        # OPTIONAL
      SortOrder           => 'ASCENDING',                    # OPTIONAL
    );

    # Results:
    my $GameServers = $ListGameServersOutput->GameServers;
    my $NextToken   = $ListGameServersOutput->NextToken;

    # Returns a L<Paws::GameLift::ListGameServersOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/ListGameServers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GameServerGroupName => Str

An identifier for the game server group to retrieve a list of game
servers from. Use either the GameServerGroup name or ARN value.



=head2 Limit => Int

The maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages.



=head2 NextToken => Str

A token that indicates the start of the next sequential page of
results. Use the token that is returned with a previous call to this
operation. To start at the beginning of the result set, do not specify
a value.



=head2 SortOrder => Str

Indicates how to sort the returned data based on game server
registration timestamp. Use C<ASCENDING> to retrieve oldest game
servers first, or use C<DESCENDING> to retrieve newest game servers
first. If this parameter is left empty, game servers are returned in no
particular order.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGameServers in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

