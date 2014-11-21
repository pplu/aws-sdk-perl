
package Aws::Kinesis::GetRecordsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextShardIterator => (is => 'ro', isa => 'Str');
  has Records => (is => 'ro', isa => 'ArrayRef[Aws::Kinesis::Record]', required => 1);

}
1;