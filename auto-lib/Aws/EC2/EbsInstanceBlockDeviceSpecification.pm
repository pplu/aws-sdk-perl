package Aws::EC2::EbsInstanceBlockDeviceSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool');
  has VolumeId => (is => 'ro', isa => 'Str');
}
1
