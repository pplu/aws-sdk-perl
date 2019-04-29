
package Paws::DirectConnect::AcceptDirectConnectGatewayAssociationProposal;
  use Moose;
  has AssociatedGatewayOwnerAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'associatedGatewayOwnerAccount' , required => 1);
  has DirectConnectGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'directConnectGatewayId' , required => 1);
  has OverrideAllowedPrefixesToDirectConnectGateway => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::RouteFilterPrefix]', traits => ['NameInRequest'], request_name => 'overrideAllowedPrefixesToDirectConnectGateway' );
  has ProposalId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'proposalId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptDirectConnectGatewayAssociationProposal');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::AcceptDirectConnectGatewayAssociationProposalResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
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

The ID of the AWS account that owns the virtual private gateway.



=head2 B<REQUIRED> DirectConnectGatewayId => Str

The ID of the Direct Connect gateway.



=head2 OverrideAllowedPrefixesToDirectConnectGateway => ArrayRef[L<Paws::DirectConnect::RouteFilterPrefix>]

Overrides the Amazon VPC prefixes advertised to the Direct Connect
gateway.



=head2 B<REQUIRED> ProposalId => Str

The ID of the request proposal.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptDirectConnectGatewayAssociationProposal in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

