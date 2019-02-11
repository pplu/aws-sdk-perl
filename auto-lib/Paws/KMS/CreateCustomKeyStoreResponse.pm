
package Paws::KMS::CreateCustomKeyStoreResponse;
  use Moose;
  has CustomKeyStoreId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::CreateCustomKeyStoreResponse

=head1 ATTRIBUTES


=head2 CustomKeyStoreId => Str

A unique identifier for the new custom key store.


=head2 _request_id => Str


=cut

1;