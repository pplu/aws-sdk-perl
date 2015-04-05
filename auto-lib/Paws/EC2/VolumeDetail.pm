package Paws::EC2::VolumeDetail {
  use Moose;
  has Size => (is => 'ro', isa => 'Num', xmlname => 'size', traits => ['Unwrapped'], required => 1);
}
1;
