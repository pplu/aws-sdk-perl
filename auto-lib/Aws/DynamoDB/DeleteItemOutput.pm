
package Aws::DynamoDB::DeleteItemOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Aws::DynamoDB::AttributeMap');
  has ConsumedCapacity => (is => 'ro', isa => 'Aws::DynamoDB::ConsumedCapacity');
  has ItemCollectionMetrics => (is => 'ro', isa => 'Aws::DynamoDB::ItemCollectionMetrics');

}
1;