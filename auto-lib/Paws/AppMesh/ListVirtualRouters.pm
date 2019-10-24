
package Paws::AppMesh::ListVirtualRouters;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::AppMesh::Types qw//;
  has Limit => (is => 'ro', isa => Int, predicate => 1);
  has MeshName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListVirtualRouters');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v20190125/meshes/{meshName}/virtualRouters');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AppMesh::ListVirtualRoutersOutput');

    sub params_map {
    our $Params_map ||= {
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
                  },
  'ParamInQuery' => {
                      'NextToken' => 'nextToken',
                      'Limit' => 'limit'
                    },
  'IsRequired' => {
                    'MeshName' => 1
                  }
}
;
    return $Params_map;
  }

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

The maximum number of results returned by C<ListVirtualRouters> in
paginated output. When you use this parameter, C<ListVirtualRouters>
returns only C<limit> results in a single page along with a
C<nextToken> response element. You can see the remaining results of the
initial request by sending another C<ListVirtualRouters> request with
the returned C<nextToken> value. This value can be between 1 and 100.
If you don't use this parameter, C<ListVirtualRouters> returns up to
100 results and a C<nextToken> value if applicable.



=head2 B<REQUIRED> MeshName => Str

The name of the service mesh to list virtual routers in.



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

