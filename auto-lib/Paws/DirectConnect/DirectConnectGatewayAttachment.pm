package Paws::DirectConnect::DirectConnectGatewayAttachment;
  use Moose;
  has AttachmentState => (is => 'ro', isa => 'Str', request_name => 'attachmentState', traits => ['NameInRequest']);
  has DirectConnectGatewayId => (is => 'ro', isa => 'Str', request_name => 'directConnectGatewayId', traits => ['NameInRequest']);
  has StateChangeError => (is => 'ro', isa => 'Str', request_name => 'stateChangeError', traits => ['NameInRequest']);
  has VirtualInterfaceId => (is => 'ro', isa => 'Str', request_name => 'virtualInterfaceId', traits => ['NameInRequest']);
  has VirtualInterfaceOwnerAccount => (is => 'ro', isa => 'Str', request_name => 'virtualInterfaceOwnerAccount', traits => ['NameInRequest']);
  has VirtualInterfaceRegion => (is => 'ro', isa => 'Str', request_name => 'virtualInterfaceRegion', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DirectConnectGatewayAttachment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DirectConnect::DirectConnectGatewayAttachment object:

  $service_obj->Method(Att1 => { AttachmentState => $value, ..., VirtualInterfaceRegion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectConnect::DirectConnectGatewayAttachment object:

  $result = $service_obj->Method(...);
  $result->Att1->AttachmentState

=head1 DESCRIPTION

The association between a direct connect gateway and virtual interface.

=head1 ATTRIBUTES


=head2 AttachmentState => Str

  


=head2 DirectConnectGatewayId => Str

  


=head2 StateChangeError => Str

  


=head2 VirtualInterfaceId => Str

  


=head2 VirtualInterfaceOwnerAccount => Str

  The AWS account ID of the owner of the virtual interface.


=head2 VirtualInterfaceRegion => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

