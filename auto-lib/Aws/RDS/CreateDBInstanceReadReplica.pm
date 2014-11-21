
package Aws::RDS::CreateDBInstanceReadReplica {
  use Moose;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has SourceDBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceReadReplica');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::CreateDBInstanceReadReplicaResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceReadReplicaResult');
}
1;