
package Paws::KMS::CreateKeyResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has KeyMetadata => (is => 'ro', isa => 'Paws::KMS::KeyMetadata');

}
1;