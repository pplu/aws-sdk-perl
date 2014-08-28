
package Aws::CloudSearch::DescribeExpressions {
  use Moose;
  has Deployed => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has ExpressionNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExpressions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DescribeExpressionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeExpressionsResult');
}
1;
  