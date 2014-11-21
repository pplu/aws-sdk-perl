package Aws::EC2::DiskImageDescription {
  use Moose;
  has Checksum => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'checksum');
  has Format => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'format', required => 1);
  has ImportManifestUrl => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'importManifestUrl', required => 1);
  has Size => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'size', required => 1);
}
1;
