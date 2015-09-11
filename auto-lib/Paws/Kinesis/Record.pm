package Paws::Kinesis::Record;
  use Moose;
  has ApproximateArrivalTimestamp => (is => 'ro', isa => 'Str');
  has Data => (is => 'ro', isa => 'Str', required => 1);
  has PartitionKey => (is => 'ro', isa => 'Str', required => 1);
  has SequenceNumber => (is => 'ro', isa => 'Str', required => 1);
1;
