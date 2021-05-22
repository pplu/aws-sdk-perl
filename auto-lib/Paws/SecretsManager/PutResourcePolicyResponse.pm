
package Paws::SecretsManager::PutResourcePolicyResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::PutResourcePolicyResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the secret retrieved by the resource-based policy.


=head2 Name => Str

The friendly name of the secret retrieved by the resource-based policy.


=head2 _request_id => Str


=cut

1;