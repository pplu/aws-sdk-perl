
package Paws::DirectConnect::DescribeDirectConnectGatewayAssociationProposals;
  use Moose;
  has AssociatedGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'associatedGatewayId' );
  has DirectConnectGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'directConnectGatewayId' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ProposalId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'proposalId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDirectConnectGatewayAssociationProposals');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::DescribeDirectConnectGatewayAssociationProposalsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeDirectConnectGatewayAssociationProposals - Arguments for method DescribeDirectConnectGatewayAssociationProposals on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDirectConnectGatewayAssociationProposals on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method DescribeDirectConnectGatewayAssociationProposals.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDirectConnectGatewayAssociationProposals.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $DescribeDirectConnectGatewayAssociationProposalsResult =
      $directconnect->DescribeDirectConnectGatewayAssociationProposals(
      AssociatedGatewayId    => 'MyAssociatedGatewayId',       # OPTIONAL
      DirectConnectGatewayId => 'MyDirectConnectGatewayId',    # OPTIONAL
      MaxResults             => 1,                             # OPTIONAL
      NextToken              => 'MyPaginationToken',           # OPTIONAL
      ProposalId => 'MyDirectConnectGatewayAssociationProposalId',    # OPTIONAL
      );

    # Results:
    my $DirectConnectGatewayAssociationProposals =
      $DescribeDirectConnectGatewayAssociationProposalsResult
      ->DirectConnectGatewayAssociationProposals;
    my $NextToken =
      $DescribeDirectConnectGatewayAssociationProposalsResult->NextToken;

# Returns a L<Paws::DirectConnect::DescribeDirectConnectGatewayAssociationProposalsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/DescribeDirectConnectGatewayAssociationProposals>

=head1 ATTRIBUTES


=head2 AssociatedGatewayId => Str

The ID of the associated gateway.



=head2 DirectConnectGatewayId => Str

The ID of the Direct Connect gateway.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.

If C<MaxResults> is given a value larger than 100, only 100 results are
returned.



=head2 NextToken => Str

The token for the next page of results.



=head2 ProposalId => Str

The ID of the proposal.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDirectConnectGatewayAssociationProposals in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

