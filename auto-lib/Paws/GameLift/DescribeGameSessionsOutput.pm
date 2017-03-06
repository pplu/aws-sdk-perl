
package Paws::GameLift::DescribeGameSessionsOutput;
  use Moose;
  has GameSessions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameSession]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeGameSessionsOutput

=head1 ATTRIBUTES


=head2 GameSessions => ArrayRef[L<Paws::GameLift::GameSession>]

Collection of objects containing game session properties for each
session matching the request.


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;