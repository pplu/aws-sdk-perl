package Aws::Support::TrustedAdvisorCostOptimizingSummary {
  use Moose;
  with ('AWS::API::ResultParser');
  has estimatedMonthlySavings => (is => 'ro', isa => 'Num', required => 1);
  has estimatedPercentMonthlySavings => (is => 'ro', isa => 'Num', required => 1);
}
1
