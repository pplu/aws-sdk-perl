
package Paws::AppMesh::ListVirtualNodes;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::AppMesh::Types qw//;
  has Limit => (is => 'ro', isa => Int, predicate => 1);
  has MeshName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListVirtualNodes');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v20190125/meshes/{meshName}/virtualNodes');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AppMesh::ListVirtualNodesOutput');

    sub params_map {
    our $Params_map ||= {
  'ParamInQuery' => {
                      'Limit' => 'limit',
                      'NextToken' => 'nextToken'
                    },
  'IsRequired' => {
                    'MeshName' => 1
                  },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MeshName' => {
                               'type' => 'Str'
                             },
               'Limit' => {
                            'type' => 'Int'
                          }
             },
  'ParamInURI' => {
                    'MeshName' => 'meshName'
                  }
}
;
    return $Params_map;
  }

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

The maximum number of results returned by C<ListVirtualNodes> in
paginated output. When you use this parameter, C<ListVirtualNodes>
returns only C<limit> results in a single page along with a
C<nextToken> response element. You can see the remaining results of the
initial request by sending another C<ListVirtualNodes> request with the
returned C<nextToken> value. This value can be between 1 and 100. If
you don't use this parameter, C<ListVirtualNodes> returns up to 100
results and a C<nextToken> value if applicable.



=head2 B<REQUIRED> MeshName => Str

The name of the service mesh to list virtual nodes in.



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

