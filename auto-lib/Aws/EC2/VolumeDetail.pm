package Aws::EC2::VolumeDetail {
  use Moose;
  has Size => (is => 'ro', isa => 'Num', required => 1);
}
1
