package Aws::Kinesis::SequenceNumberRange {
  use Moose;
  with ('AWS::API::ResultParser');
  has EndingSequenceNumber => (is => 'ro', isa => 'Str');
  has StartingSequenceNumber => (is => 'ro', isa => 'Str', required => 1);
}
1
