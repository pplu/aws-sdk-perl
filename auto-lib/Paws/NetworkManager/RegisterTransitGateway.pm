
package Paws::NetworkManager::RegisterTransitGateway;
  use Moose;
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has TransitGatewayArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterTransitGateway');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/transit-gateway-registrations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::RegisterTransitGatewayResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::RegisterTransitGateway - Arguments for method RegisterTransitGateway on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterTransitGateway on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method RegisterTransitGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterTransitGateway.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $RegisterTransitGatewayResponse =
      $networkmanager->RegisterTransitGateway(
      GlobalNetworkId   => 'MyString',
      TransitGatewayArn => 'MyString',

      );

    # Results:
    my $TransitGatewayRegistration =
      $RegisterTransitGatewayResponse->TransitGatewayRegistration;

    # Returns a L<Paws::NetworkManager::RegisterTransitGatewayResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/RegisterTransitGateway>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 B<REQUIRED> TransitGatewayArn => Str

The Amazon Resource Name (ARN) of the transit gateway. For more
information, see Resources Defined by Amazon EC2
(https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2.html#amazonec2-resources-for-iam-policies).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterTransitGateway in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

