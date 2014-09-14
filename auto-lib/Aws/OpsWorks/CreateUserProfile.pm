
package Aws::OpsWorks::CreateUserProfile {
  use Moose;
  has AllowSelfManagement => (is => 'ro', isa => 'Bool');
  has IamUserArn => (is => 'ro', isa => 'Str', required => 1);
  has SshPublicKey => (is => 'ro', isa => 'Str');
  has SshUsername => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUserProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::CreateUserProfileResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;