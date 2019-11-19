
package Paws::AppMesh::UpdateRouteOutput;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Route');
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw/AppMesh_RouteData/;
  has Route => (is => 'ro', isa => AppMesh_RouteData, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Route' => {
                            'type' => 'AppMesh_RouteData',
                            'class' => 'Paws::AppMesh::RouteData'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Route' => 1
                  },
  'NameInRequest' => {
                       'Route' => 'route'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::UpdateRouteOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Route => AppMesh_RouteData

A full description of the route that was updated.


=head2 _request_id => Str


=cut

