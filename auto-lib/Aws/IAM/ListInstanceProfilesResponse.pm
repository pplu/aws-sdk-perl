
package Aws::IAM::ListInstanceProfilesResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has InstanceProfiles => (is => 'ro', isa => 'ArrayRef[Aws::IAM::InstanceProfile]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');

}
1;