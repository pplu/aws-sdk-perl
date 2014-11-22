
package Paws::IAM::GetAccountPasswordPolicy {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccountPasswordPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GetAccountPasswordPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetAccountPasswordPolicyResult');
}
1;