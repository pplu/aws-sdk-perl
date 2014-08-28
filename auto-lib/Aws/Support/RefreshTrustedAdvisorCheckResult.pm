
package Aws::Support::RefreshTrustedAdvisorCheckResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has status => (is => 'ro', isa => 'Aws::Support::TrustedAdvisorCheckRefreshStatus', required => 1);

}
1;
