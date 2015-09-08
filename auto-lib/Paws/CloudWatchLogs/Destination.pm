package Paws::CloudWatchLogs::Destination;
  use Moose;
  has accessPolicy => (is => 'ro', isa => 'Str');
  has arn => (is => 'ro', isa => 'Str');
  has creationTime => (is => 'ro', isa => 'Int');
  has destinationName => (is => 'ro', isa => 'Str');
  has roleArn => (is => 'ro', isa => 'Str');
  has targetArn => (is => 'ro', isa => 'Str');
1;
