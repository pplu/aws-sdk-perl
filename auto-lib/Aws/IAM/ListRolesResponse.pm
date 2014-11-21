
package Aws::IAM::ListRolesResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has Roles => (is => 'ro', isa => 'ArrayRef[Aws::IAM::Role]', required => 1);

}
1;