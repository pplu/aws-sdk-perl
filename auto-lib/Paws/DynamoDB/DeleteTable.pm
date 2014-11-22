
package Paws::DynamoDB::DeleteTable {
  use Moose;
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::DeleteTableOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;