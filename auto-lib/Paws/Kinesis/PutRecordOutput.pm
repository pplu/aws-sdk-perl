
package Paws::Kinesis::PutRecordOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has SequenceNumber => (is => 'ro', isa => 'Str', required => 1);
  has ShardId => (is => 'ro', isa => 'Str', required => 1);

}
1;