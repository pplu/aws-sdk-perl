
package Aws::IAM::CreateUserResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has User => (is => 'ro', isa => 'Aws::IAM::User');

}
1;