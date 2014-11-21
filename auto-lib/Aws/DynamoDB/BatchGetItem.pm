
package Aws::DynamoDB::BatchGetItem {
  use Moose;
  has RequestItems => (is => 'ro', isa => 'Aws::DynamoDB::BatchGetRequestMap', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetItem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DynamoDB::BatchGetItemOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;