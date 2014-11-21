
package Aws::RDS::RestoreDBInstanceToPointInTime {
  use Moose;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBName => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has RestoreTime => (is => 'ro', isa => 'Str');
  has SourceDBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]');
  has TargetDBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has UseLatestRestorableTime => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceToPointInTime');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::RestoreDBInstanceToPointInTimeResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceToPointInTimeResult');
}
1;