
package Aws::RedShift::RestoreFromClusterSnapshot {
  use Moose;
  has AllowVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has ElasticIp => (is => 'ro', isa => 'Str');
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has OwnerAccount => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreFromClusterSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::RestoreFromClusterSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreFromClusterSnapshotResult');
}
1;