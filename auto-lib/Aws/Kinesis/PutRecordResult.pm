
package Aws::Kinesis::PutRecordResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SequenceNumber => (is => 'ro', isa => 'Str', required => 1);
  has ShardId => (is => 'ro', isa => 'Str', required => 1);

}
1;
