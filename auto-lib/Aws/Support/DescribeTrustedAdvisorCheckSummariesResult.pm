
package Aws::Support::DescribeTrustedAdvisorCheckSummariesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has summaries => (is => 'ro', isa => 'ArrayRef[Aws::Support::TrustedAdvisorCheckSummary]', required => 1);

}
1;
