
package Aws::EC2::ImportKeyPairResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has KeyFingerprint => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyFingerprint');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyName');

}
1;