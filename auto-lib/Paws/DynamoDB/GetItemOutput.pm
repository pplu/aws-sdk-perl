
package Paws::DynamoDB::GetItemOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has ConsumedCapacity => (is => 'ro', isa => 'Paws::DynamoDB::ConsumedCapacity');
  has Item => (is => 'ro', isa => 'Paws::DynamoDB::AttributeMap');

}
1;