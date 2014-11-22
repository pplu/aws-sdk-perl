
package Paws::OpsWorks::DescribeMyUserProfileResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has UserProfile => (is => 'ro', isa => 'Paws::OpsWorks::SelfUserProfile');

}
1;