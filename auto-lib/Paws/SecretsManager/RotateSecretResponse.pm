
package Paws::SecretsManager::RotateSecretResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::RotateSecretResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the secret.


=head2 Name => Str

The friendly name of the secret.


=head2 VersionId => Str

The ID of the new version of the secret created by the rotation started
by this request.


=head2 _request_id => Str


=cut

1;