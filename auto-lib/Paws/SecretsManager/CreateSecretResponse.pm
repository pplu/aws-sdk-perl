
package Paws::SecretsManager::CreateSecretResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::CreateSecretResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The Amazon Resource Name (ARN) of the secret that you just created.

Secrets Manager automatically adds several random characters to the
name at the end of the ARN when you initially create a secret. This
affects only the ARN and not the actual friendly name. This ensures
that if you create a new secret with the same name as an old secret
that you previously deleted, then users with access to the old secret
I<don't> automatically get access to the new secret because the ARNs
are different.


=head2 Name => Str

The friendly name of the secret that you just created.


=head2 VersionId => Str

The unique identifier that's associated with the version of the secret
you just created.


=head2 _request_id => Str


=cut

1;