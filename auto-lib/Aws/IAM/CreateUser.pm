
package Aws::IAM::CreateUser {
  use Moose;
  has Path => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::CreateUserResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateUserResult');
}
1;
