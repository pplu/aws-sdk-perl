
package Aws::CloudSearch::DescribeExpressionsResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Expressions => (is => 'ro', isa => 'ArrayRef[Aws::CloudSearch::ExpressionStatus]', required => 1);

}
1;