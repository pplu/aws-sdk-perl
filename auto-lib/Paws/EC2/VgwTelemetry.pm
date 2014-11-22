package Paws::EC2::VgwTelemetry {
  use Moose;
  has AcceptedRouteCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'acceptedRouteCount');
  has LastStatusChange => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'lastStatusChange');
  has OutsideIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'outsideIpAddress');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
}
1;
