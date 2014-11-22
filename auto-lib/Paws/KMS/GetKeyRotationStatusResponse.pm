
package Paws::KMS::GetKeyRotationStatusResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has KeyRotationEnabled => (is => 'ro', isa => 'Bool');

}
1;