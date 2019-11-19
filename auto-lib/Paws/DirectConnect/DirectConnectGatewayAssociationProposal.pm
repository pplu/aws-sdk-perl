# Generated from default/object.tt
package Paws::DirectConnect::DirectConnectGatewayAssociationProposal;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_AssociatedGateway DirectConnect_RouteFilterPrefix/;
  has AssociatedGateway => (is => 'ro', isa => DirectConnect_AssociatedGateway);
  has DirectConnectGatewayId => (is => 'ro', isa => Str);
  has DirectConnectGatewayOwnerAccount => (is => 'ro', isa => Str);
  has ExistingAllowedPrefixesToDirectConnectGateway => (is => 'ro', isa => ArrayRef[DirectConnect_RouteFilterPrefix]);
  has ProposalId => (is => 'ro', isa => Str);
  has ProposalState => (is => 'ro', isa => Str);
  has RequestedAllowedPrefixesToDirectConnectGateway => (is => 'ro', isa => ArrayRef[DirectConnect_RouteFilterPrefix]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DirectConnectGatewayOwnerAccount' => 'directConnectGatewayOwnerAccount',
                       'AssociatedGateway' => 'associatedGateway',
                       'ExistingAllowedPrefixesToDirectConnectGateway' => 'existingAllowedPrefixesToDirectConnectGateway',
                       'RequestedAllowedPrefixesToDirectConnectGateway' => 'requestedAllowedPrefixesToDirectConnectGateway',
                       'DirectConnectGatewayId' => 'directConnectGatewayId',
                       'ProposalState' => 'proposalState',
                       'ProposalId' => 'proposalId'
                     },
  'types' => {
               'ProposalState' => {
                                    'type' => 'Str'
                                  },
               'ExistingAllowedPrefixesToDirectConnectGateway' => {
                                                                    'type' => 'ArrayRef[DirectConnect_RouteFilterPrefix]',
                                                                    'class' => 'Paws::DirectConnect::RouteFilterPrefix'
                                                                  },
               'DirectConnectGatewayId' => {
                                             'type' => 'Str'
                                           },
               'RequestedAllowedPrefixesToDirectConnectGateway' => {
                                                                     'type' => 'ArrayRef[DirectConnect_RouteFilterPrefix]',
                                                                     'class' => 'Paws::DirectConnect::RouteFilterPrefix'
                                                                   },
               'ProposalId' => {
                                 'type' => 'Str'
                               },
               'DirectConnectGatewayOwnerAccount' => {
                                                       'type' => 'Str'
                                                     },
               'AssociatedGateway' => {
                                        'type' => 'DirectConnect_AssociatedGateway',
                                        'class' => 'Paws::DirectConnect::AssociatedGateway'
                                      }
             }
}
;
    return $Params_map;
  }


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
gateway to a Direct Connect gateway.

=head1 ATTRIBUTES


=head2 AssociatedGateway => DirectConnect_AssociatedGateway

  Information about the associated gateway.


=head2 DirectConnectGatewayId => Str

  The ID of the Direct Connect gateway.


=head2 DirectConnectGatewayOwnerAccount => Str

  The ID of the AWS account that owns the Direct Connect gateway.


=head2 ExistingAllowedPrefixesToDirectConnectGateway => ArrayRef[DirectConnect_RouteFilterPrefix]

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



=head2 RequestedAllowedPrefixesToDirectConnectGateway => ArrayRef[DirectConnect_RouteFilterPrefix]

  The Amazon VPC prefixes to advertise to the Direct Connect gateway.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

