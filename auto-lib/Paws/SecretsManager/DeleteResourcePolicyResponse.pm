
package Paws::SecretsManager::DeleteResourcePolicyResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::DeleteResourcePolicyResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the secret that the resource-based policy was deleted for.


=head2 Name => Str

The friendly name of the secret that the resource-based policy was
deleted for.


=head2 _request_id => Str


=cut

1;