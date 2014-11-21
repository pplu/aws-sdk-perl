package Aws::Kinesis::StreamDescription {
  use Moose;
  has HasMoreShards => (is => 'ro', isa => 'Bool', required => 1);
  has Shards => (is => 'ro', isa => 'ArrayRef[Aws::Kinesis::Shard]', required => 1);
  has StreamARN => (is => 'ro', isa => 'Str', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);
  has StreamStatus => (is => 'ro', isa => 'Str', required => 1);
}
1;
