package Aws::CloudSearch::ExpressionStatus {
  use Moose;
  has Options => (is => 'ro', isa => 'Aws::CloudSearch::Expression', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}
1;
