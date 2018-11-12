package Paws::DirectConnect::DirectConnectGatewayAssociation;
  use Moose;
  has AssociationState => (is => 'ro', isa => 'Str', request_name => 'associationState', traits => ['NameInRequest']);
  has DirectConnectGatewayId => (is => 'ro', isa => 'Str', request_name => 'directConnectGatewayId', traits => ['NameInRequest']);
  has StateChangeError => (is => 'ro', isa => 'Str', request_name => 'stateChangeError', traits => ['NameInRequest']);
  has VirtualGatewayId => (is => 'ro', isa => 'Str', request_name => 'virtualGatewayId', traits => ['NameInRequest']);
  has VirtualGatewayOwnerAccount => (is => 'ro', isa => 'Str', request_name => 'virtualGatewayOwnerAccount', traits => ['NameInRequest']);
  has VirtualGatewayRegion => (is => 'ro', isa => 'Str', request_name => 'virtualGatewayRegion', traits => ['NameInRequest']);
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

  $service_obj->Method(Att1 => { AssociationState => $value, ..., VirtualGatewayRegion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectConnect::DirectConnectGatewayAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationState

=head1 DESCRIPTION

Information about an association between a Direct Connect gateway and a
virtual private gateway.

=head1 ATTRIBUTES


=head2 AssociationState => Str

  The state of the association. The following are the possible values:

=over

=item *

C<associating>: The initial state after calling
CreateDirectConnectGatewayAssociation.

=item *

C<associated>: The Direct Connect gateway and virtual private gateway
are successfully associated and ready to pass traffic.

=item *

C<disassociating>: The initial state after calling
DeleteDirectConnectGatewayAssociation.

=item *

C<disassociated>: The virtual private gateway is disassociated from the
Direct Connect gateway. Traffic flow between the Direct Connect gateway
and virtual private gateway is stopped.

=back



=head2 DirectConnectGatewayId => Str

  The ID of the Direct Connect gateway.


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

