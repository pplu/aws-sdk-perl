
package Paws::NetworkManager::DisassociateTransitGatewayConnectPeer;
  use Moose;
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has TransitGatewayConnectPeerArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'transitGatewayConnectPeerArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateTransitGatewayConnectPeer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/transit-gateway-connect-peer-associations/{transitGatewayConnectPeerArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::DisassociateTransitGatewayConnectPeerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::DisassociateTransitGatewayConnectPeer - Arguments for method DisassociateTransitGatewayConnectPeer on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateTransitGatewayConnectPeer on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method DisassociateTransitGatewayConnectPeer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateTransitGatewayConnectPeer.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $DisassociateTransitGatewayConnectPeerResponse =
      $networkmanager->DisassociateTransitGatewayConnectPeer(
      GlobalNetworkId              => 'MyString',
      TransitGatewayConnectPeerArn => 'MyString',

      );

    # Results:
    my $TransitGatewayConnectPeerAssociation =
      $DisassociateTransitGatewayConnectPeerResponse
      ->TransitGatewayConnectPeerAssociation;

# Returns a L<Paws::NetworkManager::DisassociateTransitGatewayConnectPeerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/DisassociateTransitGatewayConnectPeer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 B<REQUIRED> TransitGatewayConnectPeerArn => Str

The Amazon Resource Name (ARN) of the transit gateway Connect peer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateTransitGatewayConnectPeer in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

