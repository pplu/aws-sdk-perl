
package Paws::OpsWorks::SetPermission {
  use Moose;
  has AllowSsh => (is => 'ro', isa => 'Bool');
  has AllowSudo => (is => 'ro', isa => 'Bool');
  has IamUserArn => (is => 'ro', isa => 'Str', required => 1);
  has Level => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetPermission');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;