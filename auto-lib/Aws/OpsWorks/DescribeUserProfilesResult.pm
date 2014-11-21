
package Aws::OpsWorks::DescribeUserProfilesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has UserProfiles => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::UserProfile]');

}
1;