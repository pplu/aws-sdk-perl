
package Paws::KMS::GenerateRandomResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Plaintext => (is => 'ro', isa => 'Str');

}
1;