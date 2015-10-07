package Paws::Firehose::PutRecordBatchResponseEntry;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has RecordId => (is => 'ro', isa => 'Str');
1;
