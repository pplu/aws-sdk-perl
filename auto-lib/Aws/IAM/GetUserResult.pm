
package Aws::IAM::GetUserResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has User => (is => 'ro', isa => 'Aws::IAM::User', required => 1);

}
1;