
package Paws::AppMesh::DeleteRouteOutput;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Route');
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw/AppMesh_RouteData/;
  has Route => (is => 'ro', isa => AppMesh_RouteData, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Route' => 'route'
                     },
  'IsRequired' => {
                    'Route' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Route' => {
                            'type' => 'AppMesh_RouteData',
                            'class' => 'Paws::AppMesh::RouteData'
                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DeleteRouteOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Route => AppMesh_RouteData

The route that was deleted.


=head2 _request_id => Str


=cut

