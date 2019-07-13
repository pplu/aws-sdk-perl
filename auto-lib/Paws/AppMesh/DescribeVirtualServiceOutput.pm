
package Paws::AppMesh::DescribeVirtualServiceOutput;
  use Moose;
  has VirtualService => (is => 'ro', isa => 'Paws::AppMesh::VirtualServiceData', traits => ['NameInRequest'], request_name => 'virtualService', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'VirtualService');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DescribeVirtualServiceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> VirtualService => L<Paws::AppMesh::VirtualServiceData>

The full description of your virtual service.


=head2 _request_id => Str


=cut

