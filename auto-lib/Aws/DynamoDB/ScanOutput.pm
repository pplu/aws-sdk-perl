
package Aws::DynamoDB::ScanOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has ConsumedCapacity => (is => 'ro', isa => 'Aws::DynamoDB::ConsumedCapacity');
  has Count => (is => 'ro', isa => 'Int');
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::AttributeMap]');
  has LastEvaluatedKey => (is => 'ro', isa => 'Aws::DynamoDB::Key');
  has ScannedCount => (is => 'ro', isa => 'Int');

}
1;