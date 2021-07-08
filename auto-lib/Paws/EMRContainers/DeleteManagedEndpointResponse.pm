
package Paws::EMRContainers::DeleteManagedEndpointResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has VirtualClusterId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualClusterId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::DeleteManagedEndpointResponse

=head1 ATTRIBUTES


=head2 Id => Str

The output displays the ID of the managed endpoint.


=head2 VirtualClusterId => Str

The output displays the ID of the endpoint's virtual cluster.


=head2 _request_id => Str


=cut

