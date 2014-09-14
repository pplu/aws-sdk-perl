
package Aws::DynamoDB::CreateTable {
  use Moose;
  has AttributeDefinitions => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::AttributeDefinition]', required => 1);
  has GlobalSecondaryIndexes => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::GlobalSecondaryIndex]');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::KeySchemaElement]', required => 1);
  has LocalSecondaryIndexes => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::LocalSecondaryIndex]');
  has ProvisionedThroughput => (is => 'ro', isa => 'Aws::DynamoDB::ProvisionedThroughput', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DynamoDB::CreateTableResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;