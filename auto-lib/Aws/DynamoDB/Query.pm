
package Aws::DynamoDB::Query {
  use Moose;
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str]');
  has ConditionalOperator => (is => 'ro', isa => 'Str');
  has ConsistentRead => (is => 'ro', isa => 'Bool');
  has ExclusiveStartKey => (is => 'ro', isa => 'Aws::DynamoDB::Key');
  has ExpressionAttributeNames => (is => 'ro', isa => 'Aws::DynamoDB::ExpressionAttributeNameMap');
  has ExpressionAttributeValues => (is => 'ro', isa => 'Aws::DynamoDB::ExpressionAttributeValueMap');
  has FilterExpression => (is => 'ro', isa => 'Str');
  has IndexName => (is => 'ro', isa => 'Str');
  has KeyConditions => (is => 'ro', isa => 'Aws::DynamoDB::KeyConditions', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has ProjectionExpression => (is => 'ro', isa => 'Str');
  has QueryFilter => (is => 'ro', isa => 'Aws::DynamoDB::FilterConditionMap');
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ScanIndexForward => (is => 'ro', isa => 'Bool');
  has Select => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Query');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DynamoDB::QueryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;