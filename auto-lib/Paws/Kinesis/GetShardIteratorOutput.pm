
package Paws::Kinesis::GetShardIteratorOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has ShardIterator => (is => 'ro', isa => 'Str');

}
1;