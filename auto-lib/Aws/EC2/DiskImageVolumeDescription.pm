package Aws::EC2::DiskImageVolumeDescription {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Id => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'id', required => 1);
  has Size => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'size');
}
1
