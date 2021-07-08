
package Paws::GameLift::ListGameServersOutput;
  use Moose;
  has GameServers => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameServer]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ListGameServersOutput

=head1 ATTRIBUTES


=head2 GameServers => ArrayRef[L<Paws::GameLift::GameServer>]

A collection of game server objects that match the request.


=head2 NextToken => Str

A token that indicates where to resume retrieving results on the next
call to this operation. If no token is returned, these results
represent the end of the list.


=head2 _request_id => Str


=cut

1;