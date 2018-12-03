
package Paws::AppMesh::ListMeshes;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMeshes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meshes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::ListMeshesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ListMeshes - Arguments for method ListMeshes on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMeshes on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method ListMeshes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMeshes.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $ListMeshesOutput = $appmesh->ListMeshes(
      Limit     => 1,             # OPTIONAL
      NextToken => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Meshes    = $ListMeshesOutput->Meshes;
    my $NextToken = $ListMeshesOutput->NextToken;

    # Returns a L<Paws::AppMesh::ListMeshesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/ListMeshes>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of mesh results returned by C<ListMeshes> in
paginated output. When this parameter is used, C<ListMeshes> only
returns C<limit> results in a single page along with a C<nextToken>
response element. The remaining results of the initial request can be
seen by sending another C<ListMeshes> request with the returned
C<nextToken> value. This value can be between 1 and 100. If this
parameter is not used, then C<ListMeshes> returns up to 100 results and
a C<nextToken> value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated C<ListMeshes>
request where C<limit> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the C<nextToken> value.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMeshes in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

