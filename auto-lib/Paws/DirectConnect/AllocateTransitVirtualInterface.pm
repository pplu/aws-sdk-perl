
package Paws::DirectConnect::AllocateTransitVirtualInterface;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' , required => 1);
  has NewTransitVirtualInterfaceAllocation => (is => 'ro', isa => 'Paws::DirectConnect::NewTransitVirtualInterfaceAllocation', traits => ['NameInRequest'], request_name => 'newTransitVirtualInterfaceAllocation' , required => 1);
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccount' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AllocateTransitVirtualInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::AllocateTransitVirtualInterfaceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::AllocateTransitVirtualInterface - Arguments for method AllocateTransitVirtualInterface on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AllocateTransitVirtualInterface on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method AllocateTransitVirtualInterface.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AllocateTransitVirtualInterface.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $AllocateTransitVirtualInterfaceResult =
      $directconnect->AllocateTransitVirtualInterface(
      ConnectionId                         => 'MyConnectionId',
      NewTransitVirtualInterfaceAllocation => {
        AddressFamily   => 'ipv4',                # values: ipv4, ipv6; OPTIONAL
        AmazonAddress   => 'MyAmazonAddress',     # OPTIONAL
        Asn             => 1,                     # OPTIONAL
        AuthKey         => 'MyBGPAuthKey',        # OPTIONAL
        CustomerAddress => 'MyCustomerAddress',   # OPTIONAL
        Mtu             => 1,                     # OPTIONAL
        Tags            => [
          {
            Key   => 'MyTagKey',                  # min: 1, max: 128
            Value => 'MyTagValue',                # max: 256; OPTIONAL
          },
          ...
        ],                                        # min: 1; OPTIONAL
        VirtualInterfaceName => 'MyVirtualInterfaceName',    # OPTIONAL
        Vlan                 => 1,                           # OPTIONAL
      },
      OwnerAccount => 'MyOwnerAccount',

      );

    # Results:
    my $VirtualInterface =
      $AllocateTransitVirtualInterfaceResult->VirtualInterface;

# Returns a L<Paws::DirectConnect::AllocateTransitVirtualInterfaceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/AllocateTransitVirtualInterface>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionId => Str

The ID of the connection on which the transit virtual interface is
provisioned.



=head2 B<REQUIRED> NewTransitVirtualInterfaceAllocation => L<Paws::DirectConnect::NewTransitVirtualInterfaceAllocation>

Information about the transit virtual interface.



=head2 B<REQUIRED> OwnerAccount => Str

The ID of the AWS account that owns the transit virtual interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AllocateTransitVirtualInterface in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

