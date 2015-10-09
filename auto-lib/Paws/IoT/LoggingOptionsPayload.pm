package Paws::IoT::LoggingOptionsPayload;
  use Moose;
  has logLevel => (is => 'ro', isa => 'Str');
  has roleArn => (is => 'ro', isa => 'Str', required => 1);
1;
