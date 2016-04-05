
package Paws::GameLift::DescribePlayerSessionsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PlayerSessions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::PlayerSession]');


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribePlayerSessionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

Token indicating where to resume retrieving results on the next call to
this action. If no token is returned, these results represent the end
of the list.

If a request has a limit that exactly matches the number of remaining
results, a token is returned even though there are no more results to
retrieve.



=head2 PlayerSessions => ArrayRef[L<Paws::GameLift::PlayerSession>]

Collection of objects containing properties for each player session
that matches the request.




=cut

1;