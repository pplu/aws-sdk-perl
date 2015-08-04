package Paws::RDS::DBCluster {
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has DBClusterMembers => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBClusterMember]');
  has DBClusterOptionGroupMemberships => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBClusterOptionGroupStatus]');
  has DBClusterParameterGroup => (is => 'ro', isa => 'Str');
  has DBSubnetGroup => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has EarliestRestorableTime => (is => 'ro', isa => 'Str');
  has Endpoint => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has LatestRestorableTime => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has PercentProgress => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has VpcSecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::RDS::VpcSecurityGroupMembership]');
}
1;
