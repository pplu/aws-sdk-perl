
package Paws::EC2::AssociateVpcCidrBlockResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_VpcCidrBlockAssociation EC2_VpcIpv6CidrBlockAssociation/;
  has CidrBlockAssociation => (is => 'ro', isa => EC2_VpcCidrBlockAssociation);
  has Ipv6CidrBlockAssociation => (is => 'ro', isa => EC2_VpcIpv6CidrBlockAssociation);
  has VpcId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VpcId' => {
                            'type' => 'Str'
                          },
               'Ipv6CidrBlockAssociation' => {
                                               'class' => 'Paws::EC2::VpcIpv6CidrBlockAssociation',
                                               'type' => 'EC2_VpcIpv6CidrBlockAssociation'
                                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CidrBlockAssociation' => {
                                           'class' => 'Paws::EC2::VpcCidrBlockAssociation',
                                           'type' => 'EC2_VpcCidrBlockAssociation'
                                         }
             },
  'NameInRequest' => {
                       'VpcId' => 'vpcId',
                       'Ipv6CidrBlockAssociation' => 'ipv6CidrBlockAssociation',
                       'CidrBlockAssociation' => 'cidrBlockAssociation'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateVpcCidrBlockResult

=head1 ATTRIBUTES


=head2 CidrBlockAssociation => EC2_VpcCidrBlockAssociation

Information about the IPv4 CIDR block association.


=head2 Ipv6CidrBlockAssociation => EC2_VpcIpv6CidrBlockAssociation

Information about the IPv6 CIDR block association.


=head2 VpcId => Str

The ID of the VPC.


=head2 _request_id => Str


=cut

