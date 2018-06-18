
package Paws::DirectConnect::AllocatePublicVirtualInterface;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' , required => 1);
  has NewPublicVirtualInterfaceAllocation => (is => 'ro', isa => 'Paws::DirectConnect::NewPublicVirtualInterfaceAllocation', traits => ['NameInRequest'], request_name => 'newPublicVirtualInterfaceAllocation' , required => 1);
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccount' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AllocatePublicVirtualInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::VirtualInterface');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::AllocatePublicVirtualInterface - Arguments for method AllocatePublicVirtualInterface on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AllocatePublicVirtualInterface on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method AllocatePublicVirtualInterface.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AllocatePublicVirtualInterface.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $VirtualInterface = $directconnect->AllocatePublicVirtualInterface(
      ConnectionId                        => 'MyConnectionId',
      NewPublicVirtualInterfaceAllocation => {
        asn                  => 1,
        virtualInterfaceName => 'MyVirtualInterfaceName',
        vlan                 => 1,
        addressFamily   => 'ipv4',                # values: ipv4, ipv6; OPTIONAL
        amazonAddress   => 'MyAmazonAddress',     # OPTIONAL
        authKey         => 'MyBGPAuthKey',        # OPTIONAL
        customerAddress => 'MyCustomerAddress',   # OPTIONAL
        routeFilterPrefixes => [
          {
            cidr => 'MyCIDR',                     # OPTIONAL
          },
          ...
        ],                                        # OPTIONAL
      },
      OwnerAccount => 'MyOwnerAccount',

    );

    # Results:
    my $addressFamily          = $VirtualInterface->addressFamily;
    my $amazonAddress          = $VirtualInterface->amazonAddress;
    my $amazonSideAsn          = $VirtualInterface->amazonSideAsn;
    my $asn                    = $VirtualInterface->asn;
    my $authKey                = $VirtualInterface->authKey;
    my $bgpPeers               = $VirtualInterface->bgpPeers;
    my $connectionId           = $VirtualInterface->connectionId;
    my $customerAddress        = $VirtualInterface->customerAddress;
    my $customerRouterConfig   = $VirtualInterface->customerRouterConfig;
    my $directConnectGatewayId = $VirtualInterface->directConnectGatewayId;
    my $location               = $VirtualInterface->location;
    my $ownerAccount           = $VirtualInterface->ownerAccount;
    my $routeFilterPrefixes    = $VirtualInterface->routeFilterPrefixes;
    my $virtualGatewayId       = $VirtualInterface->virtualGatewayId;
    my $virtualInterfaceId     = $VirtualInterface->virtualInterfaceId;
    my $virtualInterfaceName   = $VirtualInterface->virtualInterfaceName;
    my $virtualInterfaceState  = $VirtualInterface->virtualInterfaceState;
    my $virtualInterfaceType   = $VirtualInterface->virtualInterfaceType;
    my $vlan                   = $VirtualInterface->vlan;

    # Returns a L<Paws::DirectConnect::VirtualInterface> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/AllocatePublicVirtualInterface>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionId => Str

The connection ID on which the public virtual interface is provisioned.

Default: None



=head2 B<REQUIRED> NewPublicVirtualInterfaceAllocation => L<Paws::DirectConnect::NewPublicVirtualInterfaceAllocation>

Detailed information for the public virtual interface to be
provisioned.

Default: None



=head2 B<REQUIRED> OwnerAccount => Str

The AWS account that will own the new public virtual interface.

Default: None




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AllocatePublicVirtualInterface in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

