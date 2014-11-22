
package Paws::OpsWorks::RegisterRdsDbInstance {
  use Moose;
  has DbPassword => (is => 'ro', isa => 'Str', required => 1);
  has DbUser => (is => 'ro', isa => 'Str', required => 1);
  has RdsDbInstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterRdsDbInstance');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;