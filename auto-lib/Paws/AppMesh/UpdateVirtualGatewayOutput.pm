
package Paws::AppMesh::UpdateVirtualGatewayOutput;
  use Moose;
  has VirtualGateway => (is => 'ro', isa => 'Paws::AppMesh::VirtualGatewayData', traits => ['NameInRequest'], request_name => 'virtualGateway', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'VirtualGateway');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::UpdateVirtualGatewayOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> VirtualGateway => L<Paws::AppMesh::VirtualGatewayData>

A full description of the virtual gateway that was updated.


=head2 _request_id => Str


=cut

