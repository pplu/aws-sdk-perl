
package Paws::KMS::GenerateRandomResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Plaintext => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateRandomResponse

=head1 ATTRIBUTES

=head2 Plaintext => Str

  

Plaintext that contains the unpredictable byte string.











=cut

1;