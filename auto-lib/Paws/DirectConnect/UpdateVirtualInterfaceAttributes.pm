
package Paws::DirectConnect::UpdateVirtualInterfaceAttributes;
  use Moose;
  has Mtu => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'mtu' );
  has VirtualInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVirtualInterfaceAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::VirtualInterface');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::UpdateVirtualInterfaceAttributes - Arguments for method UpdateVirtualInterfaceAttributes on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVirtualInterfaceAttributes on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method UpdateVirtualInterfaceAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVirtualInterfaceAttributes.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $VirtualInterface = $directconnect->UpdateVirtualInterfaceAttributes(
      VirtualInterfaceId => 'MyVirtualInterfaceId',
      Mtu                => 1,                        # OPTIONAL
    );

    # Results:
    my $AddressFamily          = $VirtualInterface->AddressFamily;
    my $AmazonAddress          = $VirtualInterface->AmazonAddress;
    my $AmazonSideAsn          = $VirtualInterface->AmazonSideAsn;
    my $Asn                    = $VirtualInterface->Asn;
    my $AuthKey                = $VirtualInterface->AuthKey;
    my $AwsDeviceV2            = $VirtualInterface->AwsDeviceV2;
    my $BgpPeers               = $VirtualInterface->BgpPeers;
    my $ConnectionId           = $VirtualInterface->ConnectionId;
    my $CustomerAddress        = $VirtualInterface->CustomerAddress;
    my $CustomerRouterConfig   = $VirtualInterface->CustomerRouterConfig;
    my $DirectConnectGatewayId = $VirtualInterface->DirectConnectGatewayId;
    my $JumboFrameCapable      = $VirtualInterface->JumboFrameCapable;
    my $Location               = $VirtualInterface->Location;
    my $Mtu                    = $VirtualInterface->Mtu;
    my $OwnerAccount           = $VirtualInterface->OwnerAccount;
    my $Region                 = $VirtualInterface->Region;
    my $RouteFilterPrefixes    = $VirtualInterface->RouteFilterPrefixes;
    my $VirtualGatewayId       = $VirtualInterface->VirtualGatewayId;
    my $VirtualInterfaceId     = $VirtualInterface->VirtualInterfaceId;
    my $VirtualInterfaceName   = $VirtualInterface->VirtualInterfaceName;
    my $VirtualInterfaceState  = $VirtualInterface->VirtualInterfaceState;
    my $VirtualInterfaceType   = $VirtualInterface->VirtualInterfaceType;
    my $Vlan                   = $VirtualInterface->Vlan;

    # Returns a L<Paws::DirectConnect::VirtualInterface> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/UpdateVirtualInterfaceAttributes>

=head1 ATTRIBUTES


=head2 Mtu => Int

The maximum transmission unit (MTU), in bytes. The supported values are
1500 and 9001. The default value is 1500.



=head2 B<REQUIRED> VirtualInterfaceId => Str

The ID of the virtual private interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVirtualInterfaceAttributes in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

