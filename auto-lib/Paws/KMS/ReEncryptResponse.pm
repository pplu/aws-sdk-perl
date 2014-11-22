
package Paws::KMS::ReEncryptResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has CiphertextBlob => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has SourceKeyId => (is => 'ro', isa => 'Str');

}
1;