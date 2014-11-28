
package Paws::CognitoSync::DescribeIdentityUsageResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has IdentityUsage => (is => 'ro', isa => 'Paws::CognitoSync::IdentityUsage');

}
1;