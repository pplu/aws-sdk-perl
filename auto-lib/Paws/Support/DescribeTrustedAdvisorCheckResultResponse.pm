
package Paws::Support::DescribeTrustedAdvisorCheckResultResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has result => (is => 'ro', isa => 'Paws::Support::TrustedAdvisorCheckResult');

}
1;