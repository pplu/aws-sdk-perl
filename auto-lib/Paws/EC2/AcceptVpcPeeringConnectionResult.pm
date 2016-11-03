
package Paws::EC2::AcceptVpcPeeringConnectionResult;
  use Moose;
  has VpcPeeringConnection => (is => 'ro', isa => 'Paws::EC2::VpcPeeringConnection', request_name => 'vpcPeeringConnection', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AcceptVpcPeeringConnectionResult

=head1 ATTRIBUTES


=head2 VpcPeeringConnection => L<Paws::EC2::VpcPeeringConnection>

Information about the VPC peering connection.




=cut

