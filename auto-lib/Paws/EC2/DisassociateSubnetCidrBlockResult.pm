
package Paws::EC2::DisassociateSubnetCidrBlockResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_SubnetIpv6CidrBlockAssociation/;
  has Ipv6CidrBlockAssociation => (is => 'ro', isa => EC2_SubnetIpv6CidrBlockAssociation);
  has SubnetId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SubnetId' => {
                               'type' => 'Str'
                             },
               'Ipv6CidrBlockAssociation' => {
                                               'class' => 'Paws::EC2::SubnetIpv6CidrBlockAssociation',
                                               'type' => 'EC2_SubnetIpv6CidrBlockAssociation'
                                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'SubnetId' => 'subnetId',
                       'Ipv6CidrBlockAssociation' => 'ipv6CidrBlockAssociation'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisassociateSubnetCidrBlockResult

=head1 ATTRIBUTES


=head2 Ipv6CidrBlockAssociation => EC2_SubnetIpv6CidrBlockAssociation

Information about the IPv6 CIDR block association.


=head2 SubnetId => Str

The ID of the subnet.


=head2 _request_id => Str


=cut

