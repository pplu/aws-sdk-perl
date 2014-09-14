
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

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Scan');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DynamoDB::ScanResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;