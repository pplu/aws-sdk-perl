
package Paws::DynamoDB::ScanOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has ConsumedCapacity => (is => 'ro', isa => 'Paws::DynamoDB::ConsumedCapacity');
  has Count => (is => 'ro', isa => 'Int');
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::AttributeMap]');
  has LastEvaluatedKey => (is => 'ro', isa => 'Paws::DynamoDB::Key');
  has ScannedCount => (is => 'ro', isa => 'Int');

}
1;