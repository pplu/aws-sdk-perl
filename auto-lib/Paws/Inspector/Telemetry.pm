package Paws::Inspector::Telemetry;
  use Moose;
  has messageTypeTelemetries => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::MessageTypeTelemetry]');
  has status => (is => 'ro', isa => 'Str');
1;
