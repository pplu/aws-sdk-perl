
package Aws::Kinesis::GetShardIterator {
  use Moose;
  has ShardId => (is => 'ro', isa => 'Str', required => 1);
  has ShardIteratorType => (is => 'ro', isa => 'Str', required => 1);
  has StartingSequenceNumber => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetShardIterator');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Kinesis::GetShardIteratorResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
