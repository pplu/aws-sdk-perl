package Paws::Firehose::BufferingHints;
  use Moose;
  has IntervalInSeconds => (is => 'ro', isa => 'Int');
  has SizeInMBs => (is => 'ro', isa => 'Int');
1;
