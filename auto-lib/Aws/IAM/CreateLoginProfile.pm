
package Aws::IAM::CreateLoginProfile {
  use Moose;
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has PasswordResetRequired => (is => 'ro', isa => 'Bool');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoginProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::CreateLoginProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoginProfileResult');
}
1;