
package Paws::ManagedBlockchain::ListNodes;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has MemberId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'memberId', required => 1);
  has NetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'networkId', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListNodes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/networks/{networkId}/members/{memberId}/nodes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchain::ListNodesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ListNodes - Arguments for method ListNodes on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListNodes on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method ListNodes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListNodes.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $ListNodesOutput = $managedblockchain->ListNodes(
      MemberId   => 'MyResourceIdString',
      NetworkId  => 'MyResourceIdString',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      Status     => 'CREATING',             # OPTIONAL
    );

    # Results:
    my $NextToken = $ListNodesOutput->NextToken;
    my $Nodes     = $ListNodesOutput->Nodes;

    # Returns a L<Paws::ManagedBlockchain::ListNodesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/ListNodes>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of nodes to list.



=head2 B<REQUIRED> MemberId => Str

The unique identifier of the member who owns the nodes to list.



=head2 B<REQUIRED> NetworkId => Str

The unique identifier of the network for which to list nodes.



=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.



=head2 Status => Str

An optional status specifier. If provided, only nodes currently in this
status are listed.

Valid values are: C<"CREATING">, C<"AVAILABLE">, C<"CREATE_FAILED">, C<"DELETING">, C<"DELETED">, C<"FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListNodes in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

