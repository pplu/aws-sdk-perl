
package Paws::EC2::DisassociateVpcCidrBlockResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_VpcCidrBlockAssociation EC2_VpcIpv6CidrBlockAssociation/;
  has CidrBlockAssociation => (is => 'ro', isa => EC2_VpcCidrBlockAssociation);
  has Ipv6CidrBlockAssociation => (is => 'ro', isa => EC2_VpcIpv6CidrBlockAssociation);
  has VpcId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Ipv6CidrBlockAssociation' => 'ipv6CidrBlockAssociation',
                       'CidrBlockAssociation' => 'cidrBlockAssociation',
                       'VpcId' => 'vpcId'
                     },
  'types' => {
               'Ipv6CidrBlockAssociation' => {
                                               'type' => 'EC2_VpcIpv6CidrBlockAssociation',
                                               'class' => 'Paws::EC2::VpcIpv6CidrBlockAssociation'
                                             },
               'CidrBlockAssociation' => {
                                           'class' => 'Paws::EC2::VpcCidrBlockAssociation',
                                           'type' => 'EC2_VpcCidrBlockAssociation'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VpcId' => {
                            'type' => 'Str'
                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisassociateVpcCidrBlockResult

=head1 ATTRIBUTES


=head2 CidrBlockAssociation => EC2_VpcCidrBlockAssociation

Information about the IPv4 CIDR block association.


=head2 Ipv6CidrBlockAssociation => EC2_VpcIpv6CidrBlockAssociation

Information about the IPv6 CIDR block association.


=head2 VpcId => Str

The ID of the VPC.


=head2 _request_id => Str


=cut

