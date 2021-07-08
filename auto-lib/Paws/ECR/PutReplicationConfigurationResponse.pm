
package Paws::ECR::PutReplicationConfigurationResponse;
  use Moose;
  has ReplicationConfiguration => (is => 'ro', isa => 'Paws::ECR::ReplicationConfiguration', traits => ['NameInRequest'], request_name => 'replicationConfiguration' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::PutReplicationConfigurationResponse

=head1 ATTRIBUTES


=head2 ReplicationConfiguration => L<Paws::ECR::ReplicationConfiguration>

The contents of the replication configuration for the registry.


=head2 _request_id => Str


=cut

1;