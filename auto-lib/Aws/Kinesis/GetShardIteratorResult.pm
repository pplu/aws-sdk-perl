
package Aws::Kinesis::GetShardIteratorResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ShardIterator => (is => 'ro', isa => 'Str');

}
1;
