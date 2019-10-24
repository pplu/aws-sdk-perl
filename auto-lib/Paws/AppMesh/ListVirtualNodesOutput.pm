
package Paws::AppMesh::ListVirtualNodesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppMesh::Types qw/AppMesh_VirtualNodeRef/;
  has NextToken => (is => 'ro', isa => Str);
  has VirtualNodes => (is => 'ro', isa => ArrayRef[AppMesh_VirtualNodeRef], required => 1);

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
               'VirtualNodes' => {
                                   'class' => 'Paws::AppMesh::VirtualNodeRef',
                                   'type' => 'ArrayRef[AppMesh_VirtualNodeRef]'
                                 }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'VirtualNodes' => 'virtualNodes'
                     },
  'IsRequired' => {
                    'VirtualNodes' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ListVirtualNodesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListVirtualNodes>
request. When the results of a C<ListVirtualNodes> request exceed
C<limit>, you can use this value to retrieve the next page of results.
This value is C<null> when there are no more results to return.


=head2 B<REQUIRED> VirtualNodes => ArrayRef[AppMesh_VirtualNodeRef]

The list of existing virtual nodes for the specified service mesh.


=head2 _request_id => Str


=cut

