
package Aws::DynamoDB::UpdateItem {
  use Moose;
  has AttributeUpdates => (is => 'ro', isa => 'Aws::DynamoDB::AttributeUpdates');
  has ConditionalOperator => (is => 'ro', isa => 'Str');
  has Expected => (is => 'ro', isa => 'Aws::DynamoDB::ExpectedAttributeMap');
  has Key => (is => 'ro', isa => 'Aws::DynamoDB::Key', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ReturnItemCollectionMetrics => (is => 'ro', isa => 'Str');
  has ReturnValues => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateItem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DynamoDB::UpdateItemResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;