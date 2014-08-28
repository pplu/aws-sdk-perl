
package Aws::RDS::RebootDBInstance {
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ForceFailover => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RebootDBInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::RebootDBInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RebootDBInstanceResult');
}
1;
