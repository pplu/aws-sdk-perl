package Aws::RDS::DBInstance {
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DBInstanceStatus => (is => 'ro', isa => 'Str');
  has DBName => (is => 'ro', isa => 'Str');
  has DBParameterGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBParameterGroupStatus]');
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSecurityGroupMembership]');
  has DBSubnetGroup => (is => 'ro', isa => 'Aws::RDS::DBSubnetGroup');
  has Endpoint => (is => 'ro', isa => 'Aws::RDS::Endpoint');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has InstanceCreateTime => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has LatestRestorableTime => (is => 'ro', isa => 'Str');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has OptionGroupMemberships => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionGroupMembership]');
  has PendingModifiedValues => (is => 'ro', isa => 'Aws::RDS::PendingModifiedValues');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has ReadReplicaDBInstanceIdentifiers => (is => 'ro', isa => 'ArrayRef[Str]');
  has ReadReplicaSourceDBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has SecondaryAvailabilityZone => (is => 'ro', isa => 'Str');
  has StatusInfos => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBInstanceStatusInfo]');
  has VpcSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::VpcSecurityGroupMembership]');
}
1
