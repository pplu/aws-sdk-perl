
package Aws::DynamoDB::BatchWriteItem {
  use Moose;
  has RequestItems => (is => 'ro', isa => 'Aws::DynamoDB::BatchWriteItemRequestMap', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ReturnItemCollectionMetrics => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchWriteItem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DynamoDB::BatchWriteItemResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;