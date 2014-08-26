package Aws::CloudSearch::Expression {
  use Moose;
  with ('AWS::API::ResultParser');
  has ExpressionName => (is => 'ro', isa => 'Str', required => 1);
  has ExpressionValue => (is => 'ro', isa => 'Str', required => 1);
}
1
