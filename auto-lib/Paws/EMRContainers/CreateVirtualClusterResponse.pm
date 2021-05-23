
package Paws::EMRContainers::CreateVirtualClusterResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::CreateVirtualClusterResponse

=head1 ATTRIBUTES


=head2 Arn => Str

This output contains the ARN of virtual cluster.


=head2 Id => Str

This output contains the virtual cluster ID.


=head2 Name => Str

This output contains the name of the virtual cluster.


=head2 _request_id => Str


=cut

