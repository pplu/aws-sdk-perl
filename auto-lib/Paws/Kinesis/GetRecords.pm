
package Paws::Kinesis::GetRecords {
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has ShardIterator => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRecords');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kinesis::GetRecordsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;