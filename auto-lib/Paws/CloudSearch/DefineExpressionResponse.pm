
package Paws::CloudSearch::DefineExpressionResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Expression => (is => 'ro', isa => 'Paws::CloudSearch::ExpressionStatus', required => 1);

}
1;