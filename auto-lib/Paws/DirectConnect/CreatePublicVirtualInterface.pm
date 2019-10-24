# Generated from json/callargs_class.tt

package Paws::DirectConnect::CreatePublicVirtualInterface;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DirectConnect::Types qw/DirectConnect_NewPublicVirtualInterface/;
  has ConnectionId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NewPublicVirtualInterface => (is => 'ro', isa => DirectConnect_NewPublicVirtualInterface, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreatePublicVirtualInterface');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DirectConnect::VirtualInterface');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NewPublicVirtualInterface' => {
                                                'class' => 'Paws::DirectConnect::NewPublicVirtualInterface',
                                                'type' => 'DirectConnect_NewPublicVirtualInterface'
                                              },
               'ConnectionId' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'NewPublicVirtualInterface' => 'newPublicVirtualInterface',
                       'ConnectionId' => 'connectionId'
                     },
  'IsRequired' => {
                    'NewPublicVirtualInterface' => 1,
                    'ConnectionId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::CreatePublicVirtualInterface - Arguments for method CreatePublicVirtualInterface on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePublicVirtualInterface on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method CreatePublicVirtualInterface.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePublicVirtualInterface.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $VirtualInterface = $directconnect->CreatePublicVirtualInterface(
      ConnectionId              => 'MyConnectionId',
      NewPublicVirtualInterface => {
        Asn                  => 1,
        VirtualInterfaceName => 'MyVirtualInterfaceName',
        Vlan                 => 1,
        AddressFamily   => 'ipv4',                # values: ipv4, ipv6; OPTIONAL
        AmazonAddress   => 'MyAmazonAddress',     # OPTIONAL
        AuthKey         => 'MyBGPAuthKey',        # OPTIONAL
        CustomerAddress => 'MyCustomerAddress',   # OPTIONAL
        RouteFilterPrefixes => [
          {
            Cidr => 'MyCIDR',                     # OPTIONAL
          },
          ...
        ],                                        # OPTIONAL
        Tags => [
          {
            Key   => 'MyTagKey',                  # min: 1, max: 128
            Value => 'MyTagValue',                # max: 256; OPTIONAL
          },
          ...
        ],                                        # min: 1; OPTIONAL
      },

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
    my $Tags                   = $VirtualInterface->Tags;
    my $VirtualGatewayId       = $VirtualInterface->VirtualGatewayId;
    my $VirtualInterfaceId     = $VirtualInterface->VirtualInterfaceId;
    my $VirtualInterfaceName   = $VirtualInterface->VirtualInterfaceName;
    my $VirtualInterfaceState  = $VirtualInterface->VirtualInterfaceState;
    my $VirtualInterfaceType   = $VirtualInterface->VirtualInterfaceType;
    my $Vlan                   = $VirtualInterface->Vlan;

    # Returns a L<Paws::DirectConnect::VirtualInterface> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/CreatePublicVirtualInterface>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionId => Str

The ID of the connection.



=head2 B<REQUIRED> NewPublicVirtualInterface => DirectConnect_NewPublicVirtualInterface

Information about the public virtual interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePublicVirtualInterface in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

