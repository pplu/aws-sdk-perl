
package Aws::Support::DescribeTrustedAdvisorCheckResultResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has result => (is => 'ro', isa => 'Aws::Support::TrustedAdvisorCheckResult');

}
1;
