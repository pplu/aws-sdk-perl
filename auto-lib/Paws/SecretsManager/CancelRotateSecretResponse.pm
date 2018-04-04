
package Paws::SecretsManager::CancelRotateSecretResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::CancelRotateSecretResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the secret for which rotation was canceled.


=head2 Name => Str

The friendly name of the secret for which rotation was canceled.


=head2 VersionId => Str

The unique identifier of the version of the secret that was created
during the rotation. This version might not be complete, and should be
evaluated for possible deletion. At the very least, you should remove
the C<VersionStage> value C<AWSPENDING> to enable this version to be
deleted. Failing to clean up a cancelled rotation can block you from
successfully starting future rotations.


=head2 _request_id => Str


=cut

1;