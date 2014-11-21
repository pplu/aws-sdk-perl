
package Aws::DynamoDB::UpdateTable {
  use Moose;
  has GlobalSecondaryIndexUpdates => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::GlobalSecondaryIndexUpdate]');
  has ProvisionedThroughput => (is => 'ro', isa => 'Aws::DynamoDB::ProvisionedThroughput');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DynamoDB::UpdateTableOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;