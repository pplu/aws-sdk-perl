package Aws::EC2::VolumeDetail {
  use Moose;
  has Size => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'size', required => 1);
}
1;
