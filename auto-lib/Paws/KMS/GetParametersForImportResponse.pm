
package Paws::KMS::GetParametersForImportResponse;
  use Moose;
  has ImportToken => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has ParametersValidTo => (is => 'ro', isa => 'Str');
  has PublicKey => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GetParametersForImportResponse

=head1 ATTRIBUTES


=head2 ImportToken => Str

The import token to send in a subsequent ImportKeyMaterial request.


=head2 KeyId => Str

The identifier of the CMK to use in a subsequent ImportKeyMaterial
request. This is the same CMK specified in the
C<GetParametersForImport> request.


=head2 ParametersValidTo => Str

The time at which the import token and public key are no longer valid.
After this time, you cannot use them to make an ImportKeyMaterial
request and you must send another C<GetParametersForImport> request to
get new ones.


=head2 PublicKey => Str

The public key to use to encrypt the key material before importing it
with ImportKeyMaterial.


=head2 _request_id => Str


=cut

1;