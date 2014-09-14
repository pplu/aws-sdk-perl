
package Aws::OpsWorks::UpdateRdsDbInstance {
  use Moose;
  has DbPassword => (is => 'ro', isa => 'Str');
  has DbUser => (is => 'ro', isa => 'Str');
  has RdsDbInstanceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRdsDbInstance');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;