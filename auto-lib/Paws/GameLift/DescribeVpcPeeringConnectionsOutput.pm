
package Paws::GameLift::DescribeVpcPeeringConnectionsOutput;
  use Moose;
  has VpcPeeringConnections => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::VpcPeeringConnection]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeVpcPeeringConnectionsOutput

=head1 ATTRIBUTES


=head2 VpcPeeringConnections => ArrayRef[L<Paws::GameLift::VpcPeeringConnection>]

Collection of VPC peering connection records that match the request.


=head2 _request_id => Str


=cut

1;