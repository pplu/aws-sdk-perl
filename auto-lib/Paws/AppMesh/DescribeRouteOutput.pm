
package Paws::AppMesh::DescribeRouteOutput;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Route');
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw/AppMesh_RouteData/;
  has Route => (is => 'ro', isa => AppMesh_RouteData, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Route' => 1
                  },
  'NameInRequest' => {
                       'Route' => 'route'
                     },
  'types' => {
               'Route' => {
                            'class' => 'Paws::AppMesh::RouteData',
                            'type' => 'AppMesh_RouteData'
                          },
               '_request_id' => {
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

Paws::AppMesh::DescribeRouteOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Route => AppMesh_RouteData

The full description of your route.


=head2 _request_id => Str


=cut

