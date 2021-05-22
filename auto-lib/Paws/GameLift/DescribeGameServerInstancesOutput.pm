
package Paws::GameLift::DescribeGameServerInstancesOutput;
  use Moose;
  has GameServerInstances => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameServerInstance]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeGameServerInstancesOutput

=head1 ATTRIBUTES


=head2 GameServerInstances => ArrayRef[L<Paws::GameLift::GameServerInstance>]

The collection of requested game server instances.


=head2 NextToken => Str

A token that indicates where to resume retrieving results on the next
call to this operation. If no token is returned, these results
represent the end of the list.


=head2 _request_id => Str


=cut

1;