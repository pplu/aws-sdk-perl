package Paws::EC2::TransitGatewayRequestOptions;
  use Moose;
  has AmazonSideAsn => (is => 'ro', isa => 'Int');
  has AutoAcceptSharedAttachments => (is => 'ro', isa => 'Str');
  has DefaultRouteTableAssociation => (is => 'ro', isa => 'Str');
  has DefaultRouteTablePropagation => (is => 'ro', isa => 'Str');
  has DnsSupport => (is => 'ro', isa => 'Str');
  has MulticastSupport => (is => 'ro', isa => 'Str');
  has TransitGatewayCidrBlocks => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VpnEcmpSupport => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayRequestOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayRequestOptions object:

  $service_obj->Method(Att1 => { AmazonSideAsn => $value, ..., VpnEcmpSupport => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayRequestOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->AmazonSideAsn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AmazonSideAsn => Int

A private Autonomous System Number (ASN) for the Amazon side of a BGP
session. The range is 64512 to 65534 for 16-bit ASNs and 4200000000 to
4294967294 for 32-bit ASNs. The default is C<64512>.


=head2 AutoAcceptSharedAttachments => Str

Enable or disable automatic acceptance of attachment requests. Disabled
by default.


=head2 DefaultRouteTableAssociation => Str

Enable or disable automatic association with the default association
route table. Enabled by default.


=head2 DefaultRouteTablePropagation => Str

Enable or disable automatic propagation of routes to the default
propagation route table. Enabled by default.


=head2 DnsSupport => Str

Enable or disable DNS support. Enabled by default.


=head2 MulticastSupport => Str

Indicates whether multicast is enabled on the transit gateway


=head2 TransitGatewayCidrBlocks => ArrayRef[Str|Undef]

One or more IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a
size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or
larger for IPv6.


=head2 VpnEcmpSupport => Str

Enable or disable Equal Cost Multipath Protocol support. Enabled by
default.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
