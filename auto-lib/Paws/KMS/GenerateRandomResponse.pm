
package Paws::KMS::GenerateRandomResponse;
  use Moose;
  has Plaintext => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateRandomResponse

=head1 ATTRIBUTES


=head2 Plaintext => Str

The unpredictable byte string.




=cut

1;