
package Aws::OpsWorks::DescribeMyUserProfileResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has UserProfile => (is => 'ro', isa => 'Aws::OpsWorks::SelfUserProfile');

}
1;
