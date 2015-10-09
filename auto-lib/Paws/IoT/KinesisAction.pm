package Paws::IoT::KinesisAction;
  use Moose;
  has partitionKey => (is => 'ro', isa => 'Str');
  has roleArn => (is => 'ro', isa => 'Str', required => 1);
  has streamName => (is => 'ro', isa => 'Str', required => 1);
1;
