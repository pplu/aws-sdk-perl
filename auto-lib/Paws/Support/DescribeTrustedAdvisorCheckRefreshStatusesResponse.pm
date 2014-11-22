
package Paws::Support::DescribeTrustedAdvisorCheckRefreshStatusesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has statuses => (is => 'ro', isa => 'ArrayRef[Paws::Support::TrustedAdvisorCheckRefreshStatus]', required => 1);

}
1;