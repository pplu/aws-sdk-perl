
package Aws::Kinesis::GetShardIteratorOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has ShardIterator => (is => 'ro', isa => 'Str');

}
1;