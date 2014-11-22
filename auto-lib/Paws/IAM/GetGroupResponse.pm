
package Paws::IAM::GetGroupResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Group => (is => 'ro', isa => 'Paws::IAM::Group', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::IAM::User]', required => 1);

}
1;