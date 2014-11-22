
package Paws::CloudSearch::DescribeExpressionsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Expressions => (is => 'ro', isa => 'ArrayRef[Paws::CloudSearch::ExpressionStatus]', required => 1);

}
1;