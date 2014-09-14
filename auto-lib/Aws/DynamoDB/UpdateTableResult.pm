
package Aws::DynamoDB::UpdateTableResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TableDescription => (is => 'ro', isa => 'Aws::DynamoDB::TableDescription');

}
1;
