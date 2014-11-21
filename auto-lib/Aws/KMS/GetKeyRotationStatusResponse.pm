
package Aws::KMS::GetKeyRotationStatusResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has KeyRotationEnabled => (is => 'ro', isa => 'Bool');

}
1;