# Generated from json/callargs_class.tt

package Paws::DirectConnect::CreateTransitVirtualInterface;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DirectConnect::Types qw/DirectConnect_NewTransitVirtualInterface/;
  has ConnectionId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NewTransitVirtualInterface => (is => 'ro', isa => DirectConnect_NewTransitVirtualInterface, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateTransitVirtualInterface');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DirectConnect::CreateTransitVirtualInterfaceResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NewTransitVirtualInterface' => 'newTransitVirtualInterface',
                       'ConnectionId' => 'connectionId'
                     },
  'IsRequired' => {
                    'NewTransitVirtualInterface' => 1,
                    'ConnectionId' => 1
                  },
  'types' => {
               'ConnectionId' => {
                                   'type' => 'Str'
                                 },
               'NewTransitVirtualInterface' => {
                                                 'class' => 'Paws::DirectConnect::NewTransitVirtualInterface',
                                                 'type' => 'DirectConnect_NewTransitVirtualInterface'
                                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::CreateTransitVirtualInterface - Arguments for method CreateTransitVirtualInterface on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTransitVirtualInterface on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method CreateTransitVirtualInterface.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTransitVirtualInterface.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $CreateTransitVirtualInterfaceResult =
      $directconnect->CreateTransitVirtualInterface(
      ConnectionId               => 'MyConnectionId',
      NewTransitVirtualInterface => {
        AddressFamily   => 'ipv4',                # values: ipv4, ipv6; OPTIONAL
        AmazonAddress   => 'MyAmazonAddress',     # OPTIONAL
        Asn             => 1,                     # OPTIONAL
        AuthKey         => 'MyBGPAuthKey',        # OPTIONAL
        CustomerAddress => 'MyCustomerAddress',   # OPTIONAL
        DirectConnectGatewayId => 'MyDirectConnectGatewayId',    # OPTIONAL
        Mtu                    => 1,                             # OPTIONAL
        Tags                   => [
          {
            Key   => 'MyTagKey',      # min: 1, max: 128
            Value => 'MyTagValue',    # max: 256; OPTIONAL
          },
          ...
        ],                            # min: 1; OPTIONAL
        VirtualInterfaceName => 'MyVirtualInterfaceName',    # OPTIONAL
        Vlan                 => 1,                           # OPTIONAL
      },

      );

    # Results:
    my $VirtualInterface =
      $CreateTransitVirtualInterfaceResult->VirtualInterface;

 # Returns a L<Paws::DirectConnect::CreateTransitVirtualInterfaceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/CreateTransitVirtualInterface>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionId => Str

The ID of the connection.



=head2 B<REQUIRED> NewTransitVirtualInterface => DirectConnect_NewTransitVirtualInterface

Information about the transit virtual interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTransitVirtualInterface in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

