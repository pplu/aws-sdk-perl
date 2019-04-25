
package Paws::DirectConnect::DeleteBGPPeer;
  use Moose;
  has Asn => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'asn' );
  has BgpPeerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bgpPeerId' );
  has CustomerAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerAddress' );
  has VirtualInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBGPPeer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::DeleteBGPPeerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DeleteBGPPeer - Arguments for method DeleteBGPPeer on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBGPPeer on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method DeleteBGPPeer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBGPPeer.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $DeleteBGPPeerResponse = $directconnect->DeleteBGPPeer(
      Asn                => 1,                         # OPTIONAL
      BgpPeerId          => 'MyBGPPeerId',             # OPTIONAL
      CustomerAddress    => 'MyCustomerAddress',       # OPTIONAL
      VirtualInterfaceId => 'MyVirtualInterfaceId',    # OPTIONAL
    );

    # Results:
    my $VirtualInterface = $DeleteBGPPeerResponse->VirtualInterface;

    # Returns a L<Paws::DirectConnect::DeleteBGPPeerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/DeleteBGPPeer>

=head1 ATTRIBUTES


=head2 Asn => Int

The autonomous system (AS) number for Border Gateway Protocol (BGP)
configuration.



=head2 BgpPeerId => Str

The ID of the BGP peer.



=head2 CustomerAddress => Str

The IP address assigned to the customer interface.



=head2 VirtualInterfaceId => Str

The ID of the virtual interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBGPPeer in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

