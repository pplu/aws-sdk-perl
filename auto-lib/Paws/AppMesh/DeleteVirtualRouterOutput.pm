
package Paws::AppMesh::DeleteVirtualRouterOutput;
  use Moose;
  has VirtualRouter => (is => 'ro', isa => 'Paws::AppMesh::VirtualRouterData', traits => ['NameInRequest'], request_name => 'virtualRouter', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'VirtualRouter');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DeleteVirtualRouterOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> VirtualRouter => L<Paws::AppMesh::VirtualRouterData>

The virtual router that was deleted.


=head2 _request_id => Str


=cut

