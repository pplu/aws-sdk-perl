
package Paws::GameLift::DescribePlayerSessionsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PlayerSessions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::PlayerSession]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribePlayerSessionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 PlayerSessions => ArrayRef[L<Paws::GameLift::PlayerSession>]

Collection of objects containing properties for each player session
that matches the request.


=head2 _request_id => Str


=cut

1;