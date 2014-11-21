package Aws::EC2::EbsInstanceBlockDeviceSpecification {
  use Moose;
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
}
1;
