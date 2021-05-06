
package Paws::NetworkManager::DisassociateCustomerGateway;
  use Moose;
  has CustomerGatewayArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'customerGatewayArn', required => 1);
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateCustomerGateway');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/customer-gateway-associations/{customerGatewayArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::DisassociateCustomerGatewayResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::DisassociateCustomerGateway - Arguments for method DisassociateCustomerGateway on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateCustomerGateway on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method DisassociateCustomerGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateCustomerGateway.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $DisassociateCustomerGatewayResponse =
      $networkmanager->DisassociateCustomerGateway(
      CustomerGatewayArn => 'MyString',
      GlobalNetworkId    => 'MyString',

      );

    # Results:
    my $CustomerGatewayAssociation =
      $DisassociateCustomerGatewayResponse->CustomerGatewayAssociation;

# Returns a L<Paws::NetworkManager::DisassociateCustomerGatewayResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/DisassociateCustomerGateway>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomerGatewayArn => Str

The Amazon Resource Name (ARN) of the customer gateway. For more
information, see Resources Defined by Amazon EC2
(https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2.html#amazonec2-resources-for-iam-policies).



=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateCustomerGateway in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

