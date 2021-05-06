
package Paws::SecretsManager::ListSecretVersionIdsResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Versions => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::SecretVersionsListEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::ListSecretVersionIdsResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The Amazon Resource Name (ARN) for the secret.

Secrets Manager automatically adds several random characters to the
name at the end of the ARN when you initially create a secret. This
affects only the ARN and not the actual friendly name. This ensures
that if you create a new secret with the same name as an old secret
that you previously deleted, then users with access to the old secret
I<don't> automatically get access to the new secret because the ARNs
are different.


=head2 Name => Str

The friendly name of the secret.


=head2 NextToken => Str

If present in the response, this value indicates that there's more
output available than what's included in the current response. This can
occur even when the response includes no values at all, such as when
you ask for a filtered view of a very long list. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
continue processing and get the next part of the output. You should
repeat this until the C<NextToken> response element comes back empty
(as C<null>).


=head2 Versions => ArrayRef[L<Paws::SecretsManager::SecretVersionsListEntry>]

The list of the currently available versions of the specified secret.


=head2 _request_id => Str


=cut

1;