package Aws::EC2::ImportVolumeTaskDetails {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone', required => 1);
  has BytesConverted => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'bytesConverted', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Image => (is => 'ro', isa => 'Aws::EC2::DiskImageDescription', traits => ['Unwrapped'], xmlname => 'image', required => 1);
  has Volume => (is => 'ro', isa => 'Aws::EC2::DiskImageVolumeDescription', traits => ['Unwrapped'], xmlname => 'volume', required => 1);
}
1
