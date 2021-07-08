
package Paws::SecretsManager::ReplicateSecretToRegionsResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has ReplicationStatus => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::ReplicationStatusType]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::ReplicateSecretToRegionsResponse

=head1 ATTRIBUTES


=head2 ARN => Str

Replicate a secret based on the C<ReplicaRegionType>E<gt> consisting of
a Region(required) and a KMSKeyId (optional) which can be the ARN,
KeyID, or Alias.


=head2 ReplicationStatus => ArrayRef[L<Paws::SecretsManager::ReplicationStatusType>]

Describes the secret replication status as C<PENDING>, C<SUCCESS> or
C<FAIL>.


=head2 _request_id => Str


=cut

1;