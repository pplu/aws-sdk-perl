
package Paws::IAM::ListGroupPoliciesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
1;