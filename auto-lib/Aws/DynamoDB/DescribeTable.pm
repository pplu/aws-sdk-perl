
package Aws::DynamoDB::DescribeTable {
  use Moose;
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DynamoDB::DescribeTableOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;