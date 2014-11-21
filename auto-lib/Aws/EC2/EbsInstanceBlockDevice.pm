package Aws::EC2::EbsInstanceBlockDevice {
  use Moose;
  has AttachTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachTime');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
}
1;
