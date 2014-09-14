
package Aws::DynamoDB::DescribeTableResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Table => (is => 'ro', isa => 'Aws::DynamoDB::TableDescription');

}
1;
