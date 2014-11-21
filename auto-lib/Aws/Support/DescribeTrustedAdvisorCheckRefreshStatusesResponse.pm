
package Aws::Support::DescribeTrustedAdvisorCheckRefreshStatusesResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has statuses => (is => 'ro', isa => 'ArrayRef[Aws::Support::TrustedAdvisorCheckRefreshStatus]', required => 1);

}
1;