
package Aws::Support::DescribeTrustedAdvisorCheckResultResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has result => (is => 'ro', isa => 'Aws::Support::TrustedAdvisorCheckResult');

}
1;