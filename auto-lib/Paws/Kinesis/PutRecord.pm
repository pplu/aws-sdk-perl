
package Paws::Kinesis::PutRecord {
  use Moose;
  has Data => (is => 'ro', isa => 'Str', required => 1);
  has ExplicitHashKey => (is => 'ro', isa => 'Str');
  has PartitionKey => (is => 'ro', isa => 'Str', required => 1);
  has SequenceNumberForOrdering => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRecord');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kinesis::PutRecordOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;