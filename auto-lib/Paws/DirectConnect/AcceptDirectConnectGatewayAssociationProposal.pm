# Generated from json/callargs_class.tt

package Paws::DirectConnect::AcceptDirectConnectGatewayAssociationProposal;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_RouteFilterPrefix/;
  has AssociatedGatewayOwnerAccount => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DirectConnectGatewayId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has OverrideAllowedPrefixesToDirectConnectGateway => (is => 'ro', isa => ArrayRef[DirectConnect_RouteFilterPrefix], predicate => 1);
  has ProposalId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AcceptDirectConnectGatewayAssociationProposal');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DirectConnect::AcceptDirectConnectGatewayAssociationProposalResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'OverrideAllowedPrefixesToDirectConnectGateway' => 'overrideAllowedPrefixesToDirectConnectGateway',
                       'DirectConnectGatewayId' => 'directConnectGatewayId',
                       'AssociatedGatewayOwnerAccount' => 'associatedGatewayOwnerAccount',
                       'ProposalId' => 'proposalId'
                     },
  'IsRequired' => {
                    'ProposalId' => 1,
                    'AssociatedGatewayOwnerAccount' => 1,
                    'DirectConnectGatewayId' => 1
                  },
  'types' => {
               'ProposalId' => {
                                 'type' => 'Str'
                               },
               'AssociatedGatewayOwnerAccount' => {
                                                    'type' => 'Str'
                                                  },
               'DirectConnectGatewayId' => {
                                             'type' => 'Str'
                                           },
               'OverrideAllowedPrefixesToDirectConnectGateway' => {
                                                                    'class' => 'Paws::DirectConnect::RouteFilterPrefix',
                                                                    'type' => 'ArrayRef[DirectConnect_RouteFilterPrefix]'
                                                                  }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::AcceptDirectConnectGatewayAssociationProposal - Arguments for method AcceptDirectConnectGatewayAssociationProposal on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptDirectConnectGatewayAssociationProposal on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method AcceptDirectConnectGatewayAssociationProposal.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptDirectConnectGatewayAssociationProposal.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $AcceptDirectConnectGatewayAssociationProposalResult =
      $directconnect->AcceptDirectConnectGatewayAssociationProposal(
      AssociatedGatewayOwnerAccount => 'MyOwnerAccount',
      DirectConnectGatewayId        => 'MyDirectConnectGatewayId',
      ProposalId => 'MyDirectConnectGatewayAssociationProposalId',
      OverrideAllowedPrefixesToDirectConnectGateway => [
        {
          Cidr => 'MyCIDR',    # OPTIONAL
        },
        ...
      ],                       # OPTIONAL
      );

    # Results:
    my $DirectConnectGatewayAssociation =
      $AcceptDirectConnectGatewayAssociationProposalResult
      ->DirectConnectGatewayAssociation;

# Returns a L<Paws::DirectConnect::AcceptDirectConnectGatewayAssociationProposalResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/AcceptDirectConnectGatewayAssociationProposal>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociatedGatewayOwnerAccount => Str

The ID of the AWS account that owns the virtual private gateway or
transit gateway.



=head2 B<REQUIRED> DirectConnectGatewayId => Str

The ID of the Direct Connect gateway.



=head2 OverrideAllowedPrefixesToDirectConnectGateway => ArrayRef[DirectConnect_RouteFilterPrefix]

Overrides the Amazon VPC prefixes advertised to the Direct Connect
gateway.

For information about how to set the prefixes, see Allowed Prefixes
(https://docs.aws.amazon.com/directconnect/latest/UserGuide/multi-account-associate-vgw.html#allowed-prefixes)
in the I<AWS Direct Connect User Guide>.



=head2 B<REQUIRED> ProposalId => Str

The ID of the request proposal.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptDirectConnectGatewayAssociationProposal in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

