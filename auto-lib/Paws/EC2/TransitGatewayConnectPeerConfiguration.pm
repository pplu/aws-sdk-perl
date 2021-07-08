package Paws::EC2::TransitGatewayConnectPeerConfiguration;
  use Moose;
  has BgpConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TransitGatewayAttachmentBgpConfiguration]', request_name => 'bgpConfigurations', traits => ['NameInRequest']);
  has InsideCidrBlocks => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'insideCidrBlocks', traits => ['NameInRequest']);
  has PeerAddress => (is => 'ro', isa => 'Str', request_name => 'peerAddress', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', request_name => 'protocol', traits => ['NameInRequest']);
  has TransitGatewayAddress => (is => 'ro', isa => 'Str', request_name => 'transitGatewayAddress', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayConnectPeerConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayConnectPeerConfiguration object:

  $service_obj->Method(Att1 => { BgpConfigurations => $value, ..., TransitGatewayAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayConnectPeerConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BgpConfigurations

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BgpConfigurations => ArrayRef[L<Paws::EC2::TransitGatewayAttachmentBgpConfiguration>]

The BGP configuration details.


=head2 InsideCidrBlocks => ArrayRef[Str|Undef]

The range of interior BGP peer IP addresses.


=head2 PeerAddress => Str

The Connect peer IP address on the appliance side of the tunnel.


=head2 Protocol => Str

The tunnel protocol.


=head2 TransitGatewayAddress => Str

The Connect peer IP address on the transit gateway side of the tunnel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
