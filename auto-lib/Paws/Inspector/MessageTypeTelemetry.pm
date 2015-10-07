package Paws::Inspector::MessageTypeTelemetry;
  use Moose;
  has count => (is => 'ro', isa => 'Int');
  has dataSize => (is => 'ro', isa => 'Int');
  has messageType => (is => 'ro', isa => 'Str');
1;
