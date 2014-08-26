package Aws::EC2::DiskImage {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Description => (is => 'ro', isa => 'Str');
  has Image => (is => 'ro', isa => 'Aws::EC2::DiskImageDetail');
  has Volume => (is => 'ro', isa => 'Aws::EC2::VolumeDetail');
}
1
