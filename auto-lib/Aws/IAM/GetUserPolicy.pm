
package Aws::IAM::GetUserPolicy {
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUserPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetUserPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetUserPolicyResult');
}
1;
  