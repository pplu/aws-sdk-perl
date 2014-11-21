
package Aws::IAM::GetGroupResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Group => (is => 'ro', isa => 'Aws::IAM::Group', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[Aws::IAM::User]', required => 1);

}
1;