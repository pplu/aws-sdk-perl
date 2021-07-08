package Paws::EC2::TransitGatewayAttachmentBgpConfiguration;
  use Moose;
  has BgpStatus => (is => 'ro', isa => 'Str', request_name => 'bgpStatus', traits => ['NameInRequest']);
  has PeerAddress => (is => 'ro', isa => 'Str', request_name => 'peerAddress', traits => ['NameInRequest']);
  has PeerAsn => (is => 'ro', isa => 'Int', request_name => 'peerAsn', traits => ['NameInRequest']);
  has TransitGatewayAddress => (is => 'ro', isa => 'Str', request_name => 'transitGatewayAddress', traits => ['NameInRequest']);
  has TransitGatewayAsn => (is => 'ro', isa => 'Int', request_name => 'transitGatewayAsn', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayAttachmentBgpConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayAttachmentBgpConfiguration object:

  $service_obj->Method(Att1 => { BgpStatus => $value, ..., TransitGatewayAsn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayAttachmentBgpConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BgpStatus

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BgpStatus => Str

The BGP status.


=head2 PeerAddress => Str

The interior BGP peer IP address for the appliance.


=head2 PeerAsn => Int

The peer Autonomous System Number (ASN).


=head2 TransitGatewayAddress => Str

The interior BGP peer IP address for the transit gateway.


=head2 TransitGatewayAsn => Int

The transit gateway Autonomous System Number (ASN).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
