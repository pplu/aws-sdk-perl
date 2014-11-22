
package Paws::DynamoDB::DescribeTableOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Table => (is => 'ro', isa => 'Paws::DynamoDB::TableDescription');

}
1;