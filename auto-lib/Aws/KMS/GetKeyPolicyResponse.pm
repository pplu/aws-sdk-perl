
package Aws::KMS::GetKeyPolicyResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Policy => (is => 'ro', isa => 'Str');

}
1;