package Aws::EC2::EbsInstanceBlockDeviceSpecification {
  use Moose;
  has DeleteOnTermination => (is => 'ro', isa => 'Bool');
  has VolumeId => (is => 'ro', isa => 'Str');
}
1
