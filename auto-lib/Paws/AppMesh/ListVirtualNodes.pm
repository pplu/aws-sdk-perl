
package Paws::AppMesh::ListVirtualNodes;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVirtualNodes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meshes/{meshName}/virtualNodes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::ListVirtualNodesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ListVirtualNodes - Arguments for method ListVirtualNodes on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVirtualNodes on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method ListVirtualNodes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVirtualNodes.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $ListVirtualNodesOutput = $appmesh->ListVirtualNodes(
      MeshName  => 'MyResourceName',
      Limit     => 1,                  # OPTIONAL
      NextToken => 'MyString',         # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListVirtualNodesOutput->NextToken;
    my $VirtualNodes = $ListVirtualNodesOutput->VirtualNodes;

    # Returns a L<Paws::AppMesh::ListVirtualNodesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/ListVirtualNodes>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of mesh results returned by C<ListVirtualNodes> in
paginated output. When this parameter is used, C<ListVirtualNodes> only
returns C<limit> results in a single page along with a C<nextToken>
response element. The remaining results of the initial request can be
seen by sending another C<ListVirtualNodes> request with the returned
C<nextToken> value. This value can be between 1 and 100. If this
parameter is not used, then C<ListVirtualNodes> returns up to 100
results and a C<nextToken> value if applicable.



=head2 B<REQUIRED> MeshName => Str

The name of the service mesh in which to list virtual nodes.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListVirtualNodes> request where C<limit> was used and the results
exceeded the value of that parameter. Pagination continues from the end
of the previous results that returned the C<nextToken> value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVirtualNodes in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

