package Aws::EC2::VolumeStatusEvent {
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has EventId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'eventId');
  has EventType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'eventType');
  has NotAfter => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'notAfter');
  has NotBefore => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'notBefore');
}
1
