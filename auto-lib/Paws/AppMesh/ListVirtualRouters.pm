
package Paws::AppMesh::ListVirtualRouters;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVirtualRouters');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meshes/{meshName}/virtualRouters');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::ListVirtualRoutersOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ListVirtualRouters - Arguments for method ListVirtualRouters on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVirtualRouters on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method ListVirtualRouters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVirtualRouters.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $ListVirtualRoutersOutput = $appmesh->ListVirtualRouters(
      MeshName  => 'MyResourceName',
      Limit     => 1,                  # OPTIONAL
      NextToken => 'MyString',         # OPTIONAL
    );

    # Results:
    my $NextToken      = $ListVirtualRoutersOutput->NextToken;
    my $VirtualRouters = $ListVirtualRoutersOutput->VirtualRouters;

    # Returns a L<Paws::AppMesh::ListVirtualRoutersOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/ListVirtualRouters>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of mesh results returned by C<ListVirtualRouters> in
paginated output. When this parameter is used, C<ListVirtualRouters>
only returns C<limit> results in a single page along with a
C<nextToken> response element. The remaining results of the initial
request can be seen by sending another C<ListVirtualRouters> request
with the returned C<nextToken> value. This value can be between 1 and
100. If this parameter is not used, then C<ListVirtualRouters> returns
up to 100 results and a C<nextToken> value if applicable.



=head2 B<REQUIRED> MeshName => Str

The name of the service mesh in which to list virtual routers.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListVirtualRouters> request where C<limit> was used and the results
exceeded the value of that parameter. Pagination continues from the end
of the previous results that returned the C<nextToken> value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVirtualRouters in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

