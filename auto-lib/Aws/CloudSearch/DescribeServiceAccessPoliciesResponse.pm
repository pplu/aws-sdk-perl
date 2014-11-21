
package Aws::CloudSearch::DescribeServiceAccessPoliciesResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has AccessPolicies => (is => 'ro', isa => 'Aws::CloudSearch::AccessPoliciesStatus', required => 1);

}
1;