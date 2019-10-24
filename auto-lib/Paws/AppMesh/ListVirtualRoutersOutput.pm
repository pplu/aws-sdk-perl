
package Paws::AppMesh::ListVirtualRoutersOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppMesh::Types qw/AppMesh_VirtualRouterRef/;
  has NextToken => (is => 'ro', isa => Str);
  has VirtualRouters => (is => 'ro', isa => ArrayRef[AppMesh_VirtualRouterRef], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VirtualRouters' => {
                                     'class' => 'Paws::AppMesh::VirtualRouterRef',
                                     'type' => 'ArrayRef[AppMesh_VirtualRouterRef]'
                                   }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'VirtualRouters' => 'virtualRouters'
                     },
  'IsRequired' => {
                    'VirtualRouters' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ListVirtualRoutersOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListVirtualRouters>
request. When the results of a C<ListVirtualRouters> request exceed
C<limit>, you can use this value to retrieve the next page of results.
This value is C<null> when there are no more results to return.


=head2 B<REQUIRED> VirtualRouters => ArrayRef[AppMesh_VirtualRouterRef]

The list of existing virtual routers for the specified service mesh.


=head2 _request_id => Str


=cut

