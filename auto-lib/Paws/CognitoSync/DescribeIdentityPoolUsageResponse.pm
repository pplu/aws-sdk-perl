
package Paws::CognitoSync::DescribeIdentityPoolUsageResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has IdentityPoolUsage => (is => 'ro', isa => 'Paws::CognitoSync::IdentityPoolUsage');

}
1;