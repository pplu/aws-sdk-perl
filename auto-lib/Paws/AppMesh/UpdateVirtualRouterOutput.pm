
package Paws::AppMesh::UpdateVirtualRouterOutput;
  use Moose;
  has VirtualRouter => (is => 'ro', isa => 'Paws::AppMesh::VirtualRouterData', traits => ['NameInRequest'], request_name => 'virtualRouter');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'VirtualRouter');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::UpdateVirtualRouterOutput

=head1 ATTRIBUTES


=head2 VirtualRouter => L<Paws::AppMesh::VirtualRouterData>

A full description of the virtual router that was updated.


=head2 _request_id => Str


=cut

