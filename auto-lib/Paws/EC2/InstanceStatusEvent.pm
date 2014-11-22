package Paws::EC2::InstanceStatusEvent {
  use Moose;
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has NotAfter => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'notAfter');
  has NotBefore => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'notBefore');
}
1;
