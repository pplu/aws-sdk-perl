
package Paws::EMRContainers::CreateManagedEndpointResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has VirtualClusterId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualClusterId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::CreateManagedEndpointResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The output contains the ARN of the managed endpoint.


=head2 Id => Str

The output contains the ID of the managed endpoint.


=head2 Name => Str

The output contains the name of the managed endpoint.


=head2 VirtualClusterId => Str

The output contains the ID of the virtual cluster.


=head2 _request_id => Str


=cut

