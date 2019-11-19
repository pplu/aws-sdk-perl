
package Paws::AppMesh::ListVirtualServicesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppMesh::Types qw/AppMesh_VirtualServiceRef/;
  has NextToken => (is => 'ro', isa => Str);
  has VirtualServices => (is => 'ro', isa => ArrayRef[AppMesh_VirtualServiceRef], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VirtualServices' => {
                                      'class' => 'Paws::AppMesh::VirtualServiceRef',
                                      'type' => 'ArrayRef[AppMesh_VirtualServiceRef]'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'VirtualServices' => 'virtualServices'
                     },
  'IsRequired' => {
                    'VirtualServices' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ListVirtualServicesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListVirtualServices>
request. When the results of a C<ListVirtualServices> request exceed
C<limit>, you can use this value to retrieve the next page of results.
This value is C<null> when there are no more results to return.


=head2 B<REQUIRED> VirtualServices => ArrayRef[AppMesh_VirtualServiceRef]

The list of existing virtual services for the specified service mesh.


=head2 _request_id => Str


=cut

