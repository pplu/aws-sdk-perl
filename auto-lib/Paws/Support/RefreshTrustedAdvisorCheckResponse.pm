
package Paws::Support::RefreshTrustedAdvisorCheckResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has status => (is => 'ro', isa => 'Paws::Support::TrustedAdvisorCheckRefreshStatus', required => 1);

}
1;