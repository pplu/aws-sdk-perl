package Paws::EC2::TransitGatewayConnectPeer;
  use Moose;
  has ConnectPeerConfiguration => (is => 'ro', isa => 'Paws::EC2::TransitGatewayConnectPeerConfiguration', request_name => 'connectPeerConfiguration', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TransitGatewayAttachmentId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayAttachmentId', traits => ['NameInRequest']);
  has TransitGatewayConnectPeerId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayConnectPeerId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayConnectPeer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayConnectPeer object:

  $service_obj->Method(Att1 => { ConnectPeerConfiguration => $value, ..., TransitGatewayConnectPeerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayConnectPeer object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectPeerConfiguration

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ConnectPeerConfiguration => L<Paws::EC2::TransitGatewayConnectPeerConfiguration>

The Connect peer details.


=head2 CreationTime => Str

The creation time.


=head2 State => Str

The state of the Connect peer.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags for the Connect peer.


=head2 TransitGatewayAttachmentId => Str

The ID of the Connect attachment.


=head2 TransitGatewayConnectPeerId => Str

The ID of the Connect peer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
