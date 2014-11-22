package Paws::EC2::AvailabilityZoneMessage {
  use Moose;
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
}
1;
