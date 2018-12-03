
package Paws::AppMesh::CreateRouteOutput;
  use Moose;
  has Route => (is => 'ro', isa => 'Paws::AppMesh::RouteData', traits => ['NameInRequest'], request_name => 'route');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Route');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::CreateRouteOutput

=head1 ATTRIBUTES


=head2 Route => L<Paws::AppMesh::RouteData>

The full description of your mesh following the create call.


=head2 _request_id => Str


=cut

