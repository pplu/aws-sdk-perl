
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::DynamoDB::IndexStatus', ['CREATING','UPDATING','DELETING','ACTIVE',];
enum 'Aws::DynamoDB::KeyType', ['HASH','RANGE',];
enum 'Aws::DynamoDB::ProjectionType', ['ALL','KEYS_ONLY','INCLUDE',];
enum 'Aws::DynamoDB::ScalarAttributeType', ['S','N','B',];
enum 'Aws::DynamoDB::TableStatus', ['CREATING','UPDATING','DELETING','ACTIVE',];


class Aws::DynamoDB::AttributeDefinition with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has AttributeType => (is => 'ro', isa => 'Aws::DynamoDB::ScalarAttributeType', required => 1);
}

class Aws::DynamoDB::AttributeMap with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class Aws::DynamoDB::AttributeUpdates with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class Aws::DynamoDB::BatchGetRequestMap with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class Aws::DynamoDB::BatchGetResponseMap with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class Aws::DynamoDB::BatchWriteItemRequestMap with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class Aws::DynamoDB::Capacity with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CapacityUnits => (is => 'ro', isa => 'Num');
}

class Aws::DynamoDB::ConsumedCapacity with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CapacityUnits => (is => 'ro', isa => 'Num');
  has GlobalSecondaryIndexes => (is => 'ro', isa => 'Aws::DynamoDB::SecondaryIndexesCapacityMap');
  has LocalSecondaryIndexes => (is => 'ro', isa => 'Aws::DynamoDB::SecondaryIndexesCapacityMap');
  has Table => (is => 'ro', isa => 'Aws::DynamoDB::Capacity');
  has TableName => (is => 'ro', isa => 'Str');
}

class Aws::DynamoDB::ExpectedAttributeMap with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class Aws::DynamoDB::FilterConditionMap with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class Aws::DynamoDB::GlobalSecondaryIndex with (AWS::API::ResultParser, AWS::API::ToParams) {
  has IndexName => (is => 'ro', isa => 'Str', required => 1);
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::KeySchemaElement]', required => 1);
  has Projection => (is => 'ro', isa => 'Aws::DynamoDB::Projection', required => 1);
  has ProvisionedThroughput => (is => 'ro', isa => 'Aws::DynamoDB::ProvisionedThroughput', required => 1);
}

class Aws::DynamoDB::GlobalSecondaryIndexDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has IndexName => (is => 'ro', isa => 'Str');
  has IndexSizeBytes => (is => 'ro', isa => 'Num');
  has IndexStatus => (is => 'ro', isa => 'Aws::DynamoDB::IndexStatus');
  has ItemCount => (is => 'ro', isa => 'Num');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::KeySchemaElement]');
  has Projection => (is => 'ro', isa => 'Aws::DynamoDB::Projection');
  has ProvisionedThroughput => (is => 'ro', isa => 'Aws::DynamoDB::ProvisionedThroughputDescription');
}

class Aws::DynamoDB::GlobalSecondaryIndexUpdate with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Update => (is => 'ro', isa => 'Aws::DynamoDB::UpdateGlobalSecondaryIndexAction');
}

class Aws::DynamoDB::ItemCollectionKeyAttributeMap with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class Aws::DynamoDB::ItemCollectionMetrics with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ItemCollectionKey => (is => 'ro', isa => 'Aws::DynamoDB::ItemCollectionKeyAttributeMap');
  has SizeEstimateRangeGB => (is => 'ro', isa => 'ArrayRef[Num]');
}

class Aws::DynamoDB::ItemCollectionMetricsPerTable with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class Aws::DynamoDB::Key with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class Aws::DynamoDB::KeyConditions with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class Aws::DynamoDB::KeySchemaElement with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has KeyType => (is => 'ro', isa => 'Aws::DynamoDB::KeyType', required => 1);
}

class Aws::DynamoDB::LocalSecondaryIndex with (AWS::API::ResultParser, AWS::API::ToParams) {
  has IndexName => (is => 'ro', isa => 'Str', required => 1);
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::KeySchemaElement]', required => 1);
  has Projection => (is => 'ro', isa => 'Aws::DynamoDB::Projection', required => 1);
}

class Aws::DynamoDB::LocalSecondaryIndexDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has IndexName => (is => 'ro', isa => 'Str');
  has IndexSizeBytes => (is => 'ro', isa => 'Num');
  has ItemCount => (is => 'ro', isa => 'Num');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::KeySchemaElement]');
  has Projection => (is => 'ro', isa => 'Aws::DynamoDB::Projection');
}

class Aws::DynamoDB::Projection with (AWS::API::ResultParser, AWS::API::ToParams) {
  has NonKeyAttributes => (is => 'ro', isa => 'ArrayRef[Str]');
  has ProjectionType => (is => 'ro', isa => 'Aws::DynamoDB::ProjectionType');
}

class Aws::DynamoDB::ProvisionedThroughput with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ReadCapacityUnits => (is => 'ro', isa => 'Num', required => 1);
  has WriteCapacityUnits => (is => 'ro', isa => 'Num', required => 1);
}

class Aws::DynamoDB::ProvisionedThroughputDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has LastDecreaseDateTime => (is => 'ro', isa => 'Str');
  has LastIncreaseDateTime => (is => 'ro', isa => 'Str');
  has NumberOfDecreasesToday => (is => 'ro', isa => 'Num');
  has ReadCapacityUnits => (is => 'ro', isa => 'Num');
  has WriteCapacityUnits => (is => 'ro', isa => 'Num');
}

class Aws::DynamoDB::PutItemInputAttributeMap with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class Aws::DynamoDB::SecondaryIndexesCapacityMap with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class Aws::DynamoDB::TableDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::DynamoDB::UpdateGlobalSecondaryIndexAction with (AWS::API::ResultParser, AWS::API::ToParams) {
  has IndexName => (is => 'ro', isa => 'Str', required => 1);
  has ProvisionedThroughput => (is => 'ro', isa => 'Aws::DynamoDB::ProvisionedThroughput', required => 1);
}



class Aws::DynamoDB::BatchGetItem {
  has RequestItems => (is => 'ro', isa => 'Aws::DynamoDB::BatchGetRequestMap', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetItem');
  has _returns => (isa => 'Aws::DynamoDB::BatchGetItemResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'BatchGetItemResult');  
}
class Aws::DynamoDB::BatchWriteItem {
  has RequestItems => (is => 'ro', isa => 'Aws::DynamoDB::BatchWriteItemRequestMap', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ReturnItemCollectionMetrics => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'BatchWriteItem');
  has _returns => (isa => 'Aws::DynamoDB::BatchWriteItemResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'BatchWriteItemResult');  
}
class Aws::DynamoDB::CreateTable {
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
class Aws::DynamoDB::DeleteItem {
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
class Aws::DynamoDB::DeleteTable {
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTable');
  has _returns => (isa => 'Aws::DynamoDB::DeleteTableResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteTableResult');  
}
class Aws::DynamoDB::DescribeTable {
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTable');
  has _returns => (isa => 'Aws::DynamoDB::DescribeTableResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTableResult');  
}
class Aws::DynamoDB::GetItem {
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str]');
  has ConsistentRead => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Aws::DynamoDB::Key', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetItem');
  has _returns => (isa => 'Aws::DynamoDB::GetItemResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetItemResult');  
}
class Aws::DynamoDB::ListTables {
  has ExclusiveStartTableName => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListTables');
  has _returns => (isa => 'Aws::DynamoDB::ListTablesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListTablesResult');  
}
class Aws::DynamoDB::PutItem {
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
class Aws::DynamoDB::Query {
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str]');
  has ConsistentRead => (is => 'ro', isa => 'Str');
  has ExclusiveStartKey => (is => 'ro', isa => 'Aws::DynamoDB::Key');
  has IndexName => (is => 'ro', isa => 'Str');
  has KeyConditions => (is => 'ro', isa => 'Aws::DynamoDB::KeyConditions');
  has Limit => (is => 'ro', isa => 'Int');
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ScanIndexForward => (is => 'ro', isa => 'Str');
  has Select => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'Query');
  has _returns => (isa => 'Aws::DynamoDB::QueryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'QueryResult');  
}
class Aws::DynamoDB::Scan {
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str]');
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
class Aws::DynamoDB::UpdateItem {
  has AttributeUpdates => (is => 'ro', isa => 'Aws::DynamoDB::AttributeUpdates');
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
class Aws::DynamoDB::UpdateTable {
  has GlobalSecondaryIndexUpdates => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::GlobalSecondaryIndexUpdate]');
  has ProvisionedThroughput => (is => 'ro', isa => 'Aws::DynamoDB::ProvisionedThroughput');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTable');
  has _returns => (isa => 'Aws::DynamoDB::UpdateTableResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateTableResult');  
}

class Aws::DynamoDB::BatchGetItemResult with AWS::API::ResultParser {
  has ConsumedCapacity => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::ConsumedCapacity]');
  has Responses => (is => 'ro', isa => 'Aws::DynamoDB::BatchGetResponseMap');
  has UnprocessedKeys => (is => 'ro', isa => 'Aws::DynamoDB::BatchGetRequestMap');

}
class Aws::DynamoDB::BatchWriteItemResult with AWS::API::ResultParser {
  has ConsumedCapacity => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::ConsumedCapacity]');
  has ItemCollectionMetrics => (is => 'ro', isa => 'Aws::DynamoDB::ItemCollectionMetricsPerTable');
  has UnprocessedItems => (is => 'ro', isa => 'Aws::DynamoDB::BatchWriteItemRequestMap');

}
class Aws::DynamoDB::CreateTableResult with AWS::API::ResultParser {
  has TableDescription => (is => 'ro', isa => 'Aws::DynamoDB::TableDescription');

}
class Aws::DynamoDB::DeleteItemResult with AWS::API::ResultParser {
  has Attributes => (is => 'ro', isa => 'Aws::DynamoDB::AttributeMap');
  has ConsumedCapacity => (is => 'ro', isa => 'Aws::DynamoDB::ConsumedCapacity');
  has ItemCollectionMetrics => (is => 'ro', isa => 'Aws::DynamoDB::ItemCollectionMetrics');

}
class Aws::DynamoDB::DeleteTableResult with AWS::API::ResultParser {
  has TableDescription => (is => 'ro', isa => 'Aws::DynamoDB::TableDescription');

}
class Aws::DynamoDB::DescribeTableResult with AWS::API::ResultParser {
  has Table => (is => 'ro', isa => 'Aws::DynamoDB::TableDescription');

}
class Aws::DynamoDB::GetItemResult with AWS::API::ResultParser {
  has ConsumedCapacity => (is => 'ro', isa => 'Aws::DynamoDB::ConsumedCapacity');
  has Item => (is => 'ro', isa => 'Aws::DynamoDB::AttributeMap');

}
class Aws::DynamoDB::ListTablesResult with AWS::API::ResultParser {
  has LastEvaluatedTableName => (is => 'ro', isa => 'Str');
  has TableNames => (is => 'ro', isa => 'ArrayRef[Str]');

}
class Aws::DynamoDB::PutItemResult with AWS::API::ResultParser {
  has Attributes => (is => 'ro', isa => 'Aws::DynamoDB::AttributeMap');
  has ConsumedCapacity => (is => 'ro', isa => 'Aws::DynamoDB::ConsumedCapacity');
  has ItemCollectionMetrics => (is => 'ro', isa => 'Aws::DynamoDB::ItemCollectionMetrics');

}
class Aws::DynamoDB::QueryResult with AWS::API::ResultParser {
  has ConsumedCapacity => (is => 'ro', isa => 'Aws::DynamoDB::ConsumedCapacity');
  has Count => (is => 'ro', isa => 'Int');
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::AttributeMap]');
  has LastEvaluatedKey => (is => 'ro', isa => 'Aws::DynamoDB::Key');

}
class Aws::DynamoDB::ScanResult with AWS::API::ResultParser {
  has ConsumedCapacity => (is => 'ro', isa => 'Aws::DynamoDB::ConsumedCapacity');
  has Count => (is => 'ro', isa => 'Int');
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::AttributeMap]');
  has LastEvaluatedKey => (is => 'ro', isa => 'Aws::DynamoDB::Key');
  has ScannedCount => (is => 'ro', isa => 'Int');

}
class Aws::DynamoDB::UpdateItemResult with AWS::API::ResultParser {
  has Attributes => (is => 'ro', isa => 'Aws::DynamoDB::AttributeMap');
  has ConsumedCapacity => (is => 'ro', isa => 'Aws::DynamoDB::ConsumedCapacity');
  has ItemCollectionMetrics => (is => 'ro', isa => 'Aws::DynamoDB::ItemCollectionMetrics');

}
class Aws::DynamoDB::UpdateTableResult with AWS::API::ResultParser {
  has TableDescription => (is => 'ro', isa => 'Aws::DynamoDB::TableDescription');

}

class Aws::DynamoDB with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::JsonCaller, Net::AWS::JsonResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'dynamodb');
  has version => (is => 'ro', isa => 'Str', default => '2012-08-10');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'DynamoDB_20120810');
  has json_version => (is => 'ro', isa => 'Str', default => "1.0");
  
  method BatchGetItem (%args) {
    my $call = Aws::DynamoDB::BatchGetItem->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::BatchGetItemResult->from_result($result);return $o_result;
  }
  method BatchWriteItem (%args) {
    my $call = Aws::DynamoDB::BatchWriteItem->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::BatchWriteItemResult->from_result($result);return $o_result;
  }
  method CreateTable (%args) {
    my $call = Aws::DynamoDB::CreateTable->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::CreateTableResult->from_result($result);return $o_result;
  }
  method DeleteItem (%args) {
    my $call = Aws::DynamoDB::DeleteItem->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::DeleteItemResult->from_result($result);return $o_result;
  }
  method DeleteTable (%args) {
    my $call = Aws::DynamoDB::DeleteTable->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::DeleteTableResult->from_result($result);return $o_result;
  }
  method DescribeTable (%args) {
    my $call = Aws::DynamoDB::DescribeTable->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::DescribeTableResult->from_result($result);return $o_result;
  }
  method GetItem (%args) {
    my $call = Aws::DynamoDB::GetItem->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::GetItemResult->from_result($result);return $o_result;
  }
  method ListTables (%args) {
    my $call = Aws::DynamoDB::ListTables->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::ListTablesResult->from_result($result);return $o_result;
  }
  method PutItem (%args) {
    my $call = Aws::DynamoDB::PutItem->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::PutItemResult->from_result($result);return $o_result;
  }
  method Query (%args) {
    my $call = Aws::DynamoDB::Query->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::QueryResult->from_result($result);return $o_result;
  }
  method Scan (%args) {
    my $call = Aws::DynamoDB::Scan->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::ScanResult->from_result($result);return $o_result;
  }
  method UpdateItem (%args) {
    my $call = Aws::DynamoDB::UpdateItem->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::UpdateItemResult->from_result($result);return $o_result;
  }
  method UpdateTable (%args) {
    my $call = Aws::DynamoDB::UpdateTable->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DynamoDB::UpdateTableResult->from_result($result);return $o_result;
  }
}
