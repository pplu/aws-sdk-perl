
package Paws::AppMesh::ListRoutesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppMesh::Types qw/AppMesh_RouteRef/;
  has NextToken => (is => 'ro', isa => Str);
  has Routes => (is => 'ro', isa => ArrayRef[AppMesh_RouteRef], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Routes' => 'routes',
                       'NextToken' => 'nextToken'
                     },
  'IsRequired' => {
                    'Routes' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Routes' => {
                             'type' => 'ArrayRef[AppMesh_RouteRef]',
                             'class' => 'Paws::AppMesh::RouteRef'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ListRoutesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListRoutes> request.
When the results of a C<ListRoutes> request exceed C<limit>, you can
use this value to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 B<REQUIRED> Routes => ArrayRef[AppMesh_RouteRef]

The list of existing routes for the specified service mesh and virtual
router.


=head2 _request_id => Str


=cut

