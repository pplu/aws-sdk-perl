package Aws::EC2::SpotInstanceStateFault {
  use Moose;
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
}
1;
