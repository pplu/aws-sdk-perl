
package Paws::KMS::DecryptResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has KeyId => (is => 'ro', isa => 'Str');
  has Plaintext => (is => 'ro', isa => 'Str');

}
1;