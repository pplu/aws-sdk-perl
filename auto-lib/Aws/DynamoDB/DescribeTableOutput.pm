
package Aws::DynamoDB::DescribeTableOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has Table => (is => 'ro', isa => 'Aws::DynamoDB::TableDescription');

}
1;