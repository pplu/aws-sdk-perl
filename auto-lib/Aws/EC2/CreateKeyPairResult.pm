
package Aws::EC2::CreateKeyPairResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has KeyFingerprint => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyFingerprint');
  has KeyMaterial => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyMaterial');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyName');

}
1;