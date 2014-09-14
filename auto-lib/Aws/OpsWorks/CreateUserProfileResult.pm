
package Aws::OpsWorks::CreateUserProfileResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IamUserArn => (is => 'ro', isa => 'Str');

}
1;
