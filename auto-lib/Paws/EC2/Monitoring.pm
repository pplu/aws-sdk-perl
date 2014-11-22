package Paws::EC2::Monitoring {
  use Moose;
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
}
1;
