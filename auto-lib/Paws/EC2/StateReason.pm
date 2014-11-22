package Paws::EC2::StateReason {
  use Moose;
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
}
1;
