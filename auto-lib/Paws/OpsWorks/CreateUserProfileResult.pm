
package Paws::OpsWorks::CreateUserProfileResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has IamUserArn => (is => 'ro', isa => 'Str');

}
1;