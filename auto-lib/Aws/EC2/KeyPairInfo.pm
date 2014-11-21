package Aws::EC2::KeyPairInfo {
  use Moose;
  has KeyFingerprint => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyFingerprint');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyName');
}
1;
