package Aws::EC2::KeyPairInfo {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has KeyFingerprint => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyFingerprint');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyName');
}
1
