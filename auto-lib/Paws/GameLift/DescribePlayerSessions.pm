
package Paws::GameLift::DescribePlayerSessions;
  use Moose;
  has GameSessionId => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PlayerId => (is => 'ro', isa => 'Str');
  has PlayerSessionId => (is => 'ro', isa => 'Str');
  has PlayerSessionStatusFilter => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePlayerSessions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribePlayerSessionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribePlayerSessions - Arguments for method DescribePlayerSessions on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePlayerSessions on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribePlayerSessions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePlayerSessions.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribePlayerSessionsOutput = $gamelift->DescribePlayerSessions(
      GameSessionId             => 'MyArnStringModel',         # OPTIONAL
      Limit                     => 1,                          # OPTIONAL
      NextToken                 => 'MyNonZeroAndMaxString',    # OPTIONAL
      PlayerId                  => 'MyNonZeroAndMaxString',    # OPTIONAL
      PlayerSessionId           => 'MyPlayerSessionId',        # OPTIONAL
      PlayerSessionStatusFilter => 'MyNonZeroAndMaxString',    # OPTIONAL
    );

    # Results:
    my $NextToken      = $DescribePlayerSessionsOutput->NextToken;
    my $PlayerSessions = $DescribePlayerSessionsOutput->PlayerSessions;

    # Returns a L<Paws::GameLift::DescribePlayerSessionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribePlayerSessions>

=head1 ATTRIBUTES


=head2 GameSessionId => Str

Unique identifier for the game session to retrieve player sessions for.



=head2 Limit => Int

Maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages. If a player
session ID is specified, this parameter is ignored.



=head2 NextToken => Str

Token that indicates the start of the next sequential page of results.
Use the token that is returned with a previous call to this action. To
start at the beginning of the result set, do not specify a value. If a
player session ID is specified, this parameter is ignored.



=head2 PlayerId => Str

Unique identifier for a player to retrieve player sessions for.



=head2 PlayerSessionId => Str

Unique identifier for a player session to retrieve.



=head2 PlayerSessionStatusFilter => Str

Player session status to filter results on.

Possible player session statuses include the following:

=over

=item *

B<RESERVED> -- The player session request has been received, but the
player has not yet connected to the server process and/or been
validated.

=item *

B<ACTIVE> -- The player has been validated by the server process and is
currently connected.

=item *

B<COMPLETED> -- The player connection has been dropped.

=item *

B<TIMEDOUT> -- A player session request was received, but the player
did not connect and/or was not validated within the timeout limit (60
seconds).

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePlayerSessions in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

