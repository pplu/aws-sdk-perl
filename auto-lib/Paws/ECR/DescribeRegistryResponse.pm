
package Paws::ECR::DescribeRegistryResponse;
  use Moose;
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has ReplicationConfiguration => (is => 'ro', isa => 'Paws::ECR::ReplicationConfiguration', traits => ['NameInRequest'], request_name => 'replicationConfiguration' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::DescribeRegistryResponse

=head1 ATTRIBUTES


=head2 RegistryId => Str

The ID of the registry.


=head2 ReplicationConfiguration => L<Paws::ECR::ReplicationConfiguration>

The replication configuration for the registry.


=head2 _request_id => Str


=cut

1;