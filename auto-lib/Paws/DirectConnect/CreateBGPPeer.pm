
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
AWS Direct Connect service. Use the attributes of this class
as arguments to method CreateBGPPeer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBGPPeer.

As an example:

  $service_obj->CreateBGPPeer(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 NewBGPPeer => L<Paws::DirectConnect::NewBGPPeer>

Detailed information for the BGP peer to be created.

Default: None



=head2 VirtualInterfaceId => Str

The ID of the virtual interface on which the BGP peer will be
provisioned.

Example: dxvif-456abc78

Default: None




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBGPPeer in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

