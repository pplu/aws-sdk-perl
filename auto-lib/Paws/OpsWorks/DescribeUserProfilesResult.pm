
package Paws::OpsWorks::DescribeUserProfilesResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has UserProfiles => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::UserProfile]');

}
1;