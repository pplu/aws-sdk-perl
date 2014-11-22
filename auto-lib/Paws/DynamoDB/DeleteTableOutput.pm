
package Paws::DynamoDB::DeleteTableOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has TableDescription => (is => 'ro', isa => 'Paws::DynamoDB::TableDescription');

}
1;