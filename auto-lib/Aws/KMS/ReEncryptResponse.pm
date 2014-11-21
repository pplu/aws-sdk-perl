
package Aws::KMS::ReEncryptResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has CiphertextBlob => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has SourceKeyId => (is => 'ro', isa => 'Str');

}
1;