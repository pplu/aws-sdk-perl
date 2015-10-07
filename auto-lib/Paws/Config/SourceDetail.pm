package Paws::Config::SourceDetail;
  use Moose;
  has EventSource => (is => 'ro', isa => 'Str');
  has MessageType => (is => 'ro', isa => 'Str');
1;
