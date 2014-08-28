
package Aws::IAM::ChangePassword {
  use Moose;
  has NewPassword => (is => 'ro', isa => 'Str', required => 1);
  has OldPassword => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ChangePassword');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
  