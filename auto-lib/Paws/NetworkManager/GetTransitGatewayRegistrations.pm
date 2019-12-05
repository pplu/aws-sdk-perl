
package Paws::NetworkManager::GetTransitGatewayRegistrations;
  use Moose;
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TransitGatewayArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'transitGatewayArns');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTransitGatewayRegistrations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/transit-gateway-registrations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::GetTransitGatewayRegistrationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetTransitGatewayRegistrations - Arguments for method GetTransitGatewayRegistrations on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTransitGatewayRegistrations on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method GetTransitGatewayRegistrations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTransitGatewayRegistrations.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $GetTransitGatewayRegistrationsResponse =
      $networkmanager->GetTransitGatewayRegistrations(
      GlobalNetworkId    => 'MyString',
      MaxResults         => 1,                      # OPTIONAL
      NextToken          => 'MyString',             # OPTIONAL
      TransitGatewayArns => [ 'MyString', ... ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $GetTransitGatewayRegistrationsResponse->NextToken;
    my $TransitGatewayRegistrations =
      $GetTransitGatewayRegistrationsResponse->TransitGatewayRegistrations;

# Returns a L<Paws::NetworkManager::GetTransitGatewayRegistrationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/GetTransitGatewayRegistrations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

The token for the next page of results.



=head2 TransitGatewayArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of one or more transit gateways. The
maximum is 10.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTransitGatewayRegistrations in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

