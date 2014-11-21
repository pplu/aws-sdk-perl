
package Aws::KMS::EncryptResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has CiphertextBlob => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');

}
1;