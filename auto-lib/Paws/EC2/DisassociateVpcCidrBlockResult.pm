
package Paws::EC2::DisassociateVpcCidrBlockResult;
  use Moose;
  has Ipv6CidrBlockAssociation => (is => 'ro', isa => 'Paws::EC2::VpcIpv6CidrBlockAssociation', xmlname => 'ipv6CidrBlockAssociation', traits => ['Unwrapped',]);
  has VpcId => (is => 'ro', isa => 'Str', xmlname => 'vpcId', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisassociateVpcCidrBlockResult

=head1 ATTRIBUTES


=head2 Ipv6CidrBlockAssociation => L<Paws::EC2::VpcIpv6CidrBlockAssociation>

Information about the IPv6 CIDR block association.


=head2 VpcId => Str

The ID of the VPC.


=head2 _request_id => Str


=cut

