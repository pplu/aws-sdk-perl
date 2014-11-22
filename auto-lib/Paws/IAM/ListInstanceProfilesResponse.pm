
package Paws::IAM::ListInstanceProfilesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has InstanceProfiles => (is => 'ro', isa => 'ArrayRef[Paws::IAM::InstanceProfile]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');

}
1;