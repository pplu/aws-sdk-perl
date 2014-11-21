
package Aws::CloudSearch::UpdateServiceAccessPoliciesResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has AccessPolicies => (is => 'ro', isa => 'Aws::CloudSearch::AccessPoliciesStatus', required => 1);

}
1;