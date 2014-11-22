
package Paws::CloudSearch::DescribeServiceAccessPoliciesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has AccessPolicies => (is => 'ro', isa => 'Paws::CloudSearch::AccessPoliciesStatus', required => 1);

}
1;