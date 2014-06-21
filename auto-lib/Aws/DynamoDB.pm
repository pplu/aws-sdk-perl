
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::DynamoDB::IndexStatus', ['CREATING','UPDATING','DELETING','ACTIVE',];
enum 'Aws::DynamoDB::KeyType', ['HASH','RANGE',];
enum 'Aws::DynamoDB::ProjectionType', ['ALL','KEYS_ONLY','INCLUDE',];
enum 'Aws::DynamoDB::ScalarAttributeType', ['S','N','B',];
enum 'Aws::DynamoDB::TableStatus', ['CREATING','UPDATING','DELETING','ACTIVE',];


package Aws::DynamoDB::AttributeDefinition {
  use Moose;
  with ('AWS::API::ResultParser');
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has AttributeType => (is => 'ro', isa => 'Aws::DynamoDB::ScalarAttributeType', required => 1);
}

package Aws::DynamoDB::AttributeMap {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::DynamoDB::AttributeUpdates {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::DynamoDB::BatchGetRequestMap {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::DynamoDB::BatchGetResponseMap {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::DynamoDB::BatchWriteItemRequestMap {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::DynamoDB::Capacity {
  use Moose;
  with ('AWS::API::ResultParser');
  has CapacityUnits => (is => 'ro', isa => 'Num');
}

package Aws::DynamoDB::ConsumedCapacity {
  use Moose;
  with ('AWS::API::ResultParser');
  has CapacityUnits => (is => 'ro', isa => 'Num');
  has GlobalSecondaryIndexes => (is => 'ro', isa => 'Aws::DynamoDB::SecondaryIndexesCapacityMap');
  has LocalSecondaryIndexes => (is => 'ro', isa => 'Aws::DynamoDB::SecondaryIndexesCapacityMap');
  has Table => (is => 'ro', isa => 'Aws::DynamoDB::Capacity');
  has TableName => (is => 'ro', isa => 'Str');
}

package Aws::DynamoDB::ExpectedAttributeMap {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::DynamoDB::FilterConditionMap {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::DynamoDB::GlobalSecondaryIndex {
  use Moose;
  with ('AWS::API::ResultParser');
  has IndexName => (is => 'ro', isa => 'Str', required => 1);
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::KeySchemaElement]', required => 1);
  has Projection => (is => 'ro', isa => 'Aws::DynamoDB::Projection', required => 1);
  has ProvisionedThroughput => (is => 'ro', isa => 'Aws::DynamoDB::ProvisionedThroughput', required => 1);
}

package Aws::DynamoDB::GlobalSecondaryIndexDescription {
  use Moose;
  with ('AWS::API::ResultParser');
  has IndexName => (is => 'ro', isa => 'Str');
  has IndexSizeBytes => (is => 'ro', isa => 'Num');
  has IndexStatus => (is => 'ro', isa => 'Aws::DynamoDB::IndexStatus');
  has ItemCount => (is => 'ro', isa => 'Num');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::KeySchemaElement]');
  has Projection => (is => 'ro', isa => 'Aws::DynamoDB::Projection');
  has ProvisionedThroughput => (is => 'ro', isa => 'Aws::DynamoDB::ProvisionedThroughputDescription');
}

package Aws::DynamoDB::GlobalSecondaryIndexUpdate {
  use Moose;
  with ('AWS::API::ResultParser');
  has Update => (is => 'ro', isa => 'Aws::DynamoDB::UpdateGlobalSecondaryIndexAction');
}

package Aws::DynamoDB::ItemCollectionKeyAttributeMap {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::DynamoDB::ItemCollectionMetrics {
  use Moose;
  with ('AWS::API::ResultParser');
  has ItemCollectionKey => (is => 'ro', isa => 'Aws::DynamoDB::ItemCollectionKeyAttributeMap');
  has SizeEstimateRangeGB => (is => 'ro', isa => 'ArrayRef[Num]');
}

package Aws::DynamoDB::ItemCollectionMetricsPerTable {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::DynamoDB::Key {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::DynamoDB::KeyConditions {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::DynamoDB::KeySchemaElement {
  use Moose;
  with ('AWS::API::ResultParser');
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has KeyType => (is => 'ro', isa => 'Aws::DynamoDB::KeyType', required => 1);
}

package Aws::DynamoDB::LocalSecondaryIndex {
  use Moose;
  with ('AWS::API::ResultParser');
  has IndexName => (is => 'ro', isa => 'Str', required => 1);
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::KeySchemaElement]', required => 1);
  has Projection => (is => 'ro', isa => 'Aws::DynamoDB::Projection', required => 1);
}

package Aws::DynamoDB::LocalSecondaryIndexDescription {
  use Moose;
  with ('AWS::API::ResultParser');
  has IndexName => (is => 'ro', isa => 'Str');
  has IndexSizeBytes => (is => 'ro', isa => 'Num');
  has ItemCount => (is => 'ro', isa => 'Num');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::KeySchemaElement]');
  has Projection => (is => 'ro', isa => 'Aws::DynamoDB::Projection');
}

package Aws::DynamoDB::Projection {
  use Moose;
  with ('AWS::API::ResultParser');
  has NonKeyAttributes => (is => 'ro', isa => 'ArrayRef[Str]');
  has ProjectionType => (is => 'ro', isa => 'Aws::DynamoDB::ProjectionType');
}

package Aws::DynamoDB::ProvisionedThroughput {
  use Moose;
  with ('AWS::API::ResultParser');
  has ReadCapacityUnits => (is => 'ro', isa => 'Num', required => 1);
  has WriteCapacityUnits => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::DynamoDB::ProvisionedThroughputDescription {
  use Moose;
  with ('AWS::API::ResultParser');
  has LastDecreaseDateTime => (is => 'ro', isa => 'Str');
  has LastIncreaseDateTime => (is => 'ro', isa => 'Str');
  has NumberOfDecreasesToday => (is => 'ro', isa => 'Num');
  has ReadCapacityUnits => (is => 'ro', isa => 'Num');
  has WriteCapacityUnits => (is => 'ro', isa => 'Num');
}

package Aws::DynamoDB::PutItemInputAttributeMap {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::DynamoDB::SecondaryIndexesCapacityMap {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::DynamoDB::TableDescription {
  use Moose;
  with ('AWS::API::ResultParser');
  has AttributeDefinitions => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::AttributeDefinition]');
  has CreationDateTime => (is => 'ro', isa => 'Str');
  has GlobalSecondaryIndexes => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::GlobalSecondaryIndexDescription]');
  has ItemCount => (is => 'ro', isa => 'Num');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::KeySchemaElement]');
  has LocalSecondaryIndexes => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::LocalSecondaryIndexDescription]');
  has ProvisionedThroughput => (is => 'ro', isa => 'Aws::DynamoDB::ProvisionedThroughputDescription');
  has TableName => (is => 'ro', isa => 'Str');
  has TableSizeBytes => (is => 'ro', isa => 'Num');
  has TableStatus => (is => 'ro', isa => 'Aws::DynamoDB::TableStatus');
}

package Aws::DynamoDB::UpdateGlobalSecondaryIndexAction {
  use Moose;
  with ('AWS::API::ResultParser');
  has IndexName => (is => 'ro', isa => 'Str', required => 1);
  has ProvisionedThroughput => (is => 'ro', isa => 'Aws::DynamoDB::ProvisionedThroughput', required => 1);
}



package Aws::DynamoDB::BatchGetItem {
  use Moose;
  has RequestItems => (is => 'ro', isa => 'Aws::DynamoDB::BatchGetRequestMap', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetItem');
  has _returns => (isa => 'Aws::DynamoDB::BatchGetItemResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'BatchGetItemResult');  
}
package Aws::DynamoDB::BatchWriteItem {
  use Moose;
  has RequestItems => (is => 'ro', isa => 'Aws::DynamoDB::BatchWriteItemRequestMap', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ReturnItemCollectionMetrics => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'BatchWriteItem');
  has _returns => (isa => 'Aws::DynamoDB::BatchWriteItemResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'BatchWriteItemResult');  
}
package Aws::DynamoDB::CreateTable {
  use Moose;
  has AttributeDefinitions => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::AttributeDefinition]', required => 1);
  has GlobalSecondaryIndexes => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::GlobalSecondaryIndex]');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::KeySchemaElement]', required => 1);
  has LocalSecondaryIndexes => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::LocalSecondaryIndex]');
  has ProvisionedThroughput => (is => 'ro', isa => 'Aws::DynamoDB::ProvisionedThroughput', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTable');
  has _returns => (isa => 'Aws::DynamoDB::CreateTableResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTableResult');  
}
package Aws::DynamoDB::DeleteItem {
  use Moose;
  has ConditionalOperator => (is => 'ro', isa => 'Str');
  has Expected => (is => 'ro', isa => 'Aws::DynamoDB::ExpectedAttributeMap');
  has Key => (is => 'ro', isa => 'Aws::DynamoDB::Key', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ReturnItemCollectionMetrics => (is => 'ro', isa => 'Str');
  has ReturnValues => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteItem');
  has _returns => (isa => 'Aws::DynamoDB::DeleteItemResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteItemResult');  
}
package Aws::DynamoDB::DeleteTable {
  use Moose;
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTable');
  has _returns => (isa => 'Aws::DynamoDB::DeleteTableResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteTableResult');  
}
package Aws::DynamoDB::DescribeTable {
  use Moose;
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTable');
  has _returns => (isa => 'Aws::DynamoDB::DescribeTableResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTableResult');  
}
package Aws::DynamoDB::GetItem {
  use Moose;
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str]');
  has ConsistentRead => (is => 'ro', isa => 'Bool');
  has Key => (is => 'ro', isa => 'Aws::DynamoDB::Key', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetItem');
  has _returns => (isa => 'Aws::DynamoDB::GetItemResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetItemResult');  
}
package Aws::DynamoDB::ListTables {
  use Moose;
  has ExclusiveStartTableName => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListTables');
  has _returns => (isa => 'Aws::DynamoDB::ListTablesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListTablesResult');  
}
package Aws::DynamoDB::PutItem {
  use Moose;
  has ConditionalOperator => (is => 'ro', isa => 'Str');
  has Expected => (is => 'ro', isa => 'Aws::DynamoDB::ExpectedAttributeMap');
  has Item => (is => 'ro', isa => 'Aws::DynamoDB::PutItemInputAttributeMap', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ReturnItemCollectionMetrics => (is => 'ro', isa => 'Str');
  has ReturnValues => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutItem');
  has _returns => (isa => 'Aws::DynamoDB::PutItemResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutItemResult');  
}
package Aws::DynamoDB::Query {
  use Moose;
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str]');
  has ConditionalOperator => (is => 'ro', isa => 'Str');
  has ConsistentRead => (is => 'ro', isa => 'Bool');
  has ExclusiveStartKey => (is => 'ro', isa => 'Aws::DynamoDB::Key');
  has IndexName => (is => 'ro', isa => 'Str');
  has KeyConditions => (is => 'ro', isa => 'Aws::DynamoDB::KeyConditions');
  has Limit => (is => 'ro', isa => 'Int');
  has QueryFilter => (is => 'ro', isa => 'Aws::DynamoDB::FilterConditionMap');
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ScanIndexForward => (is => 'ro', isa => 'Bool');
  has Select => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'Query');
  has _returns => (isa => 'Aws::DynamoDB::QueryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'QueryResult');  
}
package Aws::DynamoDB::Scan {
  use Moose;
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str]');
  has ConditionalOperator => (is => 'ro', isa => 'Str');
  has ExclusiveStartKey => (is => 'ro', isa => 'Aws::DynamoDB::Key');
  has Limit => (is => 'ro', isa => 'Int');
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ScanFilter => (is => 'ro', isa => 'Aws::DynamoDB::FilterConditionMap');
  has Segment => (is => 'ro', isa => 'Int');
  has Select => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);
  has TotalSegments => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'Scan');
  has _returns => (isa => 'Aws::DynamoDB::ScanResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ScanResult');  
}
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateItem');
  has _returns => (isa => 'Aws::DynamoDB::UpdateItemResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateItemResult');  
}
package Aws::DynamoDB::UpdateTable {
  use Moose;
  has GlobalSecondaryIndexUpdates => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::GlobalSecondaryIndexUpdate]');
  has ProvisionedThroughput => (is => 'ro', isa => 'Aws::DynamoDB::ProvisionedThroughput');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTable');
  has _returns => (isa => 'Aws::DynamoDB::UpdateTableResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateTableResult');  
}

package Aws::DynamoDB::BatchGetItemResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ConsumedCapacity => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::ConsumedCapacity]');
  has Responses => (is => 'ro', isa => 'Aws::DynamoDB::BatchGetResponseMap');
  has UnprocessedKeys => (is => 'ro', isa => 'Aws::DynamoDB::BatchGetRequestMap');

}
package Aws::DynamoDB::BatchWriteItemResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ConsumedCapacity => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::ConsumedCapacity]');
  has ItemCollectionMetrics => (is => 'ro', isa => 'Aws::DynamoDB::ItemCollectionMetricsPerTable');
  has UnprocessedItems => (is => 'ro', isa => 'Aws::DynamoDB::BatchWriteItemRequestMap');

}
package Aws::DynamoDB::CreateTableResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TableDescription => (is => 'ro', isa => 'Aws::DynamoDB::TableDescription');

}
package Aws::DynamoDB::DeleteItemResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Aws::DynamoDB::AttributeMap');
  has ConsumedCapacity => (is => 'ro', isa => 'Aws::DynamoDB::ConsumedCapacity');
  has ItemCollectionMetrics => (is => 'ro', isa => 'Aws::DynamoDB::ItemCollectionMetrics');

}
package Aws::DynamoDB::DeleteTableResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TableDescription => (is => 'ro', isa => 'Aws::DynamoDB::TableDescription');

}
package Aws::DynamoDB::DescribeTableResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Table => (is => 'ro', isa => 'Aws::DynamoDB::TableDescription');

}
package Aws::DynamoDB::GetItemResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ConsumedCapacity => (is => 'ro', isa => 'Aws::DynamoDB::ConsumedCapacity');
  has Item => (is => 'ro', isa => 'Aws::DynamoDB::AttributeMap');

}
package Aws::DynamoDB::ListTablesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LastEvaluatedTableName => (is => 'ro', isa => 'Str');
  has TableNames => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::DynamoDB::PutItemResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Aws::DynamoDB::AttributeMap');
  has ConsumedCapacity => (is => 'ro', isa => 'Aws::DynamoDB::ConsumedCapacity');
  has ItemCollectionMetrics => (is => 'ro', isa => 'Aws::DynamoDB::ItemCollectionMetrics');

}
package Aws::DynamoDB::QueryResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ConsumedCapacity => (is => 'ro', isa => 'Aws::DynamoDB::ConsumedCapacity');
  has Count => (is => 'ro', isa => 'Int');
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::AttributeMap]');
  has LastEvaluatedKey => (is => 'ro', isa => 'Aws::DynamoDB::Key');
  has ScannedCount => (is => 'ro', isa => 'Int');

}
package Aws::DynamoDB::ScanResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ConsumedCapacity => (is => 'ro', isa => 'Aws::DynamoDB::ConsumedCapacity');
  has Count => (is => 'ro', isa => 'Int');
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::AttributeMap]');
  has LastEvaluatedKey => (is => 'ro', isa => 'Aws::DynamoDB::Key');
  has ScannedCount => (is => 'ro', isa => 'Int');

}
package Aws::DynamoDB::UpdateItemResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Aws::DynamoDB::AttributeMap');
  has ConsumedCapacity => (is => 'ro', isa => 'Aws::DynamoDB::ConsumedCapacity');
  has ItemCollectionMetrics => (is => 'ro', isa => 'Aws::DynamoDB::ItemCollectionMetrics');

}
package Aws::DynamoDB::UpdateTableResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TableDescription => (is => 'ro', isa => 'Aws::DynamoDB::TableDescription');

}

package Aws::DynamoDB {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'dynamodb');
  has version => (is => 'ro', isa => 'Str', default => '2012-08-10');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'DynamoDB_20120810');
  has json_version => (is => 'ro', isa => 'Str', default => "1.0");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub BatchGetItem {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::DynamoDB::BatchGetItem', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::BatchGetItemResult->from_result($result);return $o_result;
  }
  sub BatchWriteItem {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::DynamoDB::BatchWriteItem', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::BatchWriteItemResult->from_result($result);return $o_result;
  }
  sub CreateTable {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::DynamoDB::CreateTable', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::CreateTableResult->from_result($result);return $o_result;
  }
  sub DeleteItem {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::DynamoDB::DeleteItem', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::DeleteItemResult->from_result($result);return $o_result;
  }
  sub DeleteTable {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::DynamoDB::DeleteTable', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::DeleteTableResult->from_result($result);return $o_result;
  }
  sub DescribeTable {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::DynamoDB::DescribeTable', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::DescribeTableResult->from_result($result);return $o_result;
  }
  sub GetItem {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::DynamoDB::GetItem', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::GetItemResult->from_result($result);return $o_result;
  }
  sub ListTables {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::DynamoDB::ListTables', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::ListTablesResult->from_result($result);return $o_result;
  }
  sub PutItem {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::DynamoDB::PutItem', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::PutItemResult->from_result($result);return $o_result;
  }
  sub Query {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::DynamoDB::Query', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::QueryResult->from_result($result);return $o_result;
  }
  sub Scan {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::DynamoDB::Scan', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::ScanResult->from_result($result);return $o_result;
  }
  sub UpdateItem {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::DynamoDB::UpdateItem', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::UpdateItemResult->from_result($result);return $o_result;
  }
  sub UpdateTable {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::DynamoDB::UpdateTable', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::UpdateTableResult->from_result($result);return $o_result;
  }
}
1;
