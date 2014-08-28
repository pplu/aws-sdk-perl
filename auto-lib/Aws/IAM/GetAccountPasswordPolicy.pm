
package Aws::IAM::GetAccountPasswordPolicy {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccountPasswordPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetAccountPasswordPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetAccountPasswordPolicyResult');
}
1;
  