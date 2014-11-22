package Paws::EC2::IcmpTypeCode {
  use Moose;
  has Code => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'code');
  has Type => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'type');
}
1;
