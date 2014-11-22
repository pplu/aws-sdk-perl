
package Paws::KMS::GetKeyPolicyResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Policy => (is => 'ro', isa => 'Str');

}
1;