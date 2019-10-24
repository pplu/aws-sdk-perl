# Generated from default/object.tt
package Paws::DirectConnect::DirectConnectGatewayAssociation;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::DirectConnect::Types qw/DirectConnect_RouteFilterPrefix DirectConnect_AssociatedGateway/;
  has AllowedPrefixesToDirectConnectGateway => (is => 'ro', isa => ArrayRef[DirectConnect_RouteFilterPrefix]);
  has AssociatedGateway => (is => 'ro', isa => DirectConnect_AssociatedGateway);
  has AssociationId => (is => 'ro', isa => Str);
  has AssociationState => (is => 'ro', isa => Str);
  has DirectConnectGatewayId => (is => 'ro', isa => Str);
  has DirectConnectGatewayOwnerAccount => (is => 'ro', isa => Str);
  has StateChangeError => (is => 'ro', isa => Str);
  has VirtualGatewayId => (is => 'ro', isa => Str);
  has VirtualGatewayOwnerAccount => (is => 'ro', isa => Str);
  has VirtualGatewayRegion => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AssociationId' => {
                                    'type' => 'Str'
                                  },
               'DirectConnectGatewayOwnerAccount' => {
                                                       'type' => 'Str'
                                                     },
               'DirectConnectGatewayId' => {
                                             'type' => 'Str'
                                           },
               'AllowedPrefixesToDirectConnectGateway' => {
                                                            'class' => 'Paws::DirectConnect::RouteFilterPrefix',
                                                            'type' => 'ArrayRef[DirectConnect_RouteFilterPrefix]'
                                                          },
               'VirtualGatewayOwnerAccount' => {
                                                 'type' => 'Str'
                                               },
               'AssociationState' => {
                                       'type' => 'Str'
                                     },
               'VirtualGatewayId' => {
                                       'type' => 'Str'
                                     },
               'StateChangeError' => {
                                       'type' => 'Str'
                                     },
               'VirtualGatewayRegion' => {
                                           'type' => 'Str'
                                         },
               'AssociatedGateway' => {
                                        'class' => 'Paws::DirectConnect::AssociatedGateway',
                                        'type' => 'DirectConnect_AssociatedGateway'
                                      }
             },
  'NameInRequest' => {
                       'AssociationId' => 'associationId',
                       'DirectConnectGatewayOwnerAccount' => 'directConnectGatewayOwnerAccount',
                       'DirectConnectGatewayId' => 'directConnectGatewayId',
                       'AllowedPrefixesToDirectConnectGateway' => 'allowedPrefixesToDirectConnectGateway',
                       'VirtualGatewayOwnerAccount' => 'virtualGatewayOwnerAccount',
                       'AssociationState' => 'associationState',
                       'VirtualGatewayId' => 'virtualGatewayId',
                       'StateChangeError' => 'stateChangeError',
                       'VirtualGatewayRegion' => 'virtualGatewayRegion',
                       'AssociatedGateway' => 'associatedGateway'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DirectConnectGatewayAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DirectConnect::DirectConnectGatewayAssociation object:

  $service_obj->Method(Att1 => { AllowedPrefixesToDirectConnectGateway => $value, ..., VirtualGatewayRegion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectConnect::DirectConnectGatewayAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedPrefixesToDirectConnectGateway

=head1 DESCRIPTION

Information about an association between a Direct Connect gateway and a
virtual private gateway or transit gateway.

=head1 ATTRIBUTES


=head2 AllowedPrefixesToDirectConnectGateway => ArrayRef[DirectConnect_RouteFilterPrefix]

  The Amazon VPC prefixes to advertise to the Direct Connect gateway.


=head2 AssociatedGateway => DirectConnect_AssociatedGateway

  Information about the associated gateway.


=head2 AssociationId => Str

  The ID of the Direct Connect gateway association.


=head2 AssociationState => Str

  The state of the association. The following are the possible values:

=over

=item *

C<associating>: The initial state after calling
CreateDirectConnectGatewayAssociation.

=item *

C<associated>: The Direct Connect gateway and virtual private gateway
or transit gateway are successfully associated and ready to pass
traffic.

=item *

C<disassociating>: The initial state after calling
DeleteDirectConnectGatewayAssociation.

=item *

C<disassociated>: The virtual private gateway or transit gateway is
disassociated from the Direct Connect gateway. Traffic flow between the
Direct Connect gateway and virtual private gateway or transit gateway
is stopped.

=back



=head2 DirectConnectGatewayId => Str

  The ID of the Direct Connect gateway.


=head2 DirectConnectGatewayOwnerAccount => Str

  The ID of the AWS account that owns the associated gateway.


=head2 StateChangeError => Str

  The error message if the state of an object failed to advance.


=head2 VirtualGatewayId => Str

  The ID of the virtual private gateway. Applies only to private virtual
interfaces.


=head2 VirtualGatewayOwnerAccount => Str

  The ID of the AWS account that owns the virtual private gateway.


=head2 VirtualGatewayRegion => Str

  The AWS Region where the virtual private gateway is located.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

