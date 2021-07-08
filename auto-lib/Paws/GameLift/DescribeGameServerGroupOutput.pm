
package Paws::GameLift::DescribeGameServerGroupOutput;
  use Moose;
  has GameServerGroup => (is => 'ro', isa => 'Paws::GameLift::GameServerGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeGameServerGroupOutput

=head1 ATTRIBUTES


=head2 GameServerGroup => L<Paws::GameLift::GameServerGroup>

An object with the property settings for the requested game server
group resource.


=head2 _request_id => Str


=cut

1;