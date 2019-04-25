
package Paws::SecretsManager::GetRandomPasswordResponse;
  use Moose;
  has RandomPassword => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::GetRandomPasswordResponse

=head1 ATTRIBUTES


=head2 RandomPassword => Str

A string with the generated password.


=head2 _request_id => Str


=cut

1;