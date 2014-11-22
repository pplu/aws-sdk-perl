
package Paws::IAM::ListGroupsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::IAM::Group]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');

}
1;