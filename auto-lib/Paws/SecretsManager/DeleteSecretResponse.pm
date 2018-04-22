
package Paws::SecretsManager::DeleteSecretResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has DeletionDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::DeleteSecretResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the secret that is now scheduled for deletion.


=head2 DeletionDate => Str

The date and time after which this secret can be deleted by Secrets
Manager and can no longer be restored. This value is the date and time
of the delete request plus the number of days specified in
C<RecoveryWindowInDays>.


=head2 Name => Str

The friendly name of the secret that is now scheduled for deletion.


=head2 _request_id => Str


=cut

1;