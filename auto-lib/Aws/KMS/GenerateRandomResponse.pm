
package Aws::KMS::GenerateRandomResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Plaintext => (is => 'ro', isa => 'Str');

}
1;