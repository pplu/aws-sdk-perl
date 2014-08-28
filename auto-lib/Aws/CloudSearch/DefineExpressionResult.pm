
package Aws::CloudSearch::DefineExpressionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Expression => (is => 'ro', isa => 'Aws::CloudSearch::ExpressionStatus', required => 1);

}
1;