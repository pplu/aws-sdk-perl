
package Paws::EMRContainers::DeleteVirtualClusterResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::DeleteVirtualClusterResponse

=head1 ATTRIBUTES


=head2 Id => Str

This output contains the ID of the virtual cluster that will be
deleted.


=head2 _request_id => Str


=cut

