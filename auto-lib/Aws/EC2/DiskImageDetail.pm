package Aws::EC2::DiskImageDetail {
  use Moose;
  has Bytes => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'bytes', required => 1);
  has Format => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'format', required => 1);
  has ImportManifestUrl => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'importManifestUrl', required => 1);
}
1;
