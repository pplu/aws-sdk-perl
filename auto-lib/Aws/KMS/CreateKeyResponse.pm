
package Aws::KMS::CreateKeyResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has KeyMetadata => (is => 'ro', isa => 'Aws::KMS::KeyMetadata');

}
1;