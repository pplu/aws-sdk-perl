
package Aws::DynamoDB::GetItemOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has ConsumedCapacity => (is => 'ro', isa => 'Aws::DynamoDB::ConsumedCapacity');
  has Item => (is => 'ro', isa => 'Aws::DynamoDB::AttributeMap');

}
1;