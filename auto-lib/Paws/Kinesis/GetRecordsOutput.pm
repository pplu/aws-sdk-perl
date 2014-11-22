
package Paws::Kinesis::GetRecordsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has NextShardIterator => (is => 'ro', isa => 'Str');
  has Records => (is => 'ro', isa => 'ArrayRef[Paws::Kinesis::Record]', required => 1);

}
1;