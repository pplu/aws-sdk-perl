package Paws::DirectConnect::DirectConnectGatewayAssociationProposal;
  use Moose;
  has AssociatedGateway => (is => 'ro', isa => 'Paws::DirectConnect::AssociatedGateway', request_name => 'associatedGateway', traits => ['NameInRequest']);
  has DirectConnectGatewayId => (is => 'ro', isa => 'Str', request_name => 'directConnectGatewayId', traits => ['NameInRequest']);
  has DirectConnectGatewayOwnerAccount => (is => 'ro', isa => 'Str', request_name => 'directConnectGatewayOwnerAccount', traits => ['NameInRequest']);
  has ExistingAllowedPrefixesToDirectConnectGateway => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::RouteFilterPrefix]', request_name => 'existingAllowedPrefixesToDirectConnectGateway', traits => ['NameInRequest']);
  has ProposalId => (is => 'ro', isa => 'Str', request_name => 'proposalId', traits => ['NameInRequest']);
  has ProposalState => (is => 'ro', isa => 'Str', request_name => 'proposalState', traits => ['NameInRequest']);
  has RequestedAllowedPrefixesToDirectConnectGateway => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::RouteFilterPrefix]', request_name => 'requestedAllowedPrefixesToDirectConnectGateway', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DirectConnectGatewayAssociationProposal

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DirectConnect::DirectConnectGatewayAssociationProposal object:

  $service_obj->Method(Att1 => { AssociatedGateway => $value, ..., RequestedAllowedPrefixesToDirectConnectGateway => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectConnect::DirectConnectGatewayAssociationProposal object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatedGateway

=head1 DESCRIPTION

Information about the proposal request to attach a virtual private
gateway to a DDirect Connect gateway.

=head1 ATTRIBUTES


=head2 AssociatedGateway => L<Paws::DirectConnect::AssociatedGateway>

  Information about the associated virtual private gateway.


=head2 DirectConnectGatewayId => Str

  The ID of the Direct Connect gateway.


=head2 DirectConnectGatewayOwnerAccount => Str

  The ID of the AWS account that owns the Direct Connect gateway.


=head2 ExistingAllowedPrefixesToDirectConnectGateway => ArrayRef[L<Paws::DirectConnect::RouteFilterPrefix>]

  The existing Amazon VPC prefixes advertised to the Direct Connect
gateway.


=head2 ProposalId => Str

  The ID of the association proposal.


=head2 ProposalState => Str

  The state of the proposal. The following are possible values:

=over

=item *

C<accepted>: The proposal has been accepted. The Direct Connect gateway
association is available to use in this state.

=item *

C<deleted>: The proposal has been deleted by the owner that made the
proposal. The Direct Connect gateway association cannot be used in this
state.

=item *

C<requested>: The proposal has been requested. The Direct Connect
gateway association cannot be used in this state.

=back



=head2 RequestedAllowedPrefixesToDirectConnectGateway => ArrayRef[L<Paws::DirectConnect::RouteFilterPrefix>]

  The Amazon VPC prefixes to advertise to the Direct Connect gateway.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

