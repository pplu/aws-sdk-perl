
package Aws::CloudSearch::DeleteExpression {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has ExpressionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteExpression');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DeleteExpressionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteExpressionResult');
}
1;