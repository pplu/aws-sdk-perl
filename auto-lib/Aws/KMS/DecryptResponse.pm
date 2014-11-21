
package Aws::KMS::DecryptResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has KeyId => (is => 'ro', isa => 'Str');
  has Plaintext => (is => 'ro', isa => 'Str');

}
1;