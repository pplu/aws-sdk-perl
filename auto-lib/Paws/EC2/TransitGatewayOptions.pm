package Paws::EC2::TransitGatewayOptions;
  use Moose;
  has AmazonSideAsn => (is => 'ro', isa => 'Int', request_name => 'amazonSideAsn', traits => ['NameInRequest']);
  has AssociationDefaultRouteTableId => (is => 'ro', isa => 'Str', request_name => 'associationDefaultRouteTableId', traits => ['NameInRequest']);
  has AutoAcceptSharedAttachments => (is => 'ro', isa => 'Str', request_name => 'autoAcceptSharedAttachments', traits => ['NameInRequest']);
  has DefaultRouteTableAssociation => (is => 'ro', isa => 'Str', request_name => 'defaultRouteTableAssociation', traits => ['NameInRequest']);
  has DefaultRouteTablePropagation => (is => 'ro', isa => 'Str', request_name => 'defaultRouteTablePropagation', traits => ['NameInRequest']);
  has DnsSupport => (is => 'ro', isa => 'Str', request_name => 'dnsSupport', traits => ['NameInRequest']);
  has PropagationDefaultRouteTableId => (is => 'ro', isa => 'Str', request_name => 'propagationDefaultRouteTableId', traits => ['NameInRequest']);
  has VpnEcmpSupport => (is => 'ro', isa => 'Str', request_name => 'vpnEcmpSupport', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayOptions object:

  $service_obj->Method(Att1 => { AmazonSideAsn => $value, ..., VpnEcmpSupport => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->AmazonSideAsn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AmazonSideAsn => Int

  A private Autonomous System Number (ASN) for the Amazon side of a BGP
session. The range is 64512 to 65534 for 16-bit ASNs and 4200000000 to
4294967294 for 32-bit ASNs.


=head2 AssociationDefaultRouteTableId => Str

  The ID of the default association route table.


=head2 AutoAcceptSharedAttachments => Str

  Indicates whether attachment requests are automatically accepted.


=head2 DefaultRouteTableAssociation => Str

  Indicates whether resource attachments are automatically associated
with the default association route table.


=head2 DefaultRouteTablePropagation => Str

  Indicates whether resource attachments automatically propagate routes
to the default propagation route table.


=head2 DnsSupport => Str

  Indicates whether DNS support is enabled.


=head2 PropagationDefaultRouteTableId => Str

  The ID of the default propagation route table.


=head2 VpnEcmpSupport => Str

  Indicates whether Equal Cost Multipath Protocol support is enabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
