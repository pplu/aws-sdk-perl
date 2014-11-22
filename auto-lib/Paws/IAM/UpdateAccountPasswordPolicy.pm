
package Paws::IAM::UpdateAccountPasswordPolicy {
  use Moose;
  has AllowUsersToChangePassword => (is => 'ro', isa => 'Bool');
  has HardExpiry => (is => 'ro', isa => 'Bool');
  has MaxPasswordAge => (is => 'ro', isa => 'Int');
  has MinimumPasswordLength => (is => 'ro', isa => 'Int');
  has PasswordReusePrevention => (is => 'ro', isa => 'Int');
  has RequireLowercaseCharacters => (is => 'ro', isa => 'Bool');
  has RequireNumbers => (is => 'ro', isa => 'Bool');
  has RequireSymbols => (is => 'ro', isa => 'Bool');
  has RequireUppercaseCharacters => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccountPasswordPolicy');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;