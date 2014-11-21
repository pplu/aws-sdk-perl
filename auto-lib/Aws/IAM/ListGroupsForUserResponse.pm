
package Aws::IAM::ListGroupsForUserResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Groups => (is => 'ro', isa => 'ArrayRef[Aws::IAM::Group]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');

}
1;