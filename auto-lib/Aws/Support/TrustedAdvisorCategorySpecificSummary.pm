package Aws::Support::TrustedAdvisorCategorySpecificSummary {
  use Moose;
  with ('AWS::API::ResultParser');
  has costOptimizing => (is => 'ro', isa => 'Aws::Support::TrustedAdvisorCostOptimizingSummary');
}
1
