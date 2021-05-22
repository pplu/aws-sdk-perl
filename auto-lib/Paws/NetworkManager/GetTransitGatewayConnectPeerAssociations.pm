
package Paws::NetworkManager::GetTransitGatewayConnectPeerAssociations;
  use Moose;
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TransitGatewayConnectPeerArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'transitGatewayConnectPeerArns');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTransitGatewayConnectPeerAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/transit-gateway-connect-peer-associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::GetTransitGatewayConnectPeerAssociationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetTransitGatewayConnectPeerAssociations - Arguments for method GetTransitGatewayConnectPeerAssociations on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTransitGatewayConnectPeerAssociations on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method GetTransitGatewayConnectPeerAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTransitGatewayConnectPeerAssociations.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $GetTransitGatewayConnectPeerAssociationsResponse =
      $networkmanager->GetTransitGatewayConnectPeerAssociations(
      GlobalNetworkId               => 'MyString',
      MaxResults                    => 1,                      # OPTIONAL
      NextToken                     => 'MyString',             # OPTIONAL
      TransitGatewayConnectPeerArns => [ 'MyString', ... ],    # OPTIONAL
      );

    # Results:
    my $NextToken =
      $GetTransitGatewayConnectPeerAssociationsResponse->NextToken;
    my $TransitGatewayConnectPeerAssociations =
      $GetTransitGatewayConnectPeerAssociationsResponse
      ->TransitGatewayConnectPeerAssociations;

# Returns a L<Paws::NetworkManager::GetTransitGatewayConnectPeerAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/GetTransitGatewayConnectPeerAssociations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

The token for the next page of results.



=head2 TransitGatewayConnectPeerArns => ArrayRef[Str|Undef]

One or more transit gateway Connect peer Amazon Resource Names (ARNs).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTransitGatewayConnectPeerAssociations in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

