
package Aws::DynamoDB::ListTables {
  use Moose;
  has ExclusiveStartTableName => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTables');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DynamoDB::ListTablesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;