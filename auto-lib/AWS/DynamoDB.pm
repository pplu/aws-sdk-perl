
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'AWS::DynamoDB::AttributeAction', [qw(ADD PUT DELETE )];
enum 'AWS::DynamoDB::ComparisonOperator', [qw(EQ NE IN LE LT GE GT BETWEEN NOT_NULL NULL CONTAINS NOT_CONTAINS BEGINS_WITH )];
enum 'AWS::DynamoDB::KeyType', [qw(HASH RANGE )];
enum 'AWS::DynamoDB::ProjectionType', [qw(ALL KEYS_ONLY INCLUDE )];
enum 'AWS::DynamoDB::ScalarAttributeType', [qw(S N B )];
enum 'AWS::DynamoDB::TableStatus', [qw(CREATING UPDATING DELETING ACTIVE )];


class AWS::DynamoDB::AttributeDefinition with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has AttributeType => (is => 'ro', isa => 'AWS::DynamoDB::ScalarAttributeType', required => 1);
}

class AWS::DynamoDB::AttributeMap with AWS::API::MapParser {
class AWS::DynamoDB::AttributeUpdates with AWS::API::MapParser {
class AWS::DynamoDB::AttributeValue with (AWS::API::ResultParser, AWS::API::ToParams) {
  has B => (is => 'ro', isa => 'Str');
  has BS => (is => 'ro', isa => 'ArrayRef[Str]');
  has N => (is => 'ro', isa => 'Str');
  has NS => (is => 'ro', isa => 'ArrayRef[Str]');
  has S => (is => 'ro', isa => 'Str');
  has SS => (is => 'ro', isa => 'ArrayRef[Str]');
}

class AWS::DynamoDB::AttributeValueUpdate with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Action => (is => 'ro', isa => 'AWS::DynamoDB::AttributeAction');
  has Value => (is => 'ro', isa => 'AWS::DynamoDB::AttributeValue');
}

class AWS::DynamoDB::BatchGetRequestMap with AWS::API::MapParser {
class AWS::DynamoDB::BatchGetResponseMap with AWS::API::MapParser {
class AWS::DynamoDB::BatchWriteItemRequestMap with AWS::API::MapParser {
class AWS::DynamoDB::Condition with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AttributeValueList => (is => 'ro', isa => 'ArrayRef[AWS::DynamoDB::AttributeValue]');
  has ComparisonOperator => (is => 'ro', isa => 'AWS::DynamoDB::ComparisonOperator', required => 1);
}

class AWS::DynamoDB::ConsumedCapacity with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CapacityUnits => (is => 'ro', isa => 'Num');
  has TableName => (is => 'ro', isa => 'Str');
}

class AWS::DynamoDB::ExpectedAttributeMap with AWS::API::MapParser {
class AWS::DynamoDB::ExpectedAttributeValue with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Exists => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'AWS::DynamoDB::AttributeValue');
}

class AWS::DynamoDB::FilterConditionMap with AWS::API::MapParser {
class AWS::DynamoDB::ItemCollectionKeyAttributeMap with AWS::API::MapParser {
class AWS::DynamoDB::ItemCollectionMetrics with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ItemCollectionKey => (is => 'ro', isa => 'AWS::DynamoDB::ItemCollectionKeyAttributeMap');
  has SizeEstimateRangeGB => (is => 'ro', isa => 'ArrayRef[Num]');
}

class AWS::DynamoDB::ItemCollectionMetricsPerTable with AWS::API::MapParser {
class AWS::DynamoDB::Key with AWS::API::MapParser {
class AWS::DynamoDB::KeyConditions with AWS::API::MapParser {
class AWS::DynamoDB::KeySchemaElement with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has KeyType => (is => 'ro', isa => 'AWS::DynamoDB::KeyType', required => 1);
}

class AWS::DynamoDB::KeysAndAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str]');
  has ConsistentRead => (is => 'ro', isa => 'Str');
  has Keys => (is => 'ro', isa => 'ArrayRef[AWS::DynamoDB::Key]', required => 1);
}

class AWS::DynamoDB::LocalSecondaryIndex with (AWS::API::ResultParser, AWS::API::ToParams) {
  has IndexName => (is => 'ro', isa => 'Str', required => 1);
  has KeySchema => (is => 'ro', isa => 'ArrayRef[AWS::DynamoDB::KeySchemaElement]', required => 1);
  has Projection => (is => 'ro', isa => 'AWS::DynamoDB::Projection', required => 1);
}

class AWS::DynamoDB::LocalSecondaryIndexDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has IndexName => (is => 'ro', isa => 'Str');
  has IndexSizeBytes => (is => 'ro', isa => 'Num');
  has ItemCount => (is => 'ro', isa => 'Num');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[AWS::DynamoDB::KeySchemaElement]');
  has Projection => (is => 'ro', isa => 'AWS::DynamoDB::Projection');
}

class AWS::DynamoDB::Projection with (AWS::API::ResultParser, AWS::API::ToParams) {
  has NonKeyAttributes => (is => 'ro', isa => 'ArrayRef[Str]');
  has ProjectionType => (is => 'ro', isa => 'AWS::DynamoDB::ProjectionType');
}

class AWS::DynamoDB::ProvisionedThroughput with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ReadCapacityUnits => (is => 'ro', isa => 'Num', required => 1);
  has WriteCapacityUnits => (is => 'ro', isa => 'Num', required => 1);
}

class AWS::DynamoDB::ProvisionedThroughputDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has LastDecreaseDateTime => (is => 'ro', isa => 'Str');
  has LastIncreaseDateTime => (is => 'ro', isa => 'Str');
  has NumberOfDecreasesToday => (is => 'ro', isa => 'Num');
  has ReadCapacityUnits => (is => 'ro', isa => 'Num');
  has WriteCapacityUnits => (is => 'ro', isa => 'Num');
}

class AWS::DynamoDB::PutItemInputAttributeMap with AWS::API::MapParser {
class AWS::DynamoDB::TableDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AttributeDefinitions => (is => 'ro', isa => 'ArrayRef[AWS::DynamoDB::AttributeDefinition]');
  has CreationDateTime => (is => 'ro', isa => 'Str');
  has ItemCount => (is => 'ro', isa => 'Num');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[AWS::DynamoDB::KeySchemaElement]');
  has LocalSecondaryIndexes => (is => 'ro', isa => 'ArrayRef[AWS::DynamoDB::LocalSecondaryIndexDescription]');
  has ProvisionedThroughput => (is => 'ro', isa => 'AWS::DynamoDB::ProvisionedThroughputDescription');
  has TableName => (is => 'ro', isa => 'Str');
  has TableSizeBytes => (is => 'ro', isa => 'Num');
  has TableStatus => (is => 'ro', isa => 'AWS::DynamoDB::TableStatus');
}

class AWS::DynamoDB::WriteRequest with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DeleteRequest => (is => 'ro', isa => 'AWS::DynamoDB::DeleteRequest');
  has PutRequest => (is => 'ro', isa => 'AWS::DynamoDB::PutRequest');
}



class AWS::DynamoDB::BatchGetItem {
  has RequestItems => (is => 'ro', isa => 'AWS::DynamoDB::BatchGetRequestMap', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetItem');
  has _returns => (isa => 'AWS::DynamoDB::BatchGetItemResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'BatchGetItemResult');  
}
class AWS::DynamoDB::BatchWriteItem {
  has RequestItems => (is => 'ro', isa => 'AWS::DynamoDB::BatchWriteItemRequestMap', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ReturnItemCollectionMetrics => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'BatchWriteItem');
  has _returns => (isa => 'AWS::DynamoDB::BatchWriteItemResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'BatchWriteItemResult');  
}
class AWS::DynamoDB::CreateTable {
  has AttributeDefinitions => (is => 'ro', isa => 'ArrayRef[AWS::DynamoDB::AttributeDefinition]', required => 1);
  has KeySchema => (is => 'ro', isa => 'ArrayRef[AWS::DynamoDB::KeySchemaElement]', required => 1);
  has LocalSecondaryIndexes => (is => 'ro', isa => 'ArrayRef[AWS::DynamoDB::LocalSecondaryIndex]');
  has ProvisionedThroughput => (is => 'ro', isa => 'AWS::DynamoDB::ProvisionedThroughput', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTable');
  has _returns => (isa => 'AWS::DynamoDB::CreateTableResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTableResult');  
}
class AWS::DynamoDB::DeleteItem {
  has Expected => (is => 'ro', isa => 'AWS::DynamoDB::ExpectedAttributeMap');
  has Key => (is => 'ro', isa => 'AWS::DynamoDB::Key', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ReturnItemCollectionMetrics => (is => 'ro', isa => 'Str');
  has ReturnValues => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteItem');
  has _returns => (isa => 'AWS::DynamoDB::DeleteItemResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteItemResult');  
}
class AWS::DynamoDB::DeleteTable {
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTable');
  has _returns => (isa => 'AWS::DynamoDB::DeleteTableResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteTableResult');  
}
class AWS::DynamoDB::DescribeTable {
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTable');
  has _returns => (isa => 'AWS::DynamoDB::DescribeTableResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTableResult');  
}
class AWS::DynamoDB::GetItem {
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str]');
  has ConsistentRead => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'AWS::DynamoDB::Key', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetItem');
  has _returns => (isa => 'AWS::DynamoDB::GetItemResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetItemResult');  
}
class AWS::DynamoDB::ListTables {
  has ExclusiveStartTableName => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListTables');
  has _returns => (isa => 'AWS::DynamoDB::ListTablesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListTablesResult');  
}
class AWS::DynamoDB::PutItem {
  has Expected => (is => 'ro', isa => 'AWS::DynamoDB::ExpectedAttributeMap');
  has Item => (is => 'ro', isa => 'AWS::DynamoDB::PutItemInputAttributeMap', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ReturnItemCollectionMetrics => (is => 'ro', isa => 'Str');
  has ReturnValues => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutItem');
  has _returns => (isa => 'AWS::DynamoDB::PutItemResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutItemResult');  
}
class AWS::DynamoDB::Query {
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str]');
  has ConsistentRead => (is => 'ro', isa => 'Str');
  has ExclusiveStartKey => (is => 'ro', isa => 'AWS::DynamoDB::Key');
  has IndexName => (is => 'ro', isa => 'Str');
  has KeyConditions => (is => 'ro', isa => 'AWS::DynamoDB::KeyConditions');
  has Limit => (is => 'ro', isa => 'Int');
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ScanIndexForward => (is => 'ro', isa => 'Str');
  has Select => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'Query');
  has _returns => (isa => 'AWS::DynamoDB::QueryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'QueryResult');  
}
class AWS::DynamoDB::Scan {
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str]');
  has ExclusiveStartKey => (is => 'ro', isa => 'AWS::DynamoDB::Key');
  has Limit => (is => 'ro', isa => 'Int');
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ScanFilter => (is => 'ro', isa => 'AWS::DynamoDB::FilterConditionMap');
  has Segment => (is => 'ro', isa => 'Int');
  has Select => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);
  has TotalSegments => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'Scan');
  has _returns => (isa => 'AWS::DynamoDB::ScanResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ScanResult');  
}
class AWS::DynamoDB::UpdateItem {
  has AttributeUpdates => (is => 'ro', isa => 'AWS::DynamoDB::AttributeUpdates');
  has Expected => (is => 'ro', isa => 'AWS::DynamoDB::ExpectedAttributeMap');
  has Key => (is => 'ro', isa => 'AWS::DynamoDB::Key', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ReturnItemCollectionMetrics => (is => 'ro', isa => 'Str');
  has ReturnValues => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateItem');
  has _returns => (isa => 'AWS::DynamoDB::UpdateItemResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateItemResult');  
}
class AWS::DynamoDB::UpdateTable {
  has ProvisionedThroughput => (is => 'ro', isa => 'AWS::DynamoDB::ProvisionedThroughput', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTable');
  has _returns => (isa => 'AWS::DynamoDB::UpdateTableResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateTableResult');  
}

class AWS::DynamoDB::BatchGetItemResult with AWS::API::ResultParser {
  has ConsumedCapacity => (is => 'ro', isa => 'ArrayRef[AWS::DynamoDB::ConsumedCapacity]');
  has Responses => (is => 'ro', isa => 'AWS::DynamoDB::BatchGetResponseMap');
  has UnprocessedKeys => (is => 'ro', isa => 'AWS::DynamoDB::BatchGetRequestMap');

}
class AWS::DynamoDB::BatchWriteItemResult with AWS::API::ResultParser {
  has ConsumedCapacity => (is => 'ro', isa => 'ArrayRef[AWS::DynamoDB::ConsumedCapacity]');
  has ItemCollectionMetrics => (is => 'ro', isa => 'AWS::DynamoDB::ItemCollectionMetricsPerTable');
  has UnprocessedItems => (is => 'ro', isa => 'AWS::DynamoDB::BatchWriteItemRequestMap');

}
class AWS::DynamoDB::CreateTableResult with AWS::API::ResultParser {
  has TableDescription => (is => 'ro', isa => 'AWS::DynamoDB::TableDescription');

}
class AWS::DynamoDB::DeleteItemResult with AWS::API::ResultParser {
  has Attributes => (is => 'ro', isa => 'AWS::DynamoDB::AttributeMap');
  has ConsumedCapacity => (is => 'ro', isa => 'AWS::DynamoDB::ConsumedCapacity');
  has ItemCollectionMetrics => (is => 'ro', isa => 'AWS::DynamoDB::ItemCollectionMetrics');

}
class AWS::DynamoDB::DeleteTableResult with AWS::API::ResultParser {
  has TableDescription => (is => 'ro', isa => 'AWS::DynamoDB::TableDescription');

}
class AWS::DynamoDB::DescribeTableResult with AWS::API::ResultParser {
  has Table => (is => 'ro', isa => 'AWS::DynamoDB::TableDescription');

}
class AWS::DynamoDB::GetItemResult with AWS::API::ResultParser {
  has ConsumedCapacity => (is => 'ro', isa => 'AWS::DynamoDB::ConsumedCapacity');
  has Item => (is => 'ro', isa => 'AWS::DynamoDB::AttributeMap');

}
class AWS::DynamoDB::ListTablesResult with AWS::API::ResultParser {
  has LastEvaluatedTableName => (is => 'ro', isa => 'Str');
  has TableNames => (is => 'ro', isa => 'ArrayRef[Str]');

}
class AWS::DynamoDB::PutItemResult with AWS::API::ResultParser {
  has Attributes => (is => 'ro', isa => 'AWS::DynamoDB::AttributeMap');
  has ConsumedCapacity => (is => 'ro', isa => 'AWS::DynamoDB::ConsumedCapacity');
  has ItemCollectionMetrics => (is => 'ro', isa => 'AWS::DynamoDB::ItemCollectionMetrics');

}
class AWS::DynamoDB::QueryResult with AWS::API::ResultParser {
  has ConsumedCapacity => (is => 'ro', isa => 'AWS::DynamoDB::ConsumedCapacity');
  has Count => (is => 'ro', isa => 'Int');
  has Items => (is => 'ro', isa => 'ArrayRef[AWS::DynamoDB::AttributeMap]');
  has LastEvaluatedKey => (is => 'ro', isa => 'AWS::DynamoDB::Key');

}
class AWS::DynamoDB::ScanResult with AWS::API::ResultParser {
  has ConsumedCapacity => (is => 'ro', isa => 'AWS::DynamoDB::ConsumedCapacity');
  has Count => (is => 'ro', isa => 'Int');
  has Items => (is => 'ro', isa => 'ArrayRef[AWS::DynamoDB::AttributeMap]');
  has LastEvaluatedKey => (is => 'ro', isa => 'AWS::DynamoDB::Key');
  has ScannedCount => (is => 'ro', isa => 'Int');

}
class AWS::DynamoDB::UpdateItemResult with AWS::API::ResultParser {
  has Attributes => (is => 'ro', isa => 'AWS::DynamoDB::AttributeMap');
  has ConsumedCapacity => (is => 'ro', isa => 'AWS::DynamoDB::ConsumedCapacity');
  has ItemCollectionMetrics => (is => 'ro', isa => 'AWS::DynamoDB::ItemCollectionMetrics');

}
class AWS::DynamoDB::UpdateTableResult with AWS::API::ResultParser {
  has TableDescription => (is => 'ro', isa => 'AWS::DynamoDB::TableDescription');

}

class AWS::DynamoDB with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::JsonCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'dynamodb');
  has version => (is => 'ro', isa => 'Str', default => '2012-08-10');
  
  method BatchGetItem (%args) {
    my $call = AWS::DynamoDB::BatchGetItem->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DynamoDB::BatchGetItemResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method BatchWriteItem (%args) {
    my $call = AWS::DynamoDB::BatchWriteItem->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DynamoDB::BatchWriteItemResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateTable (%args) {
    my $call = AWS::DynamoDB::CreateTable->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DynamoDB::CreateTableResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteItem (%args) {
    my $call = AWS::DynamoDB::DeleteItem->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DynamoDB::DeleteItemResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteTable (%args) {
    my $call = AWS::DynamoDB::DeleteTable->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DynamoDB::DeleteTableResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeTable (%args) {
    my $call = AWS::DynamoDB::DescribeTable->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DynamoDB::DescribeTableResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetItem (%args) {
    my $call = AWS::DynamoDB::GetItem->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DynamoDB::GetItemResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListTables (%args) {
    my $call = AWS::DynamoDB::ListTables->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DynamoDB::ListTablesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method PutItem (%args) {
    my $call = AWS::DynamoDB::PutItem->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DynamoDB::PutItemResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method Query (%args) {
    my $call = AWS::DynamoDB::Query->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DynamoDB::QueryResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method Scan (%args) {
    my $call = AWS::DynamoDB::Scan->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DynamoDB::ScanResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateItem (%args) {
    my $call = AWS::DynamoDB::UpdateItem->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DynamoDB::UpdateItemResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateTable (%args) {
    my $call = AWS::DynamoDB::UpdateTable->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DynamoDB::UpdateTableResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
