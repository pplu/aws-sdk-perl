# Generated from default/object.tt
package Paws::DirectConnect::DirectConnectGatewayAttachment;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DirectConnect::Types qw//;
  has AttachmentState => (is => 'ro', isa => Str);
  has AttachmentType => (is => 'ro', isa => Str);
  has DirectConnectGatewayId => (is => 'ro', isa => Str);
  has StateChangeError => (is => 'ro', isa => Str);
  has VirtualInterfaceId => (is => 'ro', isa => Str);
  has VirtualInterfaceOwnerAccount => (is => 'ro', isa => Str);
  has VirtualInterfaceRegion => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VirtualInterfaceId' => {
                                         'type' => 'Str'
                                       },
               'StateChangeError' => {
                                       'type' => 'Str'
                                     },
               'DirectConnectGatewayId' => {
                                             'type' => 'Str'
                                           },
               'AttachmentType' => {
                                     'type' => 'Str'
                                   },
               'VirtualInterfaceOwnerAccount' => {
                                                   'type' => 'Str'
                                                 },
               'VirtualInterfaceRegion' => {
                                             'type' => 'Str'
                                           },
               'AttachmentState' => {
                                      'type' => 'Str'
                                    }
             },
  'NameInRequest' => {
                       'VirtualInterfaceId' => 'virtualInterfaceId',
                       'StateChangeError' => 'stateChangeError',
                       'DirectConnectGatewayId' => 'directConnectGatewayId',
                       'AttachmentType' => 'attachmentType',
                       'VirtualInterfaceOwnerAccount' => 'virtualInterfaceOwnerAccount',
                       'VirtualInterfaceRegion' => 'virtualInterfaceRegion',
                       'AttachmentState' => 'attachmentState'
                     }
}
;
    return $Params_map;
  }


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

Information about an attachment between a Direct Connect gateway and a
virtual interface.

=head1 ATTRIBUTES


=head2 AttachmentState => Str

  The state of the attachment. The following are the possible values:

=over

=item *

C<attaching>: The initial state after a virtual interface is created
using the Direct Connect gateway.

=item *

C<attached>: The Direct Connect gateway and virtual interface are
attached and ready to pass traffic.

=item *

C<detaching>: The initial state after calling DeleteVirtualInterface.

=item *

C<detached>: The virtual interface is detached from the Direct Connect
gateway. Traffic flow between the Direct Connect gateway and virtual
interface is stopped.

=back



=head2 AttachmentType => Str

  The interface type.


=head2 DirectConnectGatewayId => Str

  The ID of the Direct Connect gateway.


=head2 StateChangeError => Str

  The error message if the state of an object failed to advance.


=head2 VirtualInterfaceId => Str

  The ID of the virtual interface.


=head2 VirtualInterfaceOwnerAccount => Str

  The ID of the AWS account that owns the virtual interface.


=head2 VirtualInterfaceRegion => Str

  The AWS Region where the virtual interface is located.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

