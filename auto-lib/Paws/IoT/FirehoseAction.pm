package Paws::IoT::FirehoseAction;
  use Moose;
  has deliveryStreamName => (is => 'ro', isa => 'Str', required => 1);
  has roleArn => (is => 'ro', isa => 'Str', required => 1);
1;
