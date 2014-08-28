
package Aws::Support::DescribeTrustedAdvisorChecksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has checks => (is => 'ro', isa => 'ArrayRef[Aws::Support::TrustedAdvisorCheckDescription]', required => 1);

}
1;
