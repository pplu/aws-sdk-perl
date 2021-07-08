
package Paws::GameLift::ListGameServerGroupsOutput;
  use Moose;
  has GameServerGroups => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameServerGroup]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ListGameServerGroupsOutput

=head1 ATTRIBUTES


=head2 GameServerGroups => ArrayRef[L<Paws::GameLift::GameServerGroup>]

A collection of game server group objects that match the request.


=head2 NextToken => Str

A token that indicates where to resume retrieving results on the next
call to this operation. If no token is returned, these results
represent the end of the list.


=head2 _request_id => Str


=cut

1;