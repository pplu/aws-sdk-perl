
package Paws::DirectConnect::CreateBGPPeer;
  use Moose;
  has NewBGPPeer => (is => 'ro', isa => 'Paws::DirectConnect::NewBGPPeer', traits => ['NameInRequest'], request_name => 'newBGPPeer' );
  has VirtualInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBGPPeer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::CreateBGPPeerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::CreateBGPPeer - Arguments for method CreateBGPPeer on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBGPPeer on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method CreateBGPPeer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBGPPeer.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $CreateBGPPeerResponse = $directconnect->CreateBGPPeer(
      NewBGPPeer => {
        AddressFamily   => 'ipv4',                # values: ipv4, ipv6; OPTIONAL
        AmazonAddress   => 'MyAmazonAddress',     # OPTIONAL
        Asn             => 1,                     # OPTIONAL
        AuthKey         => 'MyBGPAuthKey',        # OPTIONAL
        CustomerAddress => 'MyCustomerAddress',   # OPTIONAL
      },    # OPTIONAL
      VirtualInterfaceId => 'MyVirtualInterfaceId',    # OPTIONAL
    );

    # Results:
    my $VirtualInterface = $CreateBGPPeerResponse->VirtualInterface;

    # Returns a L<Paws::DirectConnect::CreateBGPPeerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/CreateBGPPeer>

=head1 ATTRIBUTES


=head2 NewBGPPeer => L<Paws::DirectConnect::NewBGPPeer>

Information about the BGP peer.



=head2 VirtualInterfaceId => Str

The ID of the virtual interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBGPPeer in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

