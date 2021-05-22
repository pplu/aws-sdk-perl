package Paws::RDS;
  use Moose;
  sub service { 'rds' }
  sub signing_name { 'rds' }
  sub version { '2014-10-31' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller';

  has '+region_rules' => (default => sub {
    my $regioninfo;
      $regioninfo = [
    {
      constraints => [
        [
          'region',
          'equals',
          'us-east-1'
        ]
      ],
      uri => 'https://rds.amazonaws.com'
    }
  ];

    return $regioninfo;
  });

  
  sub AddRoleToDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::AddRoleToDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddRoleToDBInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::AddRoleToDBInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddSourceIdentifierToSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::AddSourceIdentifierToSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddTagsToResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::AddTagsToResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ApplyPendingMaintenanceAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ApplyPendingMaintenanceAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AuthorizeDBSecurityGroupIngress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::AuthorizeDBSecurityGroupIngress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BacktrackDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::BacktrackDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelExportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CancelExportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyDBClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CopyDBClusterParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyDBClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CopyDBClusterSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyDBParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CopyDBParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyDBSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CopyDBSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyOptionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CopyOptionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCustomAvailabilityZone {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CreateCustomAvailabilityZone', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CreateDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBClusterEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CreateDBClusterEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CreateDBClusterParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CreateDBClusterSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CreateDBInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBInstanceReadReplica {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CreateDBInstanceReadReplica', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CreateDBParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBProxy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CreateDBProxy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBProxyEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CreateDBProxyEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBSecurityGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CreateDBSecurityGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CreateDBSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CreateDBSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CreateEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGlobalCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CreateGlobalCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOptionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CreateOptionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCustomAvailabilityZone {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteCustomAvailabilityZone', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBClusterEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteDBClusterEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteDBClusterParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteDBClusterSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteDBInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBInstanceAutomatedBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteDBInstanceAutomatedBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteDBParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBProxy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteDBProxy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBProxyEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteDBProxyEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBSecurityGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteDBSecurityGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteDBSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteDBSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGlobalCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteGlobalCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInstallationMedia {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteInstallationMedia', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOptionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteOptionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterDBProxyTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeregisterDBProxyTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeAccountAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeCertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCustomAvailabilityZones {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeCustomAvailabilityZones', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBClusterBacktracks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBClusterBacktracks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBClusterEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBClusterEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBClusterParameterGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBClusterParameterGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBClusterParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBClusterParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBClusterSnapshotAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBClusterSnapshotAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBClusterSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBClusterSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBEngineVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBEngineVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBInstanceAutomatedBackups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBInstanceAutomatedBackups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBLogFiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBLogFiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBParameterGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBParameterGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBProxies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBProxies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBProxyEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBProxyEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBProxyTargetGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBProxyTargetGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBProxyTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBProxyTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBSecurityGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBSecurityGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBSnapshotAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBSnapshotAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBSubnetGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeDBSubnetGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEngineDefaultClusterParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeEngineDefaultClusterParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEngineDefaultParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeEngineDefaultParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventCategories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeEventCategories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventSubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeEventSubscriptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExportTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeExportTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGlobalClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeGlobalClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstallationMedia {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeInstallationMedia', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOptionGroupOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeOptionGroupOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOptionGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeOptionGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrderableDBInstanceOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeOrderableDBInstanceOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePendingMaintenanceActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribePendingMaintenanceActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedDBInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeReservedDBInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedDBInstancesOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeReservedDBInstancesOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSourceRegions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeSourceRegions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeValidDBInstanceModifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DescribeValidDBInstanceModifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DownloadDBLogFilePortion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DownloadDBLogFilePortion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub FailoverDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::FailoverDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub FailoverGlobalCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::FailoverGlobalCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportInstallationMedia {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ImportInstallationMedia', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ModifyCertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyCurrentDBClusterCapacity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ModifyCurrentDBClusterCapacity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ModifyDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBClusterEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ModifyDBClusterEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ModifyDBClusterParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBClusterSnapshotAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ModifyDBClusterSnapshotAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ModifyDBInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ModifyDBParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBProxy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ModifyDBProxy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBProxyEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ModifyDBProxyEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBProxyTargetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ModifyDBProxyTargetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ModifyDBSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBSnapshotAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ModifyDBSnapshotAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ModifyDBSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ModifyEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyGlobalCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ModifyGlobalCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyOptionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ModifyOptionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PromoteReadReplica {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::PromoteReadReplica', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PromoteReadReplicaDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::PromoteReadReplicaDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseReservedDBInstancesOffering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::PurchaseReservedDBInstancesOffering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootDBInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::RebootDBInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterDBProxyTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::RegisterDBProxyTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveFromGlobalCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::RemoveFromGlobalCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveRoleFromDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::RemoveRoleFromDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveRoleFromDBInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::RemoveRoleFromDBInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveSourceIdentifierFromSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::RemoveSourceIdentifierFromSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTagsFromResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::RemoveTagsFromResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetDBClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ResetDBClusterParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetDBParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ResetDBParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreDBClusterFromS3 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::RestoreDBClusterFromS3', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreDBClusterFromSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::RestoreDBClusterFromSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreDBClusterToPointInTime {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::RestoreDBClusterToPointInTime', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreDBInstanceFromDBSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::RestoreDBInstanceFromDBSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreDBInstanceFromS3 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::RestoreDBInstanceFromS3', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreDBInstanceToPointInTime {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::RestoreDBInstanceToPointInTime', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeDBSecurityGroupIngress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::RevokeDBSecurityGroupIngress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartActivityStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::StartActivityStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::StartDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDBInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::StartDBInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDBInstanceAutomatedBackupsReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::StartDBInstanceAutomatedBackupsReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartExportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::StartExportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopActivityStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::StopActivityStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::StopDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDBInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::StopDBInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDBInstanceAutomatedBackupsReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::StopDBInstanceAutomatedBackupsReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllCertificates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCertificates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeCertificates(@_, Marker => $next_result->Marker);
        push @{ $result->Certificates }, @{ $next_result->Certificates };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Certificates') foreach (@{ $result->Certificates });
        $result = $self->DescribeCertificates(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Certificates') foreach (@{ $result->Certificates });
    }

    return undef
  }
  sub DescribeAllCustomAvailabilityZones {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCustomAvailabilityZones(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeCustomAvailabilityZones(@_, Marker => $next_result->Marker);
        push @{ $result->CustomAvailabilityZones }, @{ $next_result->CustomAvailabilityZones };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'CustomAvailabilityZones') foreach (@{ $result->CustomAvailabilityZones });
        $result = $self->DescribeCustomAvailabilityZones(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'CustomAvailabilityZones') foreach (@{ $result->CustomAvailabilityZones });
    }

    return undef
  }
  sub DescribeAllDBClusterBacktracks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBClusterBacktracks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDBClusterBacktracks(@_, Marker => $next_result->Marker);
        push @{ $result->DBClusterBacktracks }, @{ $next_result->DBClusterBacktracks };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'DBClusterBacktracks') foreach (@{ $result->DBClusterBacktracks });
        $result = $self->DescribeDBClusterBacktracks(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'DBClusterBacktracks') foreach (@{ $result->DBClusterBacktracks });
    }

    return undef
  }
  sub DescribeAllDBClusterEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBClusterEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDBClusterEndpoints(@_, Marker => $next_result->Marker);
        push @{ $result->DBClusterEndpoints }, @{ $next_result->DBClusterEndpoints };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'DBClusterEndpoints') foreach (@{ $result->DBClusterEndpoints });
        $result = $self->DescribeDBClusterEndpoints(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'DBClusterEndpoints') foreach (@{ $result->DBClusterEndpoints });
    }

    return undef
  }
  sub DescribeAllDBClusterParameterGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBClusterParameterGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDBClusterParameterGroups(@_, Marker => $next_result->Marker);
        push @{ $result->DBClusterParameterGroups }, @{ $next_result->DBClusterParameterGroups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'DBClusterParameterGroups') foreach (@{ $result->DBClusterParameterGroups });
        $result = $self->DescribeDBClusterParameterGroups(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'DBClusterParameterGroups') foreach (@{ $result->DBClusterParameterGroups });
    }

    return undef
  }
  sub DescribeAllDBClusterParameters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBClusterParameters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDBClusterParameters(@_, Marker => $next_result->Marker);
        push @{ $result->Parameters }, @{ $next_result->Parameters };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Parameters') foreach (@{ $result->Parameters });
        $result = $self->DescribeDBClusterParameters(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Parameters') foreach (@{ $result->Parameters });
    }

    return undef
  }
  sub DescribeAllDBClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDBClusters(@_, Marker => $next_result->Marker);
        push @{ $result->DBClusters }, @{ $next_result->DBClusters };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'DBClusters') foreach (@{ $result->DBClusters });
        $result = $self->DescribeDBClusters(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'DBClusters') foreach (@{ $result->DBClusters });
    }

    return undef
  }
  sub DescribeAllDBClusterSnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBClusterSnapshots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDBClusterSnapshots(@_, Marker => $next_result->Marker);
        push @{ $result->DBClusterSnapshots }, @{ $next_result->DBClusterSnapshots };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'DBClusterSnapshots') foreach (@{ $result->DBClusterSnapshots });
        $result = $self->DescribeDBClusterSnapshots(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'DBClusterSnapshots') foreach (@{ $result->DBClusterSnapshots });
    }

    return undef
  }
  sub DescribeAllDBEngineVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBEngineVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDBEngineVersions(@_, Marker => $next_result->Marker);
        push @{ $result->DBEngineVersions }, @{ $next_result->DBEngineVersions };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'DBEngineVersions') foreach (@{ $result->DBEngineVersions });
        $result = $self->DescribeDBEngineVersions(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'DBEngineVersions') foreach (@{ $result->DBEngineVersions });
    }

    return undef
  }
  sub DescribeAllDBInstanceAutomatedBackups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBInstanceAutomatedBackups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDBInstanceAutomatedBackups(@_, Marker => $next_result->Marker);
        push @{ $result->DBInstanceAutomatedBackups }, @{ $next_result->DBInstanceAutomatedBackups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'DBInstanceAutomatedBackups') foreach (@{ $result->DBInstanceAutomatedBackups });
        $result = $self->DescribeDBInstanceAutomatedBackups(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'DBInstanceAutomatedBackups') foreach (@{ $result->DBInstanceAutomatedBackups });
    }

    return undef
  }
  sub DescribeAllDBInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDBInstances(@_, Marker => $next_result->Marker);
        push @{ $result->DBInstances }, @{ $next_result->DBInstances };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'DBInstances') foreach (@{ $result->DBInstances });
        $result = $self->DescribeDBInstances(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'DBInstances') foreach (@{ $result->DBInstances });
    }

    return undef
  }
  sub DescribeAllDBLogFiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBLogFiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDBLogFiles(@_, Marker => $next_result->Marker);
        push @{ $result->DescribeDBLogFiles }, @{ $next_result->DescribeDBLogFiles };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'DescribeDBLogFiles') foreach (@{ $result->DescribeDBLogFiles });
        $result = $self->DescribeDBLogFiles(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'DescribeDBLogFiles') foreach (@{ $result->DescribeDBLogFiles });
    }

    return undef
  }
  sub DescribeAllDBParameterGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBParameterGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDBParameterGroups(@_, Marker => $next_result->Marker);
        push @{ $result->DBParameterGroups }, @{ $next_result->DBParameterGroups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'DBParameterGroups') foreach (@{ $result->DBParameterGroups });
        $result = $self->DescribeDBParameterGroups(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'DBParameterGroups') foreach (@{ $result->DBParameterGroups });
    }

    return undef
  }
  sub DescribeAllDBParameters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBParameters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDBParameters(@_, Marker => $next_result->Marker);
        push @{ $result->Parameters }, @{ $next_result->Parameters };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Parameters') foreach (@{ $result->Parameters });
        $result = $self->DescribeDBParameters(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Parameters') foreach (@{ $result->Parameters });
    }

    return undef
  }
  sub DescribeAllDBProxies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBProxies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDBProxies(@_, Marker => $next_result->Marker);
        push @{ $result->DBProxies }, @{ $next_result->DBProxies };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'DBProxies') foreach (@{ $result->DBProxies });
        $result = $self->DescribeDBProxies(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'DBProxies') foreach (@{ $result->DBProxies });
    }

    return undef
  }
  sub DescribeAllDBProxyEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBProxyEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDBProxyEndpoints(@_, Marker => $next_result->Marker);
        push @{ $result->DBProxyEndpoints }, @{ $next_result->DBProxyEndpoints };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'DBProxyEndpoints') foreach (@{ $result->DBProxyEndpoints });
        $result = $self->DescribeDBProxyEndpoints(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'DBProxyEndpoints') foreach (@{ $result->DBProxyEndpoints });
    }

    return undef
  }
  sub DescribeAllDBProxyTargetGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBProxyTargetGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDBProxyTargetGroups(@_, Marker => $next_result->Marker);
        push @{ $result->TargetGroups }, @{ $next_result->TargetGroups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'TargetGroups') foreach (@{ $result->TargetGroups });
        $result = $self->DescribeDBProxyTargetGroups(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'TargetGroups') foreach (@{ $result->TargetGroups });
    }

    return undef
  }
  sub DescribeAllDBProxyTargets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBProxyTargets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDBProxyTargets(@_, Marker => $next_result->Marker);
        push @{ $result->Targets }, @{ $next_result->Targets };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Targets') foreach (@{ $result->Targets });
        $result = $self->DescribeDBProxyTargets(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Targets') foreach (@{ $result->Targets });
    }

    return undef
  }
  sub DescribeAllDBSecurityGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBSecurityGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDBSecurityGroups(@_, Marker => $next_result->Marker);
        push @{ $result->DBSecurityGroups }, @{ $next_result->DBSecurityGroups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'DBSecurityGroups') foreach (@{ $result->DBSecurityGroups });
        $result = $self->DescribeDBSecurityGroups(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'DBSecurityGroups') foreach (@{ $result->DBSecurityGroups });
    }

    return undef
  }
  sub DescribeAllDBSnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBSnapshots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDBSnapshots(@_, Marker => $next_result->Marker);
        push @{ $result->DBSnapshots }, @{ $next_result->DBSnapshots };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'DBSnapshots') foreach (@{ $result->DBSnapshots });
        $result = $self->DescribeDBSnapshots(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'DBSnapshots') foreach (@{ $result->DBSnapshots });
    }

    return undef
  }
  sub DescribeAllDBSubnetGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBSubnetGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeDBSubnetGroups(@_, Marker => $next_result->Marker);
        push @{ $result->DBSubnetGroups }, @{ $next_result->DBSubnetGroups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'DBSubnetGroups') foreach (@{ $result->DBSubnetGroups });
        $result = $self->DescribeDBSubnetGroups(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'DBSubnetGroups') foreach (@{ $result->DBSubnetGroups });
    }

    return undef
  }
  sub DescribeAllEngineDefaultClusterParameters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEngineDefaultClusterParameters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->EngineDefaults->Marker) {
        $next_result = $self->DescribeEngineDefaultClusterParameters(@_, Marker => $next_result->EngineDefaults->Marker);
        push @{ $result->EngineDefaults->Parameters }, @{ $next_result->EngineDefaults->Parameters };
      }
      return $result;
    } else {
      while ($result->EngineDefaults->Marker) {
        $callback->($_ => 'EngineDefaults.Parameters') foreach (@{ $result->EngineDefaults->Parameters });
        $result = $self->DescribeEngineDefaultClusterParameters(@_, Marker => $result->EngineDefaults->Marker);
      }
      $callback->($_ => 'EngineDefaults.Parameters') foreach (@{ $result->EngineDefaults->Parameters });
    }

    return undef
  }
  sub DescribeAllEngineDefaultParameters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEngineDefaultParameters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->EngineDefaults->Marker) {
        $next_result = $self->DescribeEngineDefaultParameters(@_, Marker => $next_result->EngineDefaults->Marker);
        push @{ $result->EngineDefaults->Parameters }, @{ $next_result->EngineDefaults->Parameters };
      }
      return $result;
    } else {
      while ($result->EngineDefaults->Marker) {
        $callback->($_ => 'EngineDefaults.Parameters') foreach (@{ $result->EngineDefaults->Parameters });
        $result = $self->DescribeEngineDefaultParameters(@_, Marker => $result->EngineDefaults->Marker);
      }
      $callback->($_ => 'EngineDefaults.Parameters') foreach (@{ $result->EngineDefaults->Parameters });
    }

    return undef
  }
  sub DescribeAllEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeEvents(@_, Marker => $next_result->Marker);
        push @{ $result->Events }, @{ $next_result->Events };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Events') foreach (@{ $result->Events });
        $result = $self->DescribeEvents(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Events') foreach (@{ $result->Events });
    }

    return undef
  }
  sub DescribeAllEventSubscriptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEventSubscriptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeEventSubscriptions(@_, Marker => $next_result->Marker);
        push @{ $result->EventSubscriptionsList }, @{ $next_result->EventSubscriptionsList };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'EventSubscriptionsList') foreach (@{ $result->EventSubscriptionsList });
        $result = $self->DescribeEventSubscriptions(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'EventSubscriptionsList') foreach (@{ $result->EventSubscriptionsList });
    }

    return undef
  }
  sub DescribeAllExportTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeExportTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeExportTasks(@_, Marker => $next_result->Marker);
        push @{ $result->ExportTasks }, @{ $next_result->ExportTasks };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ExportTasks') foreach (@{ $result->ExportTasks });
        $result = $self->DescribeExportTasks(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ExportTasks') foreach (@{ $result->ExportTasks });
    }

    return undef
  }
  sub DescribeAllGlobalClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeGlobalClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeGlobalClusters(@_, Marker => $next_result->Marker);
        push @{ $result->GlobalClusters }, @{ $next_result->GlobalClusters };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'GlobalClusters') foreach (@{ $result->GlobalClusters });
        $result = $self->DescribeGlobalClusters(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'GlobalClusters') foreach (@{ $result->GlobalClusters });
    }

    return undef
  }
  sub DescribeAllInstallationMedia {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstallationMedia(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeInstallationMedia(@_, Marker => $next_result->Marker);
        push @{ $result->InstallationMedia }, @{ $next_result->InstallationMedia };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'InstallationMedia') foreach (@{ $result->InstallationMedia });
        $result = $self->DescribeInstallationMedia(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'InstallationMedia') foreach (@{ $result->InstallationMedia });
    }

    return undef
  }
  sub DescribeAllOptionGroupOptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeOptionGroupOptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeOptionGroupOptions(@_, Marker => $next_result->Marker);
        push @{ $result->OptionGroupOptions }, @{ $next_result->OptionGroupOptions };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'OptionGroupOptions') foreach (@{ $result->OptionGroupOptions });
        $result = $self->DescribeOptionGroupOptions(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'OptionGroupOptions') foreach (@{ $result->OptionGroupOptions });
    }

    return undef
  }
  sub DescribeAllOptionGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeOptionGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeOptionGroups(@_, Marker => $next_result->Marker);
        push @{ $result->OptionGroupsList }, @{ $next_result->OptionGroupsList };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'OptionGroupsList') foreach (@{ $result->OptionGroupsList });
        $result = $self->DescribeOptionGroups(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'OptionGroupsList') foreach (@{ $result->OptionGroupsList });
    }

    return undef
  }
  sub DescribeAllOrderableDBInstanceOptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeOrderableDBInstanceOptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeOrderableDBInstanceOptions(@_, Marker => $next_result->Marker);
        push @{ $result->OrderableDBInstanceOptions }, @{ $next_result->OrderableDBInstanceOptions };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'OrderableDBInstanceOptions') foreach (@{ $result->OrderableDBInstanceOptions });
        $result = $self->DescribeOrderableDBInstanceOptions(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'OrderableDBInstanceOptions') foreach (@{ $result->OrderableDBInstanceOptions });
    }

    return undef
  }
  sub DescribeAllPendingMaintenanceActions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribePendingMaintenanceActions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribePendingMaintenanceActions(@_, Marker => $next_result->Marker);
        push @{ $result->PendingMaintenanceActions }, @{ $next_result->PendingMaintenanceActions };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'PendingMaintenanceActions') foreach (@{ $result->PendingMaintenanceActions });
        $result = $self->DescribePendingMaintenanceActions(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'PendingMaintenanceActions') foreach (@{ $result->PendingMaintenanceActions });
    }

    return undef
  }
  sub DescribeAllReservedDBInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReservedDBInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeReservedDBInstances(@_, Marker => $next_result->Marker);
        push @{ $result->ReservedDBInstances }, @{ $next_result->ReservedDBInstances };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ReservedDBInstances') foreach (@{ $result->ReservedDBInstances });
        $result = $self->DescribeReservedDBInstances(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ReservedDBInstances') foreach (@{ $result->ReservedDBInstances });
    }

    return undef
  }
  sub DescribeAllReservedDBInstancesOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReservedDBInstancesOfferings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeReservedDBInstancesOfferings(@_, Marker => $next_result->Marker);
        push @{ $result->ReservedDBInstancesOfferings }, @{ $next_result->ReservedDBInstancesOfferings };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ReservedDBInstancesOfferings') foreach (@{ $result->ReservedDBInstancesOfferings });
        $result = $self->DescribeReservedDBInstancesOfferings(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ReservedDBInstancesOfferings') foreach (@{ $result->ReservedDBInstancesOfferings });
    }

    return undef
  }
  sub DescribeAllSourceRegions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSourceRegions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeSourceRegions(@_, Marker => $next_result->Marker);
        push @{ $result->SourceRegions }, @{ $next_result->SourceRegions };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'SourceRegions') foreach (@{ $result->SourceRegions });
        $result = $self->DescribeSourceRegions(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'SourceRegions') foreach (@{ $result->SourceRegions });
    }

    return undef
  }
  sub DownloadAllDBLogFilePortions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DownloadDBLogFilePortion(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->AdditionalDataPending) {
        $next_result = $self->DownloadDBLogFilePortion(@_, Marker => $next_result->Marker);
        push @{ $result->LogFileData }, @{ $next_result->LogFileData };
      }
      return $result;
    } else {
      while ($result->AdditionalDataPending) {
        $callback->($_ => 'LogFileData') foreach (@{ $result->LogFileData });
        $result = $self->DownloadDBLogFilePortion(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'LogFileData') foreach (@{ $result->LogFileData });
    }

    return undef
  }


  sub operations { qw/AddRoleToDBCluster AddRoleToDBInstance AddSourceIdentifierToSubscription AddTagsToResource ApplyPendingMaintenanceAction AuthorizeDBSecurityGroupIngress BacktrackDBCluster CancelExportTask CopyDBClusterParameterGroup CopyDBClusterSnapshot CopyDBParameterGroup CopyDBSnapshot CopyOptionGroup CreateCustomAvailabilityZone CreateDBCluster CreateDBClusterEndpoint CreateDBClusterParameterGroup CreateDBClusterSnapshot CreateDBInstance CreateDBInstanceReadReplica CreateDBParameterGroup CreateDBProxy CreateDBProxyEndpoint CreateDBSecurityGroup CreateDBSnapshot CreateDBSubnetGroup CreateEventSubscription CreateGlobalCluster CreateOptionGroup DeleteCustomAvailabilityZone DeleteDBCluster DeleteDBClusterEndpoint DeleteDBClusterParameterGroup DeleteDBClusterSnapshot DeleteDBInstance DeleteDBInstanceAutomatedBackup DeleteDBParameterGroup DeleteDBProxy DeleteDBProxyEndpoint DeleteDBSecurityGroup DeleteDBSnapshot DeleteDBSubnetGroup DeleteEventSubscription DeleteGlobalCluster DeleteInstallationMedia DeleteOptionGroup DeregisterDBProxyTargets DescribeAccountAttributes DescribeCertificates DescribeCustomAvailabilityZones DescribeDBClusterBacktracks DescribeDBClusterEndpoints DescribeDBClusterParameterGroups DescribeDBClusterParameters DescribeDBClusters DescribeDBClusterSnapshotAttributes DescribeDBClusterSnapshots DescribeDBEngineVersions DescribeDBInstanceAutomatedBackups DescribeDBInstances DescribeDBLogFiles DescribeDBParameterGroups DescribeDBParameters DescribeDBProxies DescribeDBProxyEndpoints DescribeDBProxyTargetGroups DescribeDBProxyTargets DescribeDBSecurityGroups DescribeDBSnapshotAttributes DescribeDBSnapshots DescribeDBSubnetGroups DescribeEngineDefaultClusterParameters DescribeEngineDefaultParameters DescribeEventCategories DescribeEvents DescribeEventSubscriptions DescribeExportTasks DescribeGlobalClusters DescribeInstallationMedia DescribeOptionGroupOptions DescribeOptionGroups DescribeOrderableDBInstanceOptions DescribePendingMaintenanceActions DescribeReservedDBInstances DescribeReservedDBInstancesOfferings DescribeSourceRegions DescribeValidDBInstanceModifications DownloadDBLogFilePortion FailoverDBCluster FailoverGlobalCluster ImportInstallationMedia ListTagsForResource ModifyCertificates ModifyCurrentDBClusterCapacity ModifyDBCluster ModifyDBClusterEndpoint ModifyDBClusterParameterGroup ModifyDBClusterSnapshotAttribute ModifyDBInstance ModifyDBParameterGroup ModifyDBProxy ModifyDBProxyEndpoint ModifyDBProxyTargetGroup ModifyDBSnapshot ModifyDBSnapshotAttribute ModifyDBSubnetGroup ModifyEventSubscription ModifyGlobalCluster ModifyOptionGroup PromoteReadReplica PromoteReadReplicaDBCluster PurchaseReservedDBInstancesOffering RebootDBInstance RegisterDBProxyTargets RemoveFromGlobalCluster RemoveRoleFromDBCluster RemoveRoleFromDBInstance RemoveSourceIdentifierFromSubscription RemoveTagsFromResource ResetDBClusterParameterGroup ResetDBParameterGroup RestoreDBClusterFromS3 RestoreDBClusterFromSnapshot RestoreDBClusterToPointInTime RestoreDBInstanceFromDBSnapshot RestoreDBInstanceFromS3 RestoreDBInstanceToPointInTime RevokeDBSecurityGroupIngress StartActivityStream StartDBCluster StartDBInstance StartDBInstanceAutomatedBackupsReplication StartExportTask StopActivityStream StopDBCluster StopDBInstance StopDBInstanceAutomatedBackupsReplication / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS - Perl Interface to AWS Amazon Relational Database Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('RDS');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Relational Database Service

Amazon Relational Database Service (Amazon RDS) is a web service that
makes it easier to set up, operate, and scale a relational database in
the cloud. It provides cost-efficient, resizeable capacity for an
industry-standard relational database and manages common database
administration tasks, freeing up developers to focus on what makes
their applications and businesses unique.

Amazon RDS gives you access to the capabilities of a MySQL, MariaDB,
PostgreSQL, Microsoft SQL Server, Oracle, or Amazon Aurora database
server. These capabilities mean that the code, applications, and tools
you already use today with your existing databases work with Amazon RDS
without modification. Amazon RDS automatically backs up your database
and maintains the database software that powers your DB instance.
Amazon RDS is flexible: you can scale your DB instance's compute
resources and storage capacity to meet your application's demand. As
with all Amazon Web Services, there are no up-front investments, and
you pay only for the resources you use.

This interface reference for Amazon RDS contains documentation for a
programming or command line interface you can use to manage Amazon RDS.
Amazon RDS is asynchronous, which means that some interfaces might
require techniques such as polling or callback functions to determine
when a command has been applied. In this reference, the parameter
descriptions indicate whether a command is applied immediately, on the
next instance reboot, or during the maintenance window. The reference
structure is as follows, and we list following some related topics from
the user guide.

B<Amazon RDS API Reference>

=over

=item *

For the alphabetical list of API actions, see API Actions
(https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Operations.html).

=item *

For the alphabetical list of data types, see Data Types
(https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Types.html).

=item *

For a list of common query parameters, see Common Parameters
(https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonParameters.html).

=item *

For descriptions of the error codes, see Common Errors
(https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonErrors.html).

=back

B<Amazon RDS User Guide>

=over

=item *

For a summary of the Amazon RDS interfaces, see Available RDS
Interfaces
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html#Welcome.Interfaces).

=item *

For more information about how to use the Query API, see Using the
Query API
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Using_the_Query_API.html).

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31>


=head1 METHODS

=head2 AddRoleToDBCluster

=over

=item DBClusterIdentifier => Str

=item RoleArn => Str

=item [FeatureName => Str]


=back

Each argument is described in detail in: L<Paws::RDS::AddRoleToDBCluster>

Returns: nothing

Associates an Identity and Access Management (IAM) role from an Amazon
Aurora DB cluster. For more information, see Authorizing Amazon Aurora
MySQL to Access Other AWS Services on Your Behalf
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.Authorizing.html)
in the I<Amazon Aurora User Guide>.

This action only applies to Aurora DB clusters.


=head2 AddRoleToDBInstance

=over

=item DBInstanceIdentifier => Str

=item FeatureName => Str

=item RoleArn => Str


=back

Each argument is described in detail in: L<Paws::RDS::AddRoleToDBInstance>

Returns: nothing

Associates an AWS Identity and Access Management (IAM) role with a DB
instance.

To add a role to a DB instance, the status of the DB instance must be
C<available>.


=head2 AddSourceIdentifierToSubscription

=over

=item SourceIdentifier => Str

=item SubscriptionName => Str


=back

Each argument is described in detail in: L<Paws::RDS::AddSourceIdentifierToSubscription>

Returns: a L<Paws::RDS::AddSourceIdentifierToSubscriptionResult> instance

Adds a source identifier to an existing RDS event notification
subscription.


=head2 AddTagsToResource

=over

=item ResourceName => Str

=item Tags => ArrayRef[L<Paws::RDS::Tag>]


=back

Each argument is described in detail in: L<Paws::RDS::AddTagsToResource>

Returns: nothing

Adds metadata tags to an Amazon RDS resource. These tags can also be
used with cost allocation reporting to track cost associated with
Amazon RDS resources, or used in a Condition statement in an IAM policy
for Amazon RDS.

For an overview on tagging Amazon RDS resources, see Tagging Amazon RDS
Resources
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html).


=head2 ApplyPendingMaintenanceAction

=over

=item ApplyAction => Str

=item OptInType => Str

=item ResourceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RDS::ApplyPendingMaintenanceAction>

Returns: a L<Paws::RDS::ApplyPendingMaintenanceActionResult> instance

Applies a pending maintenance action to a resource (for example, to a
DB instance).


=head2 AuthorizeDBSecurityGroupIngress

=over

=item DBSecurityGroupName => Str

=item [CIDRIP => Str]

=item [EC2SecurityGroupId => Str]

=item [EC2SecurityGroupName => Str]

=item [EC2SecurityGroupOwnerId => Str]


=back

Each argument is described in detail in: L<Paws::RDS::AuthorizeDBSecurityGroupIngress>

Returns: a L<Paws::RDS::AuthorizeDBSecurityGroupIngressResult> instance

Enables ingress to a DBSecurityGroup using one of two forms of
authorization. First, EC2 or VPC security groups can be added to the
DBSecurityGroup if the application using the database is running on EC2
or VPC instances. Second, IP ranges are available if the application
accessing your database is running on the Internet. Required parameters
for this API are one of CIDR range, EC2SecurityGroupId for VPC, or
(EC2SecurityGroupOwnerId and either EC2SecurityGroupName or
EC2SecurityGroupId for non-VPC).

You can't authorize ingress from an EC2 security group in one AWS
Region to an Amazon RDS DB instance in another. You can't authorize
ingress from a VPC security group in one VPC to an Amazon RDS DB
instance in another.

For an overview of CIDR ranges, go to the Wikipedia Tutorial
(http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).


=head2 BacktrackDBCluster

=over

=item BacktrackTo => Str

=item DBClusterIdentifier => Str

=item [Force => Bool]

=item [UseEarliestTimeOnPointInTimeUnavailable => Bool]


=back

Each argument is described in detail in: L<Paws::RDS::BacktrackDBCluster>

Returns: a L<Paws::RDS::DBClusterBacktrack> instance

Backtracks a DB cluster to a specific time, without creating a new DB
cluster.

For more information on backtracking, see Backtracking an Aurora DB
Cluster
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Managing.Backtrack.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora MySQL DB clusters.


=head2 CancelExportTask

=over

=item ExportTaskIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RDS::CancelExportTask>

Returns: a L<Paws::RDS::ExportTask> instance

Cancels an export task in progress that is exporting a snapshot to
Amazon S3. Any data that has already been written to the S3 bucket
isn't removed.


=head2 CopyDBClusterParameterGroup

=over

=item SourceDBClusterParameterGroupIdentifier => Str

=item TargetDBClusterParameterGroupDescription => Str

=item TargetDBClusterParameterGroupIdentifier => Str

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]


=back

Each argument is described in detail in: L<Paws::RDS::CopyDBClusterParameterGroup>

Returns: a L<Paws::RDS::CopyDBClusterParameterGroupResult> instance

Copies the specified DB cluster parameter group.

This action only applies to Aurora DB clusters.


=head2 CopyDBClusterSnapshot

=over

=item SourceDBClusterSnapshotIdentifier => Str

=item TargetDBClusterSnapshotIdentifier => Str

=item [CopyTags => Bool]

=item [KmsKeyId => Str]

=item [PreSignedUrl => Str]

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]


=back

Each argument is described in detail in: L<Paws::RDS::CopyDBClusterSnapshot>

Returns: a L<Paws::RDS::CopyDBClusterSnapshotResult> instance

Copies a snapshot of a DB cluster.

To copy a DB cluster snapshot from a shared manual DB cluster snapshot,
C<SourceDBClusterSnapshotIdentifier> must be the Amazon Resource Name
(ARN) of the shared DB cluster snapshot.

You can copy an encrypted DB cluster snapshot from another AWS Region.
In that case, the AWS Region where you call the
C<CopyDBClusterSnapshot> action is the destination AWS Region for the
encrypted DB cluster snapshot to be copied to. To copy an encrypted DB
cluster snapshot from another AWS Region, you must provide the
following values:

=over

=item *

C<KmsKeyId> - The AWS Key Management System (AWS KMS) key identifier
for the key to use to encrypt the copy of the DB cluster snapshot in
the destination AWS Region.

=item *

C<PreSignedUrl> - A URL that contains a Signature Version 4 signed
request for the C<CopyDBClusterSnapshot> action to be called in the
source AWS Region where the DB cluster snapshot is copied from. The
pre-signed URL must be a valid request for the C<CopyDBClusterSnapshot>
API action that can be executed in the source AWS Region that contains
the encrypted DB cluster snapshot to be copied.

The pre-signed URL request must contain the following parameter values:

=over

=item *

C<KmsKeyId> - The AWS KMS key identifier for the customer master key
(CMK) to use to encrypt the copy of the DB cluster snapshot in the
destination AWS Region. This is the same identifier for both the
C<CopyDBClusterSnapshot> action that is called in the destination AWS
Region, and the action contained in the pre-signed URL.

=item *

C<DestinationRegion> - The name of the AWS Region that the DB cluster
snapshot is to be created in.

=item *

C<SourceDBClusterSnapshotIdentifier> - The DB cluster snapshot
identifier for the encrypted DB cluster snapshot to be copied. This
identifier must be in the Amazon Resource Name (ARN) format for the
source AWS Region. For example, if you are copying an encrypted DB
cluster snapshot from the us-west-2 AWS Region, then your
C<SourceDBClusterSnapshotIdentifier> looks like the following example:
C<arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115>.

=back

To learn how to generate a Signature Version 4 signed request, see
Authenticating Requests: Using Query Parameters (AWS Signature Version
4)
(https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html)
and Signature Version 4 Signing Process
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

If you are using an AWS SDK tool or the AWS CLI, you can specify
C<SourceRegion> (or C<--source-region> for the AWS CLI) instead of
specifying C<PreSignedUrl> manually. Specifying C<SourceRegion>
autogenerates a pre-signed URL that is a valid request for the
operation that can be executed in the source AWS Region.

=item *

C<TargetDBClusterSnapshotIdentifier> - The identifier for the new copy
of the DB cluster snapshot in the destination AWS Region.

=item *

C<SourceDBClusterSnapshotIdentifier> - The DB cluster snapshot
identifier for the encrypted DB cluster snapshot to be copied. This
identifier must be in the ARN format for the source AWS Region and is
the same value as the C<SourceDBClusterSnapshotIdentifier> in the
pre-signed URL.

=back

To cancel the copy operation once it is in progress, delete the target
DB cluster snapshot identified by C<TargetDBClusterSnapshotIdentifier>
while that DB cluster snapshot is in "copying" status.

For more information on copying encrypted DB cluster snapshots from one
AWS Region to another, see Copying a Snapshot
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_CopySnapshot.html)
in the I<Amazon Aurora User Guide.>

For more information on Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters.


=head2 CopyDBParameterGroup

=over

=item SourceDBParameterGroupIdentifier => Str

=item TargetDBParameterGroupDescription => Str

=item TargetDBParameterGroupIdentifier => Str

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]


=back

Each argument is described in detail in: L<Paws::RDS::CopyDBParameterGroup>

Returns: a L<Paws::RDS::CopyDBParameterGroupResult> instance

Copies the specified DB parameter group.


=head2 CopyDBSnapshot

=over

=item SourceDBSnapshotIdentifier => Str

=item TargetDBSnapshotIdentifier => Str

=item [CopyTags => Bool]

=item [KmsKeyId => Str]

=item [OptionGroupName => Str]

=item [PreSignedUrl => Str]

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]

=item [TargetCustomAvailabilityZone => Str]


=back

Each argument is described in detail in: L<Paws::RDS::CopyDBSnapshot>

Returns: a L<Paws::RDS::CopyDBSnapshotResult> instance

Copies the specified DB snapshot. The source DB snapshot must be in the
C<available> state.

You can copy a snapshot from one AWS Region to another. In that case,
the AWS Region where you call the C<CopyDBSnapshot> action is the
destination AWS Region for the DB snapshot copy.

For more information about copying snapshots, see Copying a DB Snapshot
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopyDBSnapshot)
in the I<Amazon RDS User Guide.>


=head2 CopyOptionGroup

=over

=item SourceOptionGroupIdentifier => Str

=item TargetOptionGroupDescription => Str

=item TargetOptionGroupIdentifier => Str

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]


=back

Each argument is described in detail in: L<Paws::RDS::CopyOptionGroup>

Returns: a L<Paws::RDS::CopyOptionGroupResult> instance

Copies the specified option group.


=head2 CreateCustomAvailabilityZone

=over

=item CustomAvailabilityZoneName => Str

=item [ExistingVpnId => Str]

=item [NewVpnTunnelName => Str]

=item [VpnTunnelOriginatorIP => Str]


=back

Each argument is described in detail in: L<Paws::RDS::CreateCustomAvailabilityZone>

Returns: a L<Paws::RDS::CreateCustomAvailabilityZoneResult> instance

Creates a custom Availability Zone (AZ).

A custom AZ is an on-premises AZ that is integrated with a VMware
vSphere cluster.

For more information about RDS on VMware, see the RDS on VMware User
Guide.
(https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html)


=head2 CreateDBCluster

=over

=item DBClusterIdentifier => Str

=item Engine => Str

=item [AvailabilityZones => ArrayRef[Str|Undef]]

=item [BacktrackWindow => Int]

=item [BackupRetentionPeriod => Int]

=item [CharacterSetName => Str]

=item [CopyTagsToSnapshot => Bool]

=item [DatabaseName => Str]

=item [DBClusterParameterGroupName => Str]

=item [DBSubnetGroupName => Str]

=item [DeletionProtection => Bool]

=item [Domain => Str]

=item [DomainIAMRoleName => Str]

=item [EnableCloudwatchLogsExports => ArrayRef[Str|Undef]]

=item [EnableGlobalWriteForwarding => Bool]

=item [EnableHttpEndpoint => Bool]

=item [EnableIAMDatabaseAuthentication => Bool]

=item [EngineMode => Str]

=item [EngineVersion => Str]

=item [GlobalClusterIdentifier => Str]

=item [KmsKeyId => Str]

=item [MasterUsername => Str]

=item [MasterUserPassword => Str]

=item [OptionGroupName => Str]

=item [Port => Int]

=item [PreferredBackupWindow => Str]

=item [PreferredMaintenanceWindow => Str]

=item [PreSignedUrl => Str]

=item [ReplicationSourceIdentifier => Str]

=item [ScalingConfiguration => L<Paws::RDS::ScalingConfiguration>]

=item [StorageEncrypted => Bool]

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RDS::CreateDBCluster>

Returns: a L<Paws::RDS::CreateDBClusterResult> instance

Creates a new Amazon Aurora DB cluster.

You can use the C<ReplicationSourceIdentifier> parameter to create the
DB cluster as a read replica of another DB cluster or Amazon RDS MySQL
DB instance. For cross-region replication where the DB cluster
identified by C<ReplicationSourceIdentifier> is encrypted, you must
also specify the C<PreSignedUrl> parameter.

For more information on Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters.


=head2 CreateDBClusterEndpoint

=over

=item DBClusterEndpointIdentifier => Str

=item DBClusterIdentifier => Str

=item EndpointType => Str

=item [ExcludedMembers => ArrayRef[Str|Undef]]

=item [StaticMembers => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]


=back

Each argument is described in detail in: L<Paws::RDS::CreateDBClusterEndpoint>

Returns: a L<Paws::RDS::DBClusterEndpoint> instance

Creates a new custom endpoint and associates it with an Amazon Aurora
DB cluster.

This action only applies to Aurora DB clusters.


=head2 CreateDBClusterParameterGroup

=over

=item DBClusterParameterGroupName => Str

=item DBParameterGroupFamily => Str

=item Description => Str

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]


=back

Each argument is described in detail in: L<Paws::RDS::CreateDBClusterParameterGroup>

Returns: a L<Paws::RDS::CreateDBClusterParameterGroupResult> instance

Creates a new DB cluster parameter group.

Parameters in a DB cluster parameter group apply to all of the
instances in a DB cluster.

A DB cluster parameter group is initially created with the default
parameters for the database engine used by instances in the DB cluster.
To provide custom values for any of the parameters, you must modify the
group after creating it using C<ModifyDBClusterParameterGroup>. Once
you've created a DB cluster parameter group, you need to associate it
with your DB cluster using C<ModifyDBCluster>. When you associate a new
DB cluster parameter group with a running DB cluster, you need to
reboot the DB instances in the DB cluster without failover for the new
DB cluster parameter group and associated settings to take effect.

After you create a DB cluster parameter group, you should wait at least
5 minutes before creating your first DB cluster that uses that DB
cluster parameter group as the default parameter group. This allows
Amazon RDS to fully complete the create action before the DB cluster
parameter group is used as the default for a new DB cluster. This is
especially important for parameters that are critical when creating the
default database for a DB cluster, such as the character set for the
default database defined by the C<character_set_database> parameter.
You can use the I<Parameter Groups> option of the Amazon RDS console
(https://console.aws.amazon.com/rds/) or the
C<DescribeDBClusterParameters> action to verify that your DB cluster
parameter group has been created or modified.

For more information on Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters.


=head2 CreateDBClusterSnapshot

=over

=item DBClusterIdentifier => Str

=item DBClusterSnapshotIdentifier => Str

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]


=back

Each argument is described in detail in: L<Paws::RDS::CreateDBClusterSnapshot>

Returns: a L<Paws::RDS::CreateDBClusterSnapshotResult> instance

Creates a snapshot of a DB cluster. For more information on Amazon
Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters.


=head2 CreateDBInstance

=over

=item DBInstanceClass => Str

=item DBInstanceIdentifier => Str

=item Engine => Str

=item [AllocatedStorage => Int]

=item [AutoMinorVersionUpgrade => Bool]

=item [AvailabilityZone => Str]

=item [BackupRetentionPeriod => Int]

=item [CharacterSetName => Str]

=item [CopyTagsToSnapshot => Bool]

=item [DBClusterIdentifier => Str]

=item [DBName => Str]

=item [DBParameterGroupName => Str]

=item [DBSecurityGroups => ArrayRef[Str|Undef]]

=item [DBSubnetGroupName => Str]

=item [DeletionProtection => Bool]

=item [Domain => Str]

=item [DomainIAMRoleName => Str]

=item [EnableCloudwatchLogsExports => ArrayRef[Str|Undef]]

=item [EnableCustomerOwnedIp => Bool]

=item [EnableIAMDatabaseAuthentication => Bool]

=item [EnablePerformanceInsights => Bool]

=item [EngineVersion => Str]

=item [Iops => Int]

=item [KmsKeyId => Str]

=item [LicenseModel => Str]

=item [MasterUsername => Str]

=item [MasterUserPassword => Str]

=item [MaxAllocatedStorage => Int]

=item [MonitoringInterval => Int]

=item [MonitoringRoleArn => Str]

=item [MultiAZ => Bool]

=item [NcharCharacterSetName => Str]

=item [OptionGroupName => Str]

=item [PerformanceInsightsKMSKeyId => Str]

=item [PerformanceInsightsRetentionPeriod => Int]

=item [Port => Int]

=item [PreferredBackupWindow => Str]

=item [PreferredMaintenanceWindow => Str]

=item [ProcessorFeatures => ArrayRef[L<Paws::RDS::ProcessorFeature>]]

=item [PromotionTier => Int]

=item [PubliclyAccessible => Bool]

=item [StorageEncrypted => Bool]

=item [StorageType => Str]

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]

=item [TdeCredentialArn => Str]

=item [TdeCredentialPassword => Str]

=item [Timezone => Str]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RDS::CreateDBInstance>

Returns: a L<Paws::RDS::CreateDBInstanceResult> instance

Creates a new DB instance.


=head2 CreateDBInstanceReadReplica

=over

=item DBInstanceIdentifier => Str

=item SourceDBInstanceIdentifier => Str

=item [AutoMinorVersionUpgrade => Bool]

=item [AvailabilityZone => Str]

=item [CopyTagsToSnapshot => Bool]

=item [DBInstanceClass => Str]

=item [DBParameterGroupName => Str]

=item [DBSubnetGroupName => Str]

=item [DeletionProtection => Bool]

=item [Domain => Str]

=item [DomainIAMRoleName => Str]

=item [EnableCloudwatchLogsExports => ArrayRef[Str|Undef]]

=item [EnableIAMDatabaseAuthentication => Bool]

=item [EnablePerformanceInsights => Bool]

=item [Iops => Int]

=item [KmsKeyId => Str]

=item [MaxAllocatedStorage => Int]

=item [MonitoringInterval => Int]

=item [MonitoringRoleArn => Str]

=item [MultiAZ => Bool]

=item [OptionGroupName => Str]

=item [PerformanceInsightsKMSKeyId => Str]

=item [PerformanceInsightsRetentionPeriod => Int]

=item [Port => Int]

=item [PreSignedUrl => Str]

=item [ProcessorFeatures => ArrayRef[L<Paws::RDS::ProcessorFeature>]]

=item [PubliclyAccessible => Bool]

=item [ReplicaMode => Str]

=item [StorageType => Str]

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]

=item [UseDefaultProcessorFeatures => Bool]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RDS::CreateDBInstanceReadReplica>

Returns: a L<Paws::RDS::CreateDBInstanceReadReplicaResult> instance

Creates a new DB instance that acts as a read replica for an existing
source DB instance. You can create a read replica for a DB instance
running MySQL, MariaDB, Oracle, PostgreSQL, or SQL Server. For more
information, see Working with Read Replicas
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html)
in the I<Amazon RDS User Guide>.

Amazon Aurora doesn't support this action. Call the C<CreateDBInstance>
action to create a DB instance for an Aurora DB cluster.

All read replica DB instances are created with backups disabled. All
other DB instance attributes (including DB security groups and DB
parameter groups) are inherited from the source DB instance, except as
specified.

Your source DB instance must have backup retention enabled.


=head2 CreateDBParameterGroup

=over

=item DBParameterGroupFamily => Str

=item DBParameterGroupName => Str

=item Description => Str

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]


=back

Each argument is described in detail in: L<Paws::RDS::CreateDBParameterGroup>

Returns: a L<Paws::RDS::CreateDBParameterGroupResult> instance

Creates a new DB parameter group.

A DB parameter group is initially created with the default parameters
for the database engine used by the DB instance. To provide custom
values for any of the parameters, you must modify the group after
creating it using I<ModifyDBParameterGroup>. Once you've created a DB
parameter group, you need to associate it with your DB instance using
I<ModifyDBInstance>. When you associate a new DB parameter group with a
running DB instance, you need to reboot the DB instance without
failover for the new DB parameter group and associated settings to take
effect.

After you create a DB parameter group, you should wait at least 5
minutes before creating your first DB instance that uses that DB
parameter group as the default parameter group. This allows Amazon RDS
to fully complete the create action before the parameter group is used
as the default for a new DB instance. This is especially important for
parameters that are critical when creating the default database for a
DB instance, such as the character set for the default database defined
by the C<character_set_database> parameter. You can use the I<Parameter
Groups> option of the Amazon RDS console
(https://console.aws.amazon.com/rds/) or the I<DescribeDBParameters>
command to verify that your DB parameter group has been created or
modified.


=head2 CreateDBProxy

=over

=item Auth => ArrayRef[L<Paws::RDS::UserAuthConfig>]

=item DBProxyName => Str

=item EngineFamily => Str

=item RoleArn => Str

=item VpcSubnetIds => ArrayRef[Str|Undef]

=item [DebugLogging => Bool]

=item [IdleClientTimeout => Int]

=item [RequireTLS => Bool]

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RDS::CreateDBProxy>

Returns: a L<Paws::RDS::CreateDBProxyResponse> instance

Creates a new DB proxy.


=head2 CreateDBProxyEndpoint

=over

=item DBProxyEndpointName => Str

=item DBProxyName => Str

=item VpcSubnetIds => ArrayRef[Str|Undef]

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]

=item [TargetRole => Str]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RDS::CreateDBProxyEndpoint>

Returns: a L<Paws::RDS::CreateDBProxyEndpointResponse> instance

Creates a C<DBProxyEndpoint>. Only applies to proxies that are
associated with Aurora DB clusters. You can use DB proxy endpoints to
specify read/write or read-only access to the DB cluster. You can also
use DB proxy endpoints to access a DB proxy through a different VPC
than the proxy's default VPC.


=head2 CreateDBSecurityGroup

=over

=item DBSecurityGroupDescription => Str

=item DBSecurityGroupName => Str

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]


=back

Each argument is described in detail in: L<Paws::RDS::CreateDBSecurityGroup>

Returns: a L<Paws::RDS::CreateDBSecurityGroupResult> instance

Creates a new DB security group. DB security groups control access to a
DB instance.

A DB security group controls access to EC2-Classic DB instances that
are not in a VPC.


=head2 CreateDBSnapshot

=over

=item DBInstanceIdentifier => Str

=item DBSnapshotIdentifier => Str

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]


=back

Each argument is described in detail in: L<Paws::RDS::CreateDBSnapshot>

Returns: a L<Paws::RDS::CreateDBSnapshotResult> instance

Creates a snapshot of a DB instance. The source DB instance must be in
the C<available> or C<storage-optimization> state.


=head2 CreateDBSubnetGroup

=over

=item DBSubnetGroupDescription => Str

=item DBSubnetGroupName => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]


=back

Each argument is described in detail in: L<Paws::RDS::CreateDBSubnetGroup>

Returns: a L<Paws::RDS::CreateDBSubnetGroupResult> instance

Creates a new DB subnet group. DB subnet groups must contain at least
one subnet in at least two AZs in the AWS Region.


=head2 CreateEventSubscription

=over

=item SnsTopicArn => Str

=item SubscriptionName => Str

=item [Enabled => Bool]

=item [EventCategories => ArrayRef[Str|Undef]]

=item [SourceIds => ArrayRef[Str|Undef]]

=item [SourceType => Str]

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]


=back

Each argument is described in detail in: L<Paws::RDS::CreateEventSubscription>

Returns: a L<Paws::RDS::CreateEventSubscriptionResult> instance

Creates an RDS event notification subscription. This action requires a
topic Amazon Resource Name (ARN) created by either the RDS console, the
SNS console, or the SNS API. To obtain an ARN with SNS, you must create
a topic in Amazon SNS and subscribe to the topic. The ARN is displayed
in the SNS console.

You can specify the type of source (C<SourceType>) that you want to be
notified of and provide a list of RDS sources (C<SourceIds>) that
triggers the events. You can also provide a list of event categories
(C<EventCategories>) for events that you want to be notified of. For
example, you can specify C<SourceType> = C<db-instance>, C<SourceIds> =
C<mydbinstance1>, C<mydbinstance2> and C<EventCategories> =
C<Availability>, C<Backup>.

If you specify both the C<SourceType> and C<SourceIds>, such as
C<SourceType> = C<db-instance> and C<SourceIdentifier> =
C<myDBInstance1>, you are notified of all the C<db-instance> events for
the specified source. If you specify a C<SourceType> but do not specify
a C<SourceIdentifier>, you receive notice of the events for that source
type for all your RDS sources. If you don't specify either the
SourceType or the C<SourceIdentifier>, you are notified of events
generated from all RDS sources belonging to your customer account.

RDS event notification is only available for unencrypted SNS topics. If
you specify an encrypted SNS topic, event notifications aren't sent for
the topic.


=head2 CreateGlobalCluster

=over

=item [DatabaseName => Str]

=item [DeletionProtection => Bool]

=item [Engine => Str]

=item [EngineVersion => Str]

=item [GlobalClusterIdentifier => Str]

=item [SourceDBClusterIdentifier => Str]

=item [StorageEncrypted => Bool]


=back

Each argument is described in detail in: L<Paws::RDS::CreateGlobalCluster>

Returns: a L<Paws::RDS::CreateGlobalClusterResult> instance

Creates an Aurora global database spread across multiple AWS Regions.
The global database contains a single primary cluster with read-write
capability, and a read-only secondary cluster that receives data from
the primary cluster through high-speed replication performed by the
Aurora storage subsystem.

You can create a global database that is initially empty, and then add
a primary cluster and a secondary cluster to it. Or you can specify an
existing Aurora cluster during the create operation, and this cluster
becomes the primary cluster of the global database.

This action only applies to Aurora DB clusters.


=head2 CreateOptionGroup

=over

=item EngineName => Str

=item MajorEngineVersion => Str

=item OptionGroupDescription => Str

=item OptionGroupName => Str

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]


=back

Each argument is described in detail in: L<Paws::RDS::CreateOptionGroup>

Returns: a L<Paws::RDS::CreateOptionGroupResult> instance

Creates a new option group. You can create up to 20 option groups.


=head2 DeleteCustomAvailabilityZone

=over

=item CustomAvailabilityZoneId => Str


=back

Each argument is described in detail in: L<Paws::RDS::DeleteCustomAvailabilityZone>

Returns: a L<Paws::RDS::DeleteCustomAvailabilityZoneResult> instance

Deletes a custom Availability Zone (AZ).

A custom AZ is an on-premises AZ that is integrated with a VMware
vSphere cluster.

For more information about RDS on VMware, see the RDS on VMware User
Guide.
(https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html)


=head2 DeleteDBCluster

=over

=item DBClusterIdentifier => Str

=item [FinalDBSnapshotIdentifier => Str]

=item [SkipFinalSnapshot => Bool]


=back

Each argument is described in detail in: L<Paws::RDS::DeleteDBCluster>

Returns: a L<Paws::RDS::DeleteDBClusterResult> instance

The DeleteDBCluster action deletes a previously provisioned DB cluster.
When you delete a DB cluster, all automated backups for that DB cluster
are deleted and can't be recovered. Manual DB cluster snapshots of the
specified DB cluster are not deleted.

For more information on Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters.


=head2 DeleteDBClusterEndpoint

=over

=item DBClusterEndpointIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RDS::DeleteDBClusterEndpoint>

Returns: a L<Paws::RDS::DBClusterEndpoint> instance

Deletes a custom endpoint and removes it from an Amazon Aurora DB
cluster.

This action only applies to Aurora DB clusters.


=head2 DeleteDBClusterParameterGroup

=over

=item DBClusterParameterGroupName => Str


=back

Each argument is described in detail in: L<Paws::RDS::DeleteDBClusterParameterGroup>

Returns: nothing

Deletes a specified DB cluster parameter group. The DB cluster
parameter group to be deleted can't be associated with any DB clusters.

For more information on Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters.


=head2 DeleteDBClusterSnapshot

=over

=item DBClusterSnapshotIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RDS::DeleteDBClusterSnapshot>

Returns: a L<Paws::RDS::DeleteDBClusterSnapshotResult> instance

Deletes a DB cluster snapshot. If the snapshot is being copied, the
copy operation is terminated.

The DB cluster snapshot must be in the C<available> state to be
deleted.

For more information on Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters.


=head2 DeleteDBInstance

=over

=item DBInstanceIdentifier => Str

=item [DeleteAutomatedBackups => Bool]

=item [FinalDBSnapshotIdentifier => Str]

=item [SkipFinalSnapshot => Bool]


=back

Each argument is described in detail in: L<Paws::RDS::DeleteDBInstance>

Returns: a L<Paws::RDS::DeleteDBInstanceResult> instance

The DeleteDBInstance action deletes a previously provisioned DB
instance. When you delete a DB instance, all automated backups for that
instance are deleted and can't be recovered. Manual DB snapshots of the
DB instance to be deleted by C<DeleteDBInstance> are not deleted.

If you request a final DB snapshot the status of the Amazon RDS DB
instance is C<deleting> until the DB snapshot is created. The API
action C<DescribeDBInstance> is used to monitor the status of this
operation. The action can't be canceled or reverted once submitted.

When a DB instance is in a failure state and has a status of C<failed>,
C<incompatible-restore>, or C<incompatible-network>, you can only
delete it when you skip creation of the final snapshot with the
C<SkipFinalSnapshot> parameter.

If the specified DB instance is part of an Amazon Aurora DB cluster,
you can't delete the DB instance if both of the following conditions
are true:

=over

=item *

The DB cluster is a read replica of another Amazon Aurora DB cluster.

=item *

The DB instance is the only instance in the DB cluster.

=back

To delete a DB instance in this case, first call the
C<PromoteReadReplicaDBCluster> API action to promote the DB cluster so
it's no longer a read replica. After the promotion completes, then call
the C<DeleteDBInstance> API action to delete the final instance in the
DB cluster.


=head2 DeleteDBInstanceAutomatedBackup

=over

=item [DBInstanceAutomatedBackupsArn => Str]

=item [DbiResourceId => Str]


=back

Each argument is described in detail in: L<Paws::RDS::DeleteDBInstanceAutomatedBackup>

Returns: a L<Paws::RDS::DeleteDBInstanceAutomatedBackupResult> instance

Deletes automated backups using the C<DbiResourceId> value of the
source DB instance or the Amazon Resource Name (ARN) of the automated
backups.


=head2 DeleteDBParameterGroup

=over

=item DBParameterGroupName => Str


=back

Each argument is described in detail in: L<Paws::RDS::DeleteDBParameterGroup>

Returns: nothing

Deletes a specified DB parameter group. The DB parameter group to be
deleted can't be associated with any DB instances.


=head2 DeleteDBProxy

=over

=item DBProxyName => Str


=back

Each argument is described in detail in: L<Paws::RDS::DeleteDBProxy>

Returns: a L<Paws::RDS::DeleteDBProxyResponse> instance

Deletes an existing DB proxy.


=head2 DeleteDBProxyEndpoint

=over

=item DBProxyEndpointName => Str


=back

Each argument is described in detail in: L<Paws::RDS::DeleteDBProxyEndpoint>

Returns: a L<Paws::RDS::DeleteDBProxyEndpointResponse> instance

Deletes a C<DBProxyEndpoint>. Doing so removes the ability to access
the DB proxy using the endpoint that you defined. The endpoint that you
delete might have provided capabilities such as read/write or read-only
operations, or using a different VPC than the DB proxy's default VPC.


=head2 DeleteDBSecurityGroup

=over

=item DBSecurityGroupName => Str


=back

Each argument is described in detail in: L<Paws::RDS::DeleteDBSecurityGroup>

Returns: nothing

Deletes a DB security group.

The specified DB security group must not be associated with any DB
instances.


=head2 DeleteDBSnapshot

=over

=item DBSnapshotIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RDS::DeleteDBSnapshot>

Returns: a L<Paws::RDS::DeleteDBSnapshotResult> instance

Deletes a DB snapshot. If the snapshot is being copied, the copy
operation is terminated.

The DB snapshot must be in the C<available> state to be deleted.


=head2 DeleteDBSubnetGroup

=over

=item DBSubnetGroupName => Str


=back

Each argument is described in detail in: L<Paws::RDS::DeleteDBSubnetGroup>

Returns: nothing

Deletes a DB subnet group.

The specified database subnet group must not be associated with any DB
instances.


=head2 DeleteEventSubscription

=over

=item SubscriptionName => Str


=back

Each argument is described in detail in: L<Paws::RDS::DeleteEventSubscription>

Returns: a L<Paws::RDS::DeleteEventSubscriptionResult> instance

Deletes an RDS event notification subscription.


=head2 DeleteGlobalCluster

=over

=item GlobalClusterIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RDS::DeleteGlobalCluster>

Returns: a L<Paws::RDS::DeleteGlobalClusterResult> instance

Deletes a global database cluster. The primary and secondary clusters
must already be detached or destroyed first.

This action only applies to Aurora DB clusters.


=head2 DeleteInstallationMedia

=over

=item InstallationMediaId => Str


=back

Each argument is described in detail in: L<Paws::RDS::DeleteInstallationMedia>

Returns: a L<Paws::RDS::InstallationMedia> instance

Deletes the installation medium for a DB engine that requires an
on-premises customer provided license, such as Microsoft SQL Server.


=head2 DeleteOptionGroup

=over

=item OptionGroupName => Str


=back

Each argument is described in detail in: L<Paws::RDS::DeleteOptionGroup>

Returns: nothing

Deletes an existing option group.


=head2 DeregisterDBProxyTargets

=over

=item DBProxyName => Str

=item [DBClusterIdentifiers => ArrayRef[Str|Undef]]

=item [DBInstanceIdentifiers => ArrayRef[Str|Undef]]

=item [TargetGroupName => Str]


=back

Each argument is described in detail in: L<Paws::RDS::DeregisterDBProxyTargets>

Returns: a L<Paws::RDS::DeregisterDBProxyTargetsResponse> instance

Remove the association between one or more C<DBProxyTarget> data
structures and a C<DBProxyTargetGroup>.


=head2 DescribeAccountAttributes






Each argument is described in detail in: L<Paws::RDS::DescribeAccountAttributes>

Returns: a L<Paws::RDS::AccountAttributesMessage> instance

Lists all of the attributes for a customer account. The attributes
include Amazon RDS quotas for the account, such as the number of DB
instances allowed. The description for a quota includes the quota name,
current usage toward that quota, and the quota's maximum value.

This command doesn't take any parameters.


=head2 DescribeCertificates

=over

=item [CertificateIdentifier => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeCertificates>

Returns: a L<Paws::RDS::CertificateMessage> instance

Lists the set of CA certificates provided by Amazon RDS for this AWS
account.


=head2 DescribeCustomAvailabilityZones

=over

=item [CustomAvailabilityZoneId => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeCustomAvailabilityZones>

Returns: a L<Paws::RDS::CustomAvailabilityZoneMessage> instance

Returns information about custom Availability Zones (AZs).

A custom AZ is an on-premises AZ that is integrated with a VMware
vSphere cluster.

For more information about RDS on VMware, see the RDS on VMware User
Guide.
(https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html)


=head2 DescribeDBClusterBacktracks

=over

=item DBClusterIdentifier => Str

=item [BacktrackIdentifier => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBClusterBacktracks>

Returns: a L<Paws::RDS::DBClusterBacktrackMessage> instance

Returns information about backtracks for a DB cluster.

For more information on Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora MySQL DB clusters.


=head2 DescribeDBClusterEndpoints

=over

=item [DBClusterEndpointIdentifier => Str]

=item [DBClusterIdentifier => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBClusterEndpoints>

Returns: a L<Paws::RDS::DBClusterEndpointMessage> instance

Returns information about endpoints for an Amazon Aurora DB cluster.

This action only applies to Aurora DB clusters.


=head2 DescribeDBClusterParameterGroups

=over

=item [DBClusterParameterGroupName => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBClusterParameterGroups>

Returns: a L<Paws::RDS::DBClusterParameterGroupsMessage> instance

Returns a list of C<DBClusterParameterGroup> descriptions. If a
C<DBClusterParameterGroupName> parameter is specified, the list will
contain only the description of the specified DB cluster parameter
group.

For more information on Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters.


=head2 DescribeDBClusterParameters

=over

=item DBClusterParameterGroupName => Str

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [Source => Str]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBClusterParameters>

Returns: a L<Paws::RDS::DBClusterParameterGroupDetails> instance

Returns the detailed parameter list for a particular DB cluster
parameter group.

For more information on Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters.


=head2 DescribeDBClusters

=over

=item [DBClusterIdentifier => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [IncludeShared => Bool]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBClusters>

Returns: a L<Paws::RDS::DBClusterMessage> instance

Returns information about provisioned Aurora DB clusters. This API
supports pagination.

For more information on Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This operation can also return information for Amazon Neptune DB
instances and Amazon DocumentDB instances.


=head2 DescribeDBClusterSnapshotAttributes

=over

=item DBClusterSnapshotIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBClusterSnapshotAttributes>

Returns: a L<Paws::RDS::DescribeDBClusterSnapshotAttributesResult> instance

Returns a list of DB cluster snapshot attribute names and values for a
manual DB cluster snapshot.

When sharing snapshots with other AWS accounts,
C<DescribeDBClusterSnapshotAttributes> returns the C<restore> attribute
and a list of IDs for the AWS accounts that are authorized to copy or
restore the manual DB cluster snapshot. If C<all> is included in the
list of values for the C<restore> attribute, then the manual DB cluster
snapshot is public and can be copied or restored by all AWS accounts.

To add or remove access for an AWS account to copy or restore a manual
DB cluster snapshot, or to make the manual DB cluster snapshot public
or private, use the C<ModifyDBClusterSnapshotAttribute> API action.

This action only applies to Aurora DB clusters.


=head2 DescribeDBClusterSnapshots

=over

=item [DBClusterIdentifier => Str]

=item [DBClusterSnapshotIdentifier => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [IncludePublic => Bool]

=item [IncludeShared => Bool]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [SnapshotType => Str]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBClusterSnapshots>

Returns: a L<Paws::RDS::DBClusterSnapshotMessage> instance

Returns information about DB cluster snapshots. This API action
supports pagination.

For more information on Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters.


=head2 DescribeDBEngineVersions

=over

=item [DBParameterGroupFamily => Str]

=item [DefaultOnly => Bool]

=item [Engine => Str]

=item [EngineVersion => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [IncludeAll => Bool]

=item [ListSupportedCharacterSets => Bool]

=item [ListSupportedTimezones => Bool]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBEngineVersions>

Returns: a L<Paws::RDS::DBEngineVersionMessage> instance

Returns a list of the available DB engines.


=head2 DescribeDBInstanceAutomatedBackups

=over

=item [DBInstanceAutomatedBackupsArn => Str]

=item [DBInstanceIdentifier => Str]

=item [DbiResourceId => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBInstanceAutomatedBackups>

Returns: a L<Paws::RDS::DBInstanceAutomatedBackupMessage> instance

Displays backups for both current and deleted instances. For example,
use this operation to find details about automated backups for
previously deleted instances. Current instances with retention periods
greater than zero (0) are returned for both the
C<DescribeDBInstanceAutomatedBackups> and C<DescribeDBInstances>
operations.

All parameters are optional.


=head2 DescribeDBInstances

=over

=item [DBInstanceIdentifier => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBInstances>

Returns: a L<Paws::RDS::DBInstanceMessage> instance

Returns information about provisioned RDS instances. This API supports
pagination.

This operation can also return information for Amazon Neptune DB
instances and Amazon DocumentDB instances.


=head2 DescribeDBLogFiles

=over

=item DBInstanceIdentifier => Str

=item [FileLastWritten => Int]

=item [FilenameContains => Str]

=item [FileSize => Int]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBLogFiles>

Returns: a L<Paws::RDS::DescribeDBLogFilesResponse> instance

Returns a list of DB log files for the DB instance.


=head2 DescribeDBParameterGroups

=over

=item [DBParameterGroupName => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBParameterGroups>

Returns: a L<Paws::RDS::DBParameterGroupsMessage> instance

Returns a list of C<DBParameterGroup> descriptions. If a
C<DBParameterGroupName> is specified, the list will contain only the
description of the specified DB parameter group.


=head2 DescribeDBParameters

=over

=item DBParameterGroupName => Str

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [Source => Str]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBParameters>

Returns: a L<Paws::RDS::DBParameterGroupDetails> instance

Returns the detailed parameter list for a particular DB parameter
group.


=head2 DescribeDBProxies

=over

=item [DBProxyName => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBProxies>

Returns: a L<Paws::RDS::DescribeDBProxiesResponse> instance

Returns information about DB proxies.


=head2 DescribeDBProxyEndpoints

=over

=item [DBProxyEndpointName => Str]

=item [DBProxyName => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBProxyEndpoints>

Returns: a L<Paws::RDS::DescribeDBProxyEndpointsResponse> instance

Returns information about DB proxy endpoints.


=head2 DescribeDBProxyTargetGroups

=over

=item DBProxyName => Str

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [TargetGroupName => Str]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBProxyTargetGroups>

Returns: a L<Paws::RDS::DescribeDBProxyTargetGroupsResponse> instance

Returns information about DB proxy target groups, represented by
C<DBProxyTargetGroup> data structures.


=head2 DescribeDBProxyTargets

=over

=item DBProxyName => Str

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [TargetGroupName => Str]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBProxyTargets>

Returns: a L<Paws::RDS::DescribeDBProxyTargetsResponse> instance

Returns information about C<DBProxyTarget> objects. This API supports
pagination.


=head2 DescribeDBSecurityGroups

=over

=item [DBSecurityGroupName => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBSecurityGroups>

Returns: a L<Paws::RDS::DBSecurityGroupMessage> instance

Returns a list of C<DBSecurityGroup> descriptions. If a
C<DBSecurityGroupName> is specified, the list will contain only the
descriptions of the specified DB security group.


=head2 DescribeDBSnapshotAttributes

=over

=item DBSnapshotIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBSnapshotAttributes>

Returns: a L<Paws::RDS::DescribeDBSnapshotAttributesResult> instance

Returns a list of DB snapshot attribute names and values for a manual
DB snapshot.

When sharing snapshots with other AWS accounts,
C<DescribeDBSnapshotAttributes> returns the C<restore> attribute and a
list of IDs for the AWS accounts that are authorized to copy or restore
the manual DB snapshot. If C<all> is included in the list of values for
the C<restore> attribute, then the manual DB snapshot is public and can
be copied or restored by all AWS accounts.

To add or remove access for an AWS account to copy or restore a manual
DB snapshot, or to make the manual DB snapshot public or private, use
the C<ModifyDBSnapshotAttribute> API action.


=head2 DescribeDBSnapshots

=over

=item [DBInstanceIdentifier => Str]

=item [DbiResourceId => Str]

=item [DBSnapshotIdentifier => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [IncludePublic => Bool]

=item [IncludeShared => Bool]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [SnapshotType => Str]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBSnapshots>

Returns: a L<Paws::RDS::DBSnapshotMessage> instance

Returns information about DB snapshots. This API action supports
pagination.


=head2 DescribeDBSubnetGroups

=over

=item [DBSubnetGroupName => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeDBSubnetGroups>

Returns: a L<Paws::RDS::DBSubnetGroupMessage> instance

Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is
specified, the list will contain only the descriptions of the specified
DBSubnetGroup.

For an overview of CIDR ranges, go to the Wikipedia Tutorial
(http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).


=head2 DescribeEngineDefaultClusterParameters

=over

=item DBParameterGroupFamily => Str

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeEngineDefaultClusterParameters>

Returns: a L<Paws::RDS::DescribeEngineDefaultClusterParametersResult> instance

Returns the default engine and system parameter information for the
cluster database engine.

For more information on Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>


=head2 DescribeEngineDefaultParameters

=over

=item DBParameterGroupFamily => Str

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeEngineDefaultParameters>

Returns: a L<Paws::RDS::DescribeEngineDefaultParametersResult> instance

Returns the default engine and system parameter information for the
specified database engine.


=head2 DescribeEventCategories

=over

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [SourceType => Str]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeEventCategories>

Returns: a L<Paws::RDS::EventCategoriesMessage> instance

Displays a list of categories for all event source types, or, if
specified, for a specified source type. You can see a list of the event
categories and source types in Events
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html)
in the I<Amazon RDS User Guide.>


=head2 DescribeEvents

=over

=item [Duration => Int]

=item [EndTime => Str]

=item [EventCategories => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [SourceIdentifier => Str]

=item [SourceType => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeEvents>

Returns: a L<Paws::RDS::EventsMessage> instance

Returns events related to DB instances, DB clusters, DB parameter
groups, DB security groups, DB snapshots, and DB cluster snapshots for
the past 14 days. Events specific to a particular DB instances, DB
clusters, DB parameter groups, DB security groups, DB snapshots, and DB
cluster snapshots group can be obtained by providing the name as a
parameter.

By default, the past hour of events are returned.


=head2 DescribeEventSubscriptions

=over

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [SubscriptionName => Str]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeEventSubscriptions>

Returns: a L<Paws::RDS::EventSubscriptionsMessage> instance

Lists all the subscription descriptions for a customer account. The
description for a subscription includes C<SubscriptionName>,
C<SNSTopicARN>, C<CustomerID>, C<SourceType>, C<SourceID>,
C<CreationTime>, and C<Status>.

If you specify a C<SubscriptionName>, lists the description for that
subscription.


=head2 DescribeExportTasks

=over

=item [ExportTaskIdentifier => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [SourceArn => Str]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeExportTasks>

Returns: a L<Paws::RDS::ExportTasksMessage> instance

Returns information about a snapshot export to Amazon S3. This API
operation supports pagination.


=head2 DescribeGlobalClusters

=over

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [GlobalClusterIdentifier => Str]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeGlobalClusters>

Returns: a L<Paws::RDS::GlobalClustersMessage> instance

Returns information about Aurora global database clusters. This API
supports pagination.

For more information on Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters.


=head2 DescribeInstallationMedia

=over

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [InstallationMediaId => Str]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeInstallationMedia>

Returns: a L<Paws::RDS::InstallationMediaMessage> instance

Describes the available installation media for a DB engine that
requires an on-premises customer provided license, such as Microsoft
SQL Server.


=head2 DescribeOptionGroupOptions

=over

=item EngineName => Str

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [MajorEngineVersion => Str]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeOptionGroupOptions>

Returns: a L<Paws::RDS::OptionGroupOptionsMessage> instance

Describes all available options.


=head2 DescribeOptionGroups

=over

=item [EngineName => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [MajorEngineVersion => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [OptionGroupName => Str]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeOptionGroups>

Returns: a L<Paws::RDS::OptionGroups> instance

Describes the available option groups.


=head2 DescribeOrderableDBInstanceOptions

=over

=item Engine => Str

=item [AvailabilityZoneGroup => Str]

=item [DBInstanceClass => Str]

=item [EngineVersion => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [LicenseModel => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [Vpc => Bool]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeOrderableDBInstanceOptions>

Returns: a L<Paws::RDS::OrderableDBInstanceOptionsMessage> instance

Returns a list of orderable DB instance options for the specified
engine.


=head2 DescribePendingMaintenanceActions

=over

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [ResourceIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::RDS::DescribePendingMaintenanceActions>

Returns: a L<Paws::RDS::PendingMaintenanceActionsMessage> instance

Returns a list of resources (for example, DB instances) that have at
least one pending maintenance action.


=head2 DescribeReservedDBInstances

=over

=item [DBInstanceClass => Str]

=item [Duration => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [LeaseId => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [MultiAZ => Bool]

=item [OfferingType => Str]

=item [ProductDescription => Str]

=item [ReservedDBInstanceId => Str]

=item [ReservedDBInstancesOfferingId => Str]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeReservedDBInstances>

Returns: a L<Paws::RDS::ReservedDBInstanceMessage> instance

Returns information about reserved DB instances for this account, or
about a specified reserved DB instance.


=head2 DescribeReservedDBInstancesOfferings

=over

=item [DBInstanceClass => Str]

=item [Duration => Str]

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [MultiAZ => Bool]

=item [OfferingType => Str]

=item [ProductDescription => Str]

=item [ReservedDBInstancesOfferingId => Str]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeReservedDBInstancesOfferings>

Returns: a L<Paws::RDS::ReservedDBInstancesOfferingMessage> instance

Lists available reserved DB instance offerings.


=head2 DescribeSourceRegions

=over

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [RegionName => Str]


=back

Each argument is described in detail in: L<Paws::RDS::DescribeSourceRegions>

Returns: a L<Paws::RDS::SourceRegionMessage> instance

Returns a list of the source AWS Regions where the current AWS Region
can create a read replica, copy a DB snapshot from, or replicate
automated backups from. This API action supports pagination.


=head2 DescribeValidDBInstanceModifications

=over

=item DBInstanceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RDS::DescribeValidDBInstanceModifications>

Returns: a L<Paws::RDS::DescribeValidDBInstanceModificationsResult> instance

You can call C<DescribeValidDBInstanceModifications> to learn what
modifications you can make to your DB instance. You can use this
information when you call C<ModifyDBInstance>.


=head2 DownloadDBLogFilePortion

=over

=item DBInstanceIdentifier => Str

=item LogFileName => Str

=item [Marker => Str]

=item [NumberOfLines => Int]


=back

Each argument is described in detail in: L<Paws::RDS::DownloadDBLogFilePortion>

Returns: a L<Paws::RDS::DownloadDBLogFilePortionDetails> instance

Downloads all or a portion of the specified log file, up to 1 MB in
size.


=head2 FailoverDBCluster

=over

=item DBClusterIdentifier => Str

=item [TargetDBInstanceIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::RDS::FailoverDBCluster>

Returns: a L<Paws::RDS::FailoverDBClusterResult> instance

Forces a failover for a DB cluster.

A failover for a DB cluster promotes one of the Aurora Replicas
(read-only instances) in the DB cluster to be the primary instance (the
cluster writer).

Amazon Aurora will automatically fail over to an Aurora Replica, if one
exists, when the primary instance fails. You can force a failover when
you want to simulate a failure of a primary instance for testing.
Because each instance in a DB cluster has its own endpoint address, you
will need to clean up and re-establish any existing connections that
use those endpoint addresses when the failover is complete.

For more information on Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters.


=head2 FailoverGlobalCluster

=over

=item GlobalClusterIdentifier => Str

=item TargetDbClusterIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RDS::FailoverGlobalCluster>

Returns: a L<Paws::RDS::FailoverGlobalClusterResult> instance

Initiates the failover process for an Aurora global database
(GlobalCluster).

A failover for an Aurora global database promotes one of secondary
read-only DB clusters to be the primary DB cluster and demotes the
primary DB cluster to being a secondary (read-only) DB cluster. In
other words, the role of the current primary DB cluster and the
selected (target) DB cluster are switched. The selected secondary DB
cluster assumes full read/write capabilities for the Aurora global
database.

For more information about failing over an Amazon Aurora global
database, see Managed planned failover for Amazon Aurora global
databases
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-disaster-recovery.html#aurora-global-database-disaster-recovery.managed-failover)
in the I<Amazon Aurora User Guide.>

This action applies to GlobalCluster (Aurora global databases) only.
Use this action only on healthy Aurora global databases with running
Aurora DB clusters and no Region-wide outages, to test disaster
recovery scenarios or to reconfigure your Aurora global database
topology.


=head2 ImportInstallationMedia

=over

=item CustomAvailabilityZoneId => Str

=item Engine => Str

=item EngineInstallationMediaPath => Str

=item EngineVersion => Str

=item OSInstallationMediaPath => Str


=back

Each argument is described in detail in: L<Paws::RDS::ImportInstallationMedia>

Returns: a L<Paws::RDS::InstallationMedia> instance

Imports the installation media for a DB engine that requires an
on-premises customer provided license, such as SQL Server.


=head2 ListTagsForResource

=over

=item ResourceName => Str

=item [Filters => ArrayRef[L<Paws::RDS::Filter>]]


=back

Each argument is described in detail in: L<Paws::RDS::ListTagsForResource>

Returns: a L<Paws::RDS::TagListMessage> instance

Lists all tags on an Amazon RDS resource.

For an overview on tagging an Amazon RDS resource, see Tagging Amazon
RDS Resources
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html)
in the I<Amazon RDS User Guide>.


=head2 ModifyCertificates

=over

=item [CertificateIdentifier => Str]

=item [RemoveCustomerOverride => Bool]


=back

Each argument is described in detail in: L<Paws::RDS::ModifyCertificates>

Returns: a L<Paws::RDS::ModifyCertificatesResult> instance

Override the system-default Secure Sockets Layer/Transport Layer
Security (SSL/TLS) certificate for Amazon RDS for new DB instances
temporarily, or remove the override.

By using this operation, you can specify an RDS-approved SSL/TLS
certificate for new DB instances that is different from the default
certificate provided by RDS. You can also use this operation to remove
the override, so that new DB instances use the default certificate
provided by RDS.

You might need to override the default certificate in the following
situations:

=over

=item *

You already migrated your applications to support the latest
certificate authority (CA) certificate, but the new CA certificate is
not yet the RDS default CA certificate for the specified AWS Region.

=item *

RDS has already moved to a new default CA certificate for the specified
AWS Region, but you are still in the process of supporting the new CA
certificate. In this case, you temporarily need additional time to
finish your application changes.

=back

For more information about rotating your SSL/TLS certificate for RDS DB
engines, see Rotating Your SSL/TLS Certificate
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL-certificate-rotation.html)
in the I<Amazon RDS User Guide>.

For more information about rotating your SSL/TLS certificate for Aurora
DB engines, see Rotating Your SSL/TLS Certificate
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL-certificate-rotation.html)
in the I<Amazon Aurora User Guide>.


=head2 ModifyCurrentDBClusterCapacity

=over

=item DBClusterIdentifier => Str

=item [Capacity => Int]

=item [SecondsBeforeTimeout => Int]

=item [TimeoutAction => Str]


=back

Each argument is described in detail in: L<Paws::RDS::ModifyCurrentDBClusterCapacity>

Returns: a L<Paws::RDS::DBClusterCapacityInfo> instance

Set the capacity of an Aurora Serverless DB cluster to a specific
value.

Aurora Serverless scales seamlessly based on the workload on the DB
cluster. In some cases, the capacity might not scale fast enough to
meet a sudden change in workload, such as a large number of new
transactions. Call C<ModifyCurrentDBClusterCapacity> to set the
capacity explicitly.

After this call sets the DB cluster capacity, Aurora Serverless can
automatically scale the DB cluster based on the cooldown period for
scaling up and the cooldown period for scaling down.

For more information about Aurora Serverless, see Using Amazon Aurora
Serverless
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html)
in the I<Amazon Aurora User Guide>.

If you call C<ModifyCurrentDBClusterCapacity> with the default
C<TimeoutAction>, connections that prevent Aurora Serverless from
finding a scaling point might be dropped. For more information about
scaling points, see Autoscaling for Aurora Serverless
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.how-it-works.html#aurora-serverless.how-it-works.auto-scaling)
in the I<Amazon Aurora User Guide>.

This action only applies to Aurora DB clusters.


=head2 ModifyDBCluster

=over

=item DBClusterIdentifier => Str

=item [AllowMajorVersionUpgrade => Bool]

=item [ApplyImmediately => Bool]

=item [BacktrackWindow => Int]

=item [BackupRetentionPeriod => Int]

=item [CloudwatchLogsExportConfiguration => L<Paws::RDS::CloudwatchLogsExportConfiguration>]

=item [CopyTagsToSnapshot => Bool]

=item [DBClusterParameterGroupName => Str]

=item [DBInstanceParameterGroupName => Str]

=item [DeletionProtection => Bool]

=item [Domain => Str]

=item [DomainIAMRoleName => Str]

=item [EnableGlobalWriteForwarding => Bool]

=item [EnableHttpEndpoint => Bool]

=item [EnableIAMDatabaseAuthentication => Bool]

=item [EngineVersion => Str]

=item [MasterUserPassword => Str]

=item [NewDBClusterIdentifier => Str]

=item [OptionGroupName => Str]

=item [Port => Int]

=item [PreferredBackupWindow => Str]

=item [PreferredMaintenanceWindow => Str]

=item [ScalingConfiguration => L<Paws::RDS::ScalingConfiguration>]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RDS::ModifyDBCluster>

Returns: a L<Paws::RDS::ModifyDBClusterResult> instance

Modify a setting for an Amazon Aurora DB cluster. You can change one or
more database configuration parameters by specifying these parameters
and the new values in the request. For more information on Amazon
Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters.


=head2 ModifyDBClusterEndpoint

=over

=item DBClusterEndpointIdentifier => Str

=item [EndpointType => Str]

=item [ExcludedMembers => ArrayRef[Str|Undef]]

=item [StaticMembers => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RDS::ModifyDBClusterEndpoint>

Returns: a L<Paws::RDS::DBClusterEndpoint> instance

Modifies the properties of an endpoint in an Amazon Aurora DB cluster.

This action only applies to Aurora DB clusters.


=head2 ModifyDBClusterParameterGroup

=over

=item DBClusterParameterGroupName => Str

=item Parameters => ArrayRef[L<Paws::RDS::Parameter>]


=back

Each argument is described in detail in: L<Paws::RDS::ModifyDBClusterParameterGroup>

Returns: a L<Paws::RDS::DBClusterParameterGroupNameMessage> instance

Modifies the parameters of a DB cluster parameter group. To modify more
than one parameter, submit a list of the following: C<ParameterName>,
C<ParameterValue>, and C<ApplyMethod>. A maximum of 20 parameters can
be modified in a single request.

For more information on Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

Changes to dynamic parameters are applied immediately. Changes to
static parameters require a reboot without failover to the DB cluster
associated with the parameter group before the change can take effect.

After you create a DB cluster parameter group, you should wait at least
5 minutes before creating your first DB cluster that uses that DB
cluster parameter group as the default parameter group. This allows
Amazon RDS to fully complete the create action before the parameter
group is used as the default for a new DB cluster. This is especially
important for parameters that are critical when creating the default
database for a DB cluster, such as the character set for the default
database defined by the C<character_set_database> parameter. You can
use the I<Parameter Groups> option of the Amazon RDS console
(https://console.aws.amazon.com/rds/) or the
C<DescribeDBClusterParameters> action to verify that your DB cluster
parameter group has been created or modified.

If the modified DB cluster parameter group is used by an Aurora
Serverless cluster, Aurora applies the update immediately. The cluster
restart might interrupt your workload. In that case, your application
must reopen any connections and retry any transactions that were active
when the parameter changes took effect.

This action only applies to Aurora DB clusters.


=head2 ModifyDBClusterSnapshotAttribute

=over

=item AttributeName => Str

=item DBClusterSnapshotIdentifier => Str

=item [ValuesToAdd => ArrayRef[Str|Undef]]

=item [ValuesToRemove => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RDS::ModifyDBClusterSnapshotAttribute>

Returns: a L<Paws::RDS::ModifyDBClusterSnapshotAttributeResult> instance

Adds an attribute and values to, or removes an attribute and values
from, a manual DB cluster snapshot.

To share a manual DB cluster snapshot with other AWS accounts, specify
C<restore> as the C<AttributeName> and use the C<ValuesToAdd> parameter
to add a list of IDs of the AWS accounts that are authorized to restore
the manual DB cluster snapshot. Use the value C<all> to make the manual
DB cluster snapshot public, which means that it can be copied or
restored by all AWS accounts.

Don't add the C<all> value for any manual DB cluster snapshots that
contain private information that you don't want available to all AWS
accounts.

If a manual DB cluster snapshot is encrypted, it can be shared, but
only by specifying a list of authorized AWS account IDs for the
C<ValuesToAdd> parameter. You can't use C<all> as a value for that
parameter in this case.

To view which AWS accounts have access to copy or restore a manual DB
cluster snapshot, or whether a manual DB cluster snapshot is public or
private, use the DescribeDBClusterSnapshotAttributes API action. The
accounts are returned as values for the C<restore> attribute.

This action only applies to Aurora DB clusters.


=head2 ModifyDBInstance

=over

=item DBInstanceIdentifier => Str

=item [AllocatedStorage => Int]

=item [AllowMajorVersionUpgrade => Bool]

=item [ApplyImmediately => Bool]

=item [AutoMinorVersionUpgrade => Bool]

=item [AwsBackupRecoveryPointArn => Str]

=item [BackupRetentionPeriod => Int]

=item [CACertificateIdentifier => Str]

=item [CertificateRotationRestart => Bool]

=item [CloudwatchLogsExportConfiguration => L<Paws::RDS::CloudwatchLogsExportConfiguration>]

=item [CopyTagsToSnapshot => Bool]

=item [DBInstanceClass => Str]

=item [DBParameterGroupName => Str]

=item [DBPortNumber => Int]

=item [DBSecurityGroups => ArrayRef[Str|Undef]]

=item [DBSubnetGroupName => Str]

=item [DeletionProtection => Bool]

=item [Domain => Str]

=item [DomainIAMRoleName => Str]

=item [EnableCustomerOwnedIp => Bool]

=item [EnableIAMDatabaseAuthentication => Bool]

=item [EnablePerformanceInsights => Bool]

=item [EngineVersion => Str]

=item [Iops => Int]

=item [LicenseModel => Str]

=item [MasterUserPassword => Str]

=item [MaxAllocatedStorage => Int]

=item [MonitoringInterval => Int]

=item [MonitoringRoleArn => Str]

=item [MultiAZ => Bool]

=item [NewDBInstanceIdentifier => Str]

=item [OptionGroupName => Str]

=item [PerformanceInsightsKMSKeyId => Str]

=item [PerformanceInsightsRetentionPeriod => Int]

=item [PreferredBackupWindow => Str]

=item [PreferredMaintenanceWindow => Str]

=item [ProcessorFeatures => ArrayRef[L<Paws::RDS::ProcessorFeature>]]

=item [PromotionTier => Int]

=item [PubliclyAccessible => Bool]

=item [ReplicaMode => Str]

=item [StorageType => Str]

=item [TdeCredentialArn => Str]

=item [TdeCredentialPassword => Str]

=item [UseDefaultProcessorFeatures => Bool]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RDS::ModifyDBInstance>

Returns: a L<Paws::RDS::ModifyDBInstanceResult> instance

Modifies settings for a DB instance. You can change one or more
database configuration parameters by specifying these parameters and
the new values in the request. To learn what modifications you can make
to your DB instance, call C<DescribeValidDBInstanceModifications>
before you call C<ModifyDBInstance>.


=head2 ModifyDBParameterGroup

=over

=item DBParameterGroupName => Str

=item Parameters => ArrayRef[L<Paws::RDS::Parameter>]


=back

Each argument is described in detail in: L<Paws::RDS::ModifyDBParameterGroup>

Returns: a L<Paws::RDS::DBParameterGroupNameMessage> instance

Modifies the parameters of a DB parameter group. To modify more than
one parameter, submit a list of the following: C<ParameterName>,
C<ParameterValue>, and C<ApplyMethod>. A maximum of 20 parameters can
be modified in a single request.

Changes to dynamic parameters are applied immediately. Changes to
static parameters require a reboot without failover to the DB instance
associated with the parameter group before the change can take effect.

After you modify a DB parameter group, you should wait at least 5
minutes before creating your first DB instance that uses that DB
parameter group as the default parameter group. This allows Amazon RDS
to fully complete the modify action before the parameter group is used
as the default for a new DB instance. This is especially important for
parameters that are critical when creating the default database for a
DB instance, such as the character set for the default database defined
by the C<character_set_database> parameter. You can use the I<Parameter
Groups> option of the Amazon RDS console
(https://console.aws.amazon.com/rds/) or the I<DescribeDBParameters>
command to verify that your DB parameter group has been created or
modified.


=head2 ModifyDBProxy

=over

=item DBProxyName => Str

=item [Auth => ArrayRef[L<Paws::RDS::UserAuthConfig>]]

=item [DebugLogging => Bool]

=item [IdleClientTimeout => Int]

=item [NewDBProxyName => Str]

=item [RequireTLS => Bool]

=item [RoleArn => Str]

=item [SecurityGroups => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RDS::ModifyDBProxy>

Returns: a L<Paws::RDS::ModifyDBProxyResponse> instance

Changes the settings for an existing DB proxy.


=head2 ModifyDBProxyEndpoint

=over

=item DBProxyEndpointName => Str

=item [NewDBProxyEndpointName => Str]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RDS::ModifyDBProxyEndpoint>

Returns: a L<Paws::RDS::ModifyDBProxyEndpointResponse> instance

Changes the settings for an existing DB proxy endpoint.


=head2 ModifyDBProxyTargetGroup

=over

=item DBProxyName => Str

=item TargetGroupName => Str

=item [ConnectionPoolConfig => L<Paws::RDS::ConnectionPoolConfiguration>]

=item [NewName => Str]


=back

Each argument is described in detail in: L<Paws::RDS::ModifyDBProxyTargetGroup>

Returns: a L<Paws::RDS::ModifyDBProxyTargetGroupResponse> instance

Modifies the properties of a C<DBProxyTargetGroup>.


=head2 ModifyDBSnapshot

=over

=item DBSnapshotIdentifier => Str

=item [EngineVersion => Str]

=item [OptionGroupName => Str]


=back

Each argument is described in detail in: L<Paws::RDS::ModifyDBSnapshot>

Returns: a L<Paws::RDS::ModifyDBSnapshotResult> instance

Updates a manual DB snapshot with a new engine version. The snapshot
can be encrypted or unencrypted, but not shared or public.

Amazon RDS supports upgrading DB snapshots for MySQL, Oracle, and
PostgreSQL.


=head2 ModifyDBSnapshotAttribute

=over

=item AttributeName => Str

=item DBSnapshotIdentifier => Str

=item [ValuesToAdd => ArrayRef[Str|Undef]]

=item [ValuesToRemove => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RDS::ModifyDBSnapshotAttribute>

Returns: a L<Paws::RDS::ModifyDBSnapshotAttributeResult> instance

Adds an attribute and values to, or removes an attribute and values
from, a manual DB snapshot.

To share a manual DB snapshot with other AWS accounts, specify
C<restore> as the C<AttributeName> and use the C<ValuesToAdd> parameter
to add a list of IDs of the AWS accounts that are authorized to restore
the manual DB snapshot. Uses the value C<all> to make the manual DB
snapshot public, which means it can be copied or restored by all AWS
accounts.

Don't add the C<all> value for any manual DB snapshots that contain
private information that you don't want available to all AWS accounts.

If the manual DB snapshot is encrypted, it can be shared, but only by
specifying a list of authorized AWS account IDs for the C<ValuesToAdd>
parameter. You can't use C<all> as a value for that parameter in this
case.

To view which AWS accounts have access to copy or restore a manual DB
snapshot, or whether a manual DB snapshot public or private, use the
DescribeDBSnapshotAttributes API action. The accounts are returned as
values for the C<restore> attribute.


=head2 ModifyDBSubnetGroup

=over

=item DBSubnetGroupName => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [DBSubnetGroupDescription => Str]


=back

Each argument is described in detail in: L<Paws::RDS::ModifyDBSubnetGroup>

Returns: a L<Paws::RDS::ModifyDBSubnetGroupResult> instance

Modifies an existing DB subnet group. DB subnet groups must contain at
least one subnet in at least two AZs in the AWS Region.


=head2 ModifyEventSubscription

=over

=item SubscriptionName => Str

=item [Enabled => Bool]

=item [EventCategories => ArrayRef[Str|Undef]]

=item [SnsTopicArn => Str]

=item [SourceType => Str]


=back

Each argument is described in detail in: L<Paws::RDS::ModifyEventSubscription>

Returns: a L<Paws::RDS::ModifyEventSubscriptionResult> instance

Modifies an existing RDS event notification subscription. You can't
modify the source identifiers using this call. To change source
identifiers for a subscription, use the
C<AddSourceIdentifierToSubscription> and
C<RemoveSourceIdentifierFromSubscription> calls.

You can see a list of the event categories for a given source type
(C<SourceType>) in Events
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html)
in the I<Amazon RDS User Guide> or by using the
C<DescribeEventCategories> operation.


=head2 ModifyGlobalCluster

=over

=item [AllowMajorVersionUpgrade => Bool]

=item [DeletionProtection => Bool]

=item [EngineVersion => Str]

=item [GlobalClusterIdentifier => Str]

=item [NewGlobalClusterIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::RDS::ModifyGlobalCluster>

Returns: a L<Paws::RDS::ModifyGlobalClusterResult> instance

Modify a setting for an Amazon Aurora global cluster. You can change
one or more database configuration parameters by specifying these
parameters and the new values in the request. For more information on
Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters.


=head2 ModifyOptionGroup

=over

=item OptionGroupName => Str

=item [ApplyImmediately => Bool]

=item [OptionsToInclude => ArrayRef[L<Paws::RDS::OptionConfiguration>]]

=item [OptionsToRemove => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RDS::ModifyOptionGroup>

Returns: a L<Paws::RDS::ModifyOptionGroupResult> instance

Modifies an existing option group.


=head2 PromoteReadReplica

=over

=item DBInstanceIdentifier => Str

=item [BackupRetentionPeriod => Int]

=item [PreferredBackupWindow => Str]


=back

Each argument is described in detail in: L<Paws::RDS::PromoteReadReplica>

Returns: a L<Paws::RDS::PromoteReadReplicaResult> instance

Promotes a read replica DB instance to a standalone DB instance.

=over

=item *

Backup duration is a function of the amount of changes to the database
since the previous backup. If you plan to promote a read replica to a
standalone instance, we recommend that you enable backups and complete
at least one backup prior to promotion. In addition, a read replica
cannot be promoted to a standalone instance when it is in the
C<backing-up> status. If you have enabled backups on your read replica,
configure the automated backup window so that daily backups do not
interfere with read replica promotion.

=item *

This command doesn't apply to Aurora MySQL and Aurora PostgreSQL.

=back



=head2 PromoteReadReplicaDBCluster

=over

=item DBClusterIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RDS::PromoteReadReplicaDBCluster>

Returns: a L<Paws::RDS::PromoteReadReplicaDBClusterResult> instance

Promotes a read replica DB cluster to a standalone DB cluster.

This action only applies to Aurora DB clusters.


=head2 PurchaseReservedDBInstancesOffering

=over

=item ReservedDBInstancesOfferingId => Str

=item [DBInstanceCount => Int]

=item [ReservedDBInstanceId => Str]

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]


=back

Each argument is described in detail in: L<Paws::RDS::PurchaseReservedDBInstancesOffering>

Returns: a L<Paws::RDS::PurchaseReservedDBInstancesOfferingResult> instance

Purchases a reserved DB instance offering.


=head2 RebootDBInstance

=over

=item DBInstanceIdentifier => Str

=item [ForceFailover => Bool]


=back

Each argument is described in detail in: L<Paws::RDS::RebootDBInstance>

Returns: a L<Paws::RDS::RebootDBInstanceResult> instance

You might need to reboot your DB instance, usually for maintenance
reasons. For example, if you make certain modifications, or if you
change the DB parameter group associated with the DB instance, you must
reboot the instance for the changes to take effect.

Rebooting a DB instance restarts the database engine service. Rebooting
a DB instance results in a momentary outage, during which the DB
instance status is set to rebooting.

For more information about rebooting, see Rebooting a DB Instance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_RebootInstance.html)
in the I<Amazon RDS User Guide.>


=head2 RegisterDBProxyTargets

=over

=item DBProxyName => Str

=item [DBClusterIdentifiers => ArrayRef[Str|Undef]]

=item [DBInstanceIdentifiers => ArrayRef[Str|Undef]]

=item [TargetGroupName => Str]


=back

Each argument is described in detail in: L<Paws::RDS::RegisterDBProxyTargets>

Returns: a L<Paws::RDS::RegisterDBProxyTargetsResponse> instance

Associate one or more C<DBProxyTarget> data structures with a
C<DBProxyTargetGroup>.


=head2 RemoveFromGlobalCluster

=over

=item [DbClusterIdentifier => Str]

=item [GlobalClusterIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::RDS::RemoveFromGlobalCluster>

Returns: a L<Paws::RDS::RemoveFromGlobalClusterResult> instance

Detaches an Aurora secondary cluster from an Aurora global database
cluster. The cluster becomes a standalone cluster with read-write
capability instead of being read-only and receiving data from a primary
cluster in a different region.

This action only applies to Aurora DB clusters.


=head2 RemoveRoleFromDBCluster

=over

=item DBClusterIdentifier => Str

=item RoleArn => Str

=item [FeatureName => Str]


=back

Each argument is described in detail in: L<Paws::RDS::RemoveRoleFromDBCluster>

Returns: nothing

Disassociates an AWS Identity and Access Management (IAM) role from an
Amazon Aurora DB cluster. For more information, see Authorizing Amazon
Aurora MySQL to Access Other AWS Services on Your Behalf
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.Authorizing.html)
in the I<Amazon Aurora User Guide>.

This action only applies to Aurora DB clusters.


=head2 RemoveRoleFromDBInstance

=over

=item DBInstanceIdentifier => Str

=item FeatureName => Str

=item RoleArn => Str


=back

Each argument is described in detail in: L<Paws::RDS::RemoveRoleFromDBInstance>

Returns: nothing

Disassociates an AWS Identity and Access Management (IAM) role from a
DB instance.


=head2 RemoveSourceIdentifierFromSubscription

=over

=item SourceIdentifier => Str

=item SubscriptionName => Str


=back

Each argument is described in detail in: L<Paws::RDS::RemoveSourceIdentifierFromSubscription>

Returns: a L<Paws::RDS::RemoveSourceIdentifierFromSubscriptionResult> instance

Removes a source identifier from an existing RDS event notification
subscription.


=head2 RemoveTagsFromResource

=over

=item ResourceName => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::RDS::RemoveTagsFromResource>

Returns: nothing

Removes metadata tags from an Amazon RDS resource.

For an overview on tagging an Amazon RDS resource, see Tagging Amazon
RDS Resources
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html)
in the I<Amazon RDS User Guide.>


=head2 ResetDBClusterParameterGroup

=over

=item DBClusterParameterGroupName => Str

=item [Parameters => ArrayRef[L<Paws::RDS::Parameter>]]

=item [ResetAllParameters => Bool]


=back

Each argument is described in detail in: L<Paws::RDS::ResetDBClusterParameterGroup>

Returns: a L<Paws::RDS::DBClusterParameterGroupNameMessage> instance

Modifies the parameters of a DB cluster parameter group to the default
value. To reset specific parameters submit a list of the following:
C<ParameterName> and C<ApplyMethod>. To reset the entire DB cluster
parameter group, specify the C<DBClusterParameterGroupName> and
C<ResetAllParameters> parameters.

When resetting the entire group, dynamic parameters are updated
immediately and static parameters are set to C<pending-reboot> to take
effect on the next DB instance restart or C<RebootDBInstance> request.
You must call C<RebootDBInstance> for every DB instance in your DB
cluster that you want the updated static parameter to apply to.

For more information on Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters.


=head2 ResetDBParameterGroup

=over

=item DBParameterGroupName => Str

=item [Parameters => ArrayRef[L<Paws::RDS::Parameter>]]

=item [ResetAllParameters => Bool]


=back

Each argument is described in detail in: L<Paws::RDS::ResetDBParameterGroup>

Returns: a L<Paws::RDS::DBParameterGroupNameMessage> instance

Modifies the parameters of a DB parameter group to the engine/system
default value. To reset specific parameters, provide a list of the
following: C<ParameterName> and C<ApplyMethod>. To reset the entire DB
parameter group, specify the C<DBParameterGroup> name and
C<ResetAllParameters> parameters. When resetting the entire group,
dynamic parameters are updated immediately and static parameters are
set to C<pending-reboot> to take effect on the next DB instance restart
or C<RebootDBInstance> request.


=head2 RestoreDBClusterFromS3

=over

=item DBClusterIdentifier => Str

=item Engine => Str

=item MasterUsername => Str

=item MasterUserPassword => Str

=item S3BucketName => Str

=item S3IngestionRoleArn => Str

=item SourceEngine => Str

=item SourceEngineVersion => Str

=item [AvailabilityZones => ArrayRef[Str|Undef]]

=item [BacktrackWindow => Int]

=item [BackupRetentionPeriod => Int]

=item [CharacterSetName => Str]

=item [CopyTagsToSnapshot => Bool]

=item [DatabaseName => Str]

=item [DBClusterParameterGroupName => Str]

=item [DBSubnetGroupName => Str]

=item [DeletionProtection => Bool]

=item [Domain => Str]

=item [DomainIAMRoleName => Str]

=item [EnableCloudwatchLogsExports => ArrayRef[Str|Undef]]

=item [EnableIAMDatabaseAuthentication => Bool]

=item [EngineVersion => Str]

=item [KmsKeyId => Str]

=item [OptionGroupName => Str]

=item [Port => Int]

=item [PreferredBackupWindow => Str]

=item [PreferredMaintenanceWindow => Str]

=item [S3Prefix => Str]

=item [StorageEncrypted => Bool]

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RDS::RestoreDBClusterFromS3>

Returns: a L<Paws::RDS::RestoreDBClusterFromS3Result> instance

Creates an Amazon Aurora DB cluster from MySQL data stored in an Amazon
S3 bucket. Amazon RDS must be authorized to access the Amazon S3 bucket
and the data must be created using the Percona XtraBackup utility as
described in Migrating Data from MySQL by Using an Amazon S3 Bucket
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Migrating.ExtMySQL.html#AuroraMySQL.Migrating.ExtMySQL.S3)
in the I<Amazon Aurora User Guide>.

This action only restores the DB cluster, not the DB instances for that
DB cluster. You must invoke the C<CreateDBInstance> action to create DB
instances for the restored DB cluster, specifying the identifier of the
restored DB cluster in C<DBClusterIdentifier>. You can create DB
instances only after the C<RestoreDBClusterFromS3> action has completed
and the DB cluster is available.

For more information on Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters. The source DB engine
must be MySQL.


=head2 RestoreDBClusterFromSnapshot

=over

=item DBClusterIdentifier => Str

=item Engine => Str

=item SnapshotIdentifier => Str

=item [AvailabilityZones => ArrayRef[Str|Undef]]

=item [BacktrackWindow => Int]

=item [CopyTagsToSnapshot => Bool]

=item [DatabaseName => Str]

=item [DBClusterParameterGroupName => Str]

=item [DBSubnetGroupName => Str]

=item [DeletionProtection => Bool]

=item [Domain => Str]

=item [DomainIAMRoleName => Str]

=item [EnableCloudwatchLogsExports => ArrayRef[Str|Undef]]

=item [EnableIAMDatabaseAuthentication => Bool]

=item [EngineMode => Str]

=item [EngineVersion => Str]

=item [KmsKeyId => Str]

=item [OptionGroupName => Str]

=item [Port => Int]

=item [ScalingConfiguration => L<Paws::RDS::ScalingConfiguration>]

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RDS::RestoreDBClusterFromSnapshot>

Returns: a L<Paws::RDS::RestoreDBClusterFromSnapshotResult> instance

Creates a new DB cluster from a DB snapshot or DB cluster snapshot.
This action only applies to Aurora DB clusters.

The target DB cluster is created from the source snapshot with a
default configuration. If you don't specify a security group, the new
DB cluster is associated with the default security group.

This action only restores the DB cluster, not the DB instances for that
DB cluster. You must invoke the C<CreateDBInstance> action to create DB
instances for the restored DB cluster, specifying the identifier of the
restored DB cluster in C<DBClusterIdentifier>. You can create DB
instances only after the C<RestoreDBClusterFromSnapshot> action has
completed and the DB cluster is available.

For more information on Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters.


=head2 RestoreDBClusterToPointInTime

=over

=item DBClusterIdentifier => Str

=item SourceDBClusterIdentifier => Str

=item [BacktrackWindow => Int]

=item [CopyTagsToSnapshot => Bool]

=item [DBClusterParameterGroupName => Str]

=item [DBSubnetGroupName => Str]

=item [DeletionProtection => Bool]

=item [Domain => Str]

=item [DomainIAMRoleName => Str]

=item [EnableCloudwatchLogsExports => ArrayRef[Str|Undef]]

=item [EnableIAMDatabaseAuthentication => Bool]

=item [KmsKeyId => Str]

=item [OptionGroupName => Str]

=item [Port => Int]

=item [RestoreToTime => Str]

=item [RestoreType => Str]

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]

=item [UseLatestRestorableTime => Bool]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RDS::RestoreDBClusterToPointInTime>

Returns: a L<Paws::RDS::RestoreDBClusterToPointInTimeResult> instance

Restores a DB cluster to an arbitrary point in time. Users can restore
to any point in time before C<LatestRestorableTime> for up to
C<BackupRetentionPeriod> days. The target DB cluster is created from
the source DB cluster with the same configuration as the original DB
cluster, except that the new DB cluster is created with the default DB
security group.

This action only restores the DB cluster, not the DB instances for that
DB cluster. You must invoke the C<CreateDBInstance> action to create DB
instances for the restored DB cluster, specifying the identifier of the
restored DB cluster in C<DBClusterIdentifier>. You can create DB
instances only after the C<RestoreDBClusterToPointInTime> action has
completed and the DB cluster is available.

For more information on Amazon Aurora, see What Is Amazon Aurora?
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters.


=head2 RestoreDBInstanceFromDBSnapshot

=over

=item DBInstanceIdentifier => Str

=item DBSnapshotIdentifier => Str

=item [AutoMinorVersionUpgrade => Bool]

=item [AvailabilityZone => Str]

=item [CopyTagsToSnapshot => Bool]

=item [DBInstanceClass => Str]

=item [DBName => Str]

=item [DBParameterGroupName => Str]

=item [DBSubnetGroupName => Str]

=item [DeletionProtection => Bool]

=item [Domain => Str]

=item [DomainIAMRoleName => Str]

=item [EnableCloudwatchLogsExports => ArrayRef[Str|Undef]]

=item [EnableCustomerOwnedIp => Bool]

=item [EnableIAMDatabaseAuthentication => Bool]

=item [Engine => Str]

=item [Iops => Int]

=item [LicenseModel => Str]

=item [MultiAZ => Bool]

=item [OptionGroupName => Str]

=item [Port => Int]

=item [ProcessorFeatures => ArrayRef[L<Paws::RDS::ProcessorFeature>]]

=item [PubliclyAccessible => Bool]

=item [StorageType => Str]

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]

=item [TdeCredentialArn => Str]

=item [TdeCredentialPassword => Str]

=item [UseDefaultProcessorFeatures => Bool]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RDS::RestoreDBInstanceFromDBSnapshot>

Returns: a L<Paws::RDS::RestoreDBInstanceFromDBSnapshotResult> instance

Creates a new DB instance from a DB snapshot. The target database is
created from the source database restore point with most of the
source's original configuration, including the default security group
and DB parameter group. By default, the new DB instance is created as a
Single-AZ deployment, except when the instance is a SQL Server instance
that has an option group associated with mirroring. In this case, the
instance becomes a Multi-AZ deployment, not a Single-AZ deployment.

If you want to replace your original DB instance with the new, restored
DB instance, then rename your original DB instance before you call the
RestoreDBInstanceFromDBSnapshot action. RDS doesn't allow two DB
instances with the same name. After you have renamed your original DB
instance with a different identifier, then you can pass the original
name of the DB instance as the DBInstanceIdentifier in the call to the
RestoreDBInstanceFromDBSnapshot action. The result is that you replace
the original DB instance with the DB instance created from the
snapshot.

If you are restoring from a shared manual DB snapshot, the
C<DBSnapshotIdentifier> must be the ARN of the shared DB snapshot.

This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For
Aurora, use C<RestoreDBClusterFromSnapshot>.


=head2 RestoreDBInstanceFromS3

=over

=item DBInstanceClass => Str

=item DBInstanceIdentifier => Str

=item Engine => Str

=item S3BucketName => Str

=item S3IngestionRoleArn => Str

=item SourceEngine => Str

=item SourceEngineVersion => Str

=item [AllocatedStorage => Int]

=item [AutoMinorVersionUpgrade => Bool]

=item [AvailabilityZone => Str]

=item [BackupRetentionPeriod => Int]

=item [CopyTagsToSnapshot => Bool]

=item [DBName => Str]

=item [DBParameterGroupName => Str]

=item [DBSecurityGroups => ArrayRef[Str|Undef]]

=item [DBSubnetGroupName => Str]

=item [DeletionProtection => Bool]

=item [EnableCloudwatchLogsExports => ArrayRef[Str|Undef]]

=item [EnableIAMDatabaseAuthentication => Bool]

=item [EnablePerformanceInsights => Bool]

=item [EngineVersion => Str]

=item [Iops => Int]

=item [KmsKeyId => Str]

=item [LicenseModel => Str]

=item [MasterUsername => Str]

=item [MasterUserPassword => Str]

=item [MaxAllocatedStorage => Int]

=item [MonitoringInterval => Int]

=item [MonitoringRoleArn => Str]

=item [MultiAZ => Bool]

=item [OptionGroupName => Str]

=item [PerformanceInsightsKMSKeyId => Str]

=item [PerformanceInsightsRetentionPeriod => Int]

=item [Port => Int]

=item [PreferredBackupWindow => Str]

=item [PreferredMaintenanceWindow => Str]

=item [ProcessorFeatures => ArrayRef[L<Paws::RDS::ProcessorFeature>]]

=item [PubliclyAccessible => Bool]

=item [S3Prefix => Str]

=item [StorageEncrypted => Bool]

=item [StorageType => Str]

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]

=item [UseDefaultProcessorFeatures => Bool]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RDS::RestoreDBInstanceFromS3>

Returns: a L<Paws::RDS::RestoreDBInstanceFromS3Result> instance

Amazon Relational Database Service (Amazon RDS) supports importing
MySQL databases by using backup files. You can create a backup of your
on-premises database, store it on Amazon Simple Storage Service (Amazon
S3), and then restore the backup file onto a new Amazon RDS DB instance
running MySQL. For more information, see Importing Data into an Amazon
RDS MySQL DB Instance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/MySQL.Procedural.Importing.html)
in the I<Amazon RDS User Guide.>


=head2 RestoreDBInstanceToPointInTime

=over

=item TargetDBInstanceIdentifier => Str

=item [AutoMinorVersionUpgrade => Bool]

=item [AvailabilityZone => Str]

=item [CopyTagsToSnapshot => Bool]

=item [DBInstanceClass => Str]

=item [DBName => Str]

=item [DBParameterGroupName => Str]

=item [DBSubnetGroupName => Str]

=item [DeletionProtection => Bool]

=item [Domain => Str]

=item [DomainIAMRoleName => Str]

=item [EnableCloudwatchLogsExports => ArrayRef[Str|Undef]]

=item [EnableCustomerOwnedIp => Bool]

=item [EnableIAMDatabaseAuthentication => Bool]

=item [Engine => Str]

=item [Iops => Int]

=item [LicenseModel => Str]

=item [MaxAllocatedStorage => Int]

=item [MultiAZ => Bool]

=item [OptionGroupName => Str]

=item [Port => Int]

=item [ProcessorFeatures => ArrayRef[L<Paws::RDS::ProcessorFeature>]]

=item [PubliclyAccessible => Bool]

=item [RestoreTime => Str]

=item [SourceDBInstanceAutomatedBackupsArn => Str]

=item [SourceDBInstanceIdentifier => Str]

=item [SourceDbiResourceId => Str]

=item [StorageType => Str]

=item [Tags => ArrayRef[L<Paws::RDS::Tag>]]

=item [TdeCredentialArn => Str]

=item [TdeCredentialPassword => Str]

=item [UseDefaultProcessorFeatures => Bool]

=item [UseLatestRestorableTime => Bool]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RDS::RestoreDBInstanceToPointInTime>

Returns: a L<Paws::RDS::RestoreDBInstanceToPointInTimeResult> instance

Restores a DB instance to an arbitrary point in time. You can restore
to any point in time before the time identified by the
LatestRestorableTime property. You can restore to a point up to the
number of days specified by the BackupRetentionPeriod property.

The target database is created with most of the original configuration,
but in a system-selected Availability Zone, with the default security
group, the default subnet group, and the default DB parameter group. By
default, the new DB instance is created as a single-AZ deployment
except when the instance is a SQL Server instance that has an option
group that is associated with mirroring; in this case, the instance
becomes a mirrored deployment and not a single-AZ deployment.

This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For
Aurora, use C<RestoreDBClusterToPointInTime>.


=head2 RevokeDBSecurityGroupIngress

=over

=item DBSecurityGroupName => Str

=item [CIDRIP => Str]

=item [EC2SecurityGroupId => Str]

=item [EC2SecurityGroupName => Str]

=item [EC2SecurityGroupOwnerId => Str]


=back

Each argument is described in detail in: L<Paws::RDS::RevokeDBSecurityGroupIngress>

Returns: a L<Paws::RDS::RevokeDBSecurityGroupIngressResult> instance

Revokes ingress from a DBSecurityGroup for previously authorized IP
ranges or EC2 or VPC security groups. Required parameters for this API
are one of CIDRIP, EC2SecurityGroupId for VPC, or
(EC2SecurityGroupOwnerId and either EC2SecurityGroupName or
EC2SecurityGroupId).


=head2 StartActivityStream

=over

=item KmsKeyId => Str

=item Mode => Str

=item ResourceArn => Str

=item [ApplyImmediately => Bool]


=back

Each argument is described in detail in: L<Paws::RDS::StartActivityStream>

Returns: a L<Paws::RDS::StartActivityStreamResponse> instance

Starts a database activity stream to monitor activity on the database.
For more information, see Database Activity Streams
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html)
in the I<Amazon Aurora User Guide>.


=head2 StartDBCluster

=over

=item DBClusterIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RDS::StartDBCluster>

Returns: a L<Paws::RDS::StartDBClusterResult> instance

Starts an Amazon Aurora DB cluster that was stopped using the AWS
console, the stop-db-cluster AWS CLI command, or the StopDBCluster
action.

For more information, see Stopping and Starting an Aurora Cluster
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-cluster-stop-start.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters.


=head2 StartDBInstance

=over

=item DBInstanceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RDS::StartDBInstance>

Returns: a L<Paws::RDS::StartDBInstanceResult> instance

Starts an Amazon RDS DB instance that was stopped using the AWS
console, the stop-db-instance AWS CLI command, or the StopDBInstance
action.

For more information, see Starting an Amazon RDS DB instance That Was
Previously Stopped
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StartInstance.html)
in the I<Amazon RDS User Guide.>

This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For
Aurora DB clusters, use C<StartDBCluster> instead.


=head2 StartDBInstanceAutomatedBackupsReplication

=over

=item SourceDBInstanceArn => Str

=item [BackupRetentionPeriod => Int]

=item [KmsKeyId => Str]

=item [PreSignedUrl => Str]


=back

Each argument is described in detail in: L<Paws::RDS::StartDBInstanceAutomatedBackupsReplication>

Returns: a L<Paws::RDS::StartDBInstanceAutomatedBackupsReplicationResult> instance

Enables replication of automated backups to a different AWS Region.

For more information, see Replicating Automated Backups to Another AWS
Region
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReplicateBackups.html)
in the I<Amazon RDS User Guide.>


=head2 StartExportTask

=over

=item ExportTaskIdentifier => Str

=item IamRoleArn => Str

=item KmsKeyId => Str

=item S3BucketName => Str

=item SourceArn => Str

=item [ExportOnly => ArrayRef[Str|Undef]]

=item [S3Prefix => Str]


=back

Each argument is described in detail in: L<Paws::RDS::StartExportTask>

Returns: a L<Paws::RDS::ExportTask> instance

Starts an export of a snapshot to Amazon S3. The provided IAM role must
have access to the S3 bucket.


=head2 StopActivityStream

=over

=item ResourceArn => Str

=item [ApplyImmediately => Bool]


=back

Each argument is described in detail in: L<Paws::RDS::StopActivityStream>

Returns: a L<Paws::RDS::StopActivityStreamResponse> instance

Stops a database activity stream that was started using the AWS
console, the C<start-activity-stream> AWS CLI command, or the
C<StartActivityStream> action.

For more information, see Database Activity Streams
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html)
in the I<Amazon Aurora User Guide>.


=head2 StopDBCluster

=over

=item DBClusterIdentifier => Str


=back

Each argument is described in detail in: L<Paws::RDS::StopDBCluster>

Returns: a L<Paws::RDS::StopDBClusterResult> instance

Stops an Amazon Aurora DB cluster. When you stop a DB cluster, Aurora
retains the DB cluster's metadata, including its endpoints and DB
parameter groups. Aurora also retains the transaction logs so you can
do a point-in-time restore if necessary.

For more information, see Stopping and Starting an Aurora Cluster
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-cluster-stop-start.html)
in the I<Amazon Aurora User Guide.>

This action only applies to Aurora DB clusters.


=head2 StopDBInstance

=over

=item DBInstanceIdentifier => Str

=item [DBSnapshotIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::RDS::StopDBInstance>

Returns: a L<Paws::RDS::StopDBInstanceResult> instance

Stops an Amazon RDS DB instance. When you stop a DB instance, Amazon
RDS retains the DB instance's metadata, including its endpoint, DB
parameter group, and option group membership. Amazon RDS also retains
the transaction logs so you can do a point-in-time restore if
necessary.

For more information, see Stopping an Amazon RDS DB Instance
Temporarily
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StopInstance.html)
in the I<Amazon RDS User Guide.>

This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For
Aurora clusters, use C<StopDBCluster> instead.


=head2 StopDBInstanceAutomatedBackupsReplication

=over

=item SourceDBInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::RDS::StopDBInstanceAutomatedBackupsReplication>

Returns: a L<Paws::RDS::StopDBInstanceAutomatedBackupsReplicationResult> instance

Stops automated backup replication for a DB instance.

For more information, see Replicating Automated Backups to Another AWS
Region
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReplicateBackups.html)
in the I<Amazon RDS User Guide.>




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllCertificates(sub { },[CertificateIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllCertificates([CertificateIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Certificates, passing the object as the first parameter, and the string 'Certificates' as the second parameter 

If not, it will return a a L<Paws::RDS::CertificateMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllCustomAvailabilityZones(sub { },[CustomAvailabilityZoneId => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllCustomAvailabilityZones([CustomAvailabilityZoneId => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CustomAvailabilityZones, passing the object as the first parameter, and the string 'CustomAvailabilityZones' as the second parameter 

If not, it will return a a L<Paws::RDS::CustomAvailabilityZoneMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBClusterBacktracks(sub { },DBClusterIdentifier => Str, [BacktrackIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBClusterBacktracks(DBClusterIdentifier => Str, [BacktrackIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBClusterBacktracks, passing the object as the first parameter, and the string 'DBClusterBacktracks' as the second parameter 

If not, it will return a a L<Paws::RDS::DBClusterBacktrackMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBClusterEndpoints(sub { },[DBClusterEndpointIdentifier => Str, DBClusterIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBClusterEndpoints([DBClusterEndpointIdentifier => Str, DBClusterIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBClusterEndpoints, passing the object as the first parameter, and the string 'DBClusterEndpoints' as the second parameter 

If not, it will return a a L<Paws::RDS::DBClusterEndpointMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBClusterParameterGroups(sub { },[DBClusterParameterGroupName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBClusterParameterGroups([DBClusterParameterGroupName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBClusterParameterGroups, passing the object as the first parameter, and the string 'DBClusterParameterGroups' as the second parameter 

If not, it will return a a L<Paws::RDS::DBClusterParameterGroupsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBClusterParameters(sub { },DBClusterParameterGroupName => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, Source => Str])

=head2 DescribeAllDBClusterParameters(DBClusterParameterGroupName => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, Source => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Parameters, passing the object as the first parameter, and the string 'Parameters' as the second parameter 

If not, it will return a a L<Paws::RDS::DBClusterParameterGroupDetails> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBClusters(sub { },[DBClusterIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], IncludeShared => Bool, Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBClusters([DBClusterIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], IncludeShared => Bool, Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBClusters, passing the object as the first parameter, and the string 'DBClusters' as the second parameter 

If not, it will return a a L<Paws::RDS::DBClusterMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBClusterSnapshots(sub { },[DBClusterIdentifier => Str, DBClusterSnapshotIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], IncludePublic => Bool, IncludeShared => Bool, Marker => Str, MaxRecords => Int, SnapshotType => Str])

=head2 DescribeAllDBClusterSnapshots([DBClusterIdentifier => Str, DBClusterSnapshotIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], IncludePublic => Bool, IncludeShared => Bool, Marker => Str, MaxRecords => Int, SnapshotType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBClusterSnapshots, passing the object as the first parameter, and the string 'DBClusterSnapshots' as the second parameter 

If not, it will return a a L<Paws::RDS::DBClusterSnapshotMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBEngineVersions(sub { },[DBParameterGroupFamily => Str, DefaultOnly => Bool, Engine => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], IncludeAll => Bool, ListSupportedCharacterSets => Bool, ListSupportedTimezones => Bool, Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBEngineVersions([DBParameterGroupFamily => Str, DefaultOnly => Bool, Engine => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], IncludeAll => Bool, ListSupportedCharacterSets => Bool, ListSupportedTimezones => Bool, Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBEngineVersions, passing the object as the first parameter, and the string 'DBEngineVersions' as the second parameter 

If not, it will return a a L<Paws::RDS::DBEngineVersionMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBInstanceAutomatedBackups(sub { },[DBInstanceAutomatedBackupsArn => Str, DBInstanceIdentifier => Str, DbiResourceId => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBInstanceAutomatedBackups([DBInstanceAutomatedBackupsArn => Str, DBInstanceIdentifier => Str, DbiResourceId => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBInstanceAutomatedBackups, passing the object as the first parameter, and the string 'DBInstanceAutomatedBackups' as the second parameter 

If not, it will return a a L<Paws::RDS::DBInstanceAutomatedBackupMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBInstances(sub { },[DBInstanceIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBInstances([DBInstanceIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBInstances, passing the object as the first parameter, and the string 'DBInstances' as the second parameter 

If not, it will return a a L<Paws::RDS::DBInstanceMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBLogFiles(sub { },DBInstanceIdentifier => Str, [FileLastWritten => Int, FilenameContains => Str, FileSize => Int, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBLogFiles(DBInstanceIdentifier => Str, [FileLastWritten => Int, FilenameContains => Str, FileSize => Int, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DescribeDBLogFiles, passing the object as the first parameter, and the string 'DescribeDBLogFiles' as the second parameter 

If not, it will return a a L<Paws::RDS::DescribeDBLogFilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBParameterGroups(sub { },[DBParameterGroupName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBParameterGroups([DBParameterGroupName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBParameterGroups, passing the object as the first parameter, and the string 'DBParameterGroups' as the second parameter 

If not, it will return a a L<Paws::RDS::DBParameterGroupsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBParameters(sub { },DBParameterGroupName => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, Source => Str])

=head2 DescribeAllDBParameters(DBParameterGroupName => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, Source => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Parameters, passing the object as the first parameter, and the string 'Parameters' as the second parameter 

If not, it will return a a L<Paws::RDS::DBParameterGroupDetails> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBProxies(sub { },[DBProxyName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBProxies([DBProxyName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBProxies, passing the object as the first parameter, and the string 'DBProxies' as the second parameter 

If not, it will return a a L<Paws::RDS::DescribeDBProxiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBProxyEndpoints(sub { },[DBProxyEndpointName => Str, DBProxyName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBProxyEndpoints([DBProxyEndpointName => Str, DBProxyName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBProxyEndpoints, passing the object as the first parameter, and the string 'DBProxyEndpoints' as the second parameter 

If not, it will return a a L<Paws::RDS::DescribeDBProxyEndpointsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBProxyTargetGroups(sub { },DBProxyName => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, TargetGroupName => Str])

=head2 DescribeAllDBProxyTargetGroups(DBProxyName => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, TargetGroupName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TargetGroups, passing the object as the first parameter, and the string 'TargetGroups' as the second parameter 

If not, it will return a a L<Paws::RDS::DescribeDBProxyTargetGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBProxyTargets(sub { },DBProxyName => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, TargetGroupName => Str])

=head2 DescribeAllDBProxyTargets(DBProxyName => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, TargetGroupName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Targets, passing the object as the first parameter, and the string 'Targets' as the second parameter 

If not, it will return a a L<Paws::RDS::DescribeDBProxyTargetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBSecurityGroups(sub { },[DBSecurityGroupName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBSecurityGroups([DBSecurityGroupName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBSecurityGroups, passing the object as the first parameter, and the string 'DBSecurityGroups' as the second parameter 

If not, it will return a a L<Paws::RDS::DBSecurityGroupMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBSnapshots(sub { },[DBInstanceIdentifier => Str, DbiResourceId => Str, DBSnapshotIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], IncludePublic => Bool, IncludeShared => Bool, Marker => Str, MaxRecords => Int, SnapshotType => Str])

=head2 DescribeAllDBSnapshots([DBInstanceIdentifier => Str, DbiResourceId => Str, DBSnapshotIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], IncludePublic => Bool, IncludeShared => Bool, Marker => Str, MaxRecords => Int, SnapshotType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBSnapshots, passing the object as the first parameter, and the string 'DBSnapshots' as the second parameter 

If not, it will return a a L<Paws::RDS::DBSnapshotMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBSubnetGroups(sub { },[DBSubnetGroupName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBSubnetGroups([DBSubnetGroupName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBSubnetGroups, passing the object as the first parameter, and the string 'DBSubnetGroups' as the second parameter 

If not, it will return a a L<Paws::RDS::DBSubnetGroupMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEngineDefaultClusterParameters(sub { },DBParameterGroupFamily => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllEngineDefaultClusterParameters(DBParameterGroupFamily => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EngineDefaults.Parameters, passing the object as the first parameter, and the string 'EngineDefaults.Parameters' as the second parameter 

If not, it will return a a L<Paws::RDS::DescribeEngineDefaultClusterParametersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEngineDefaultParameters(sub { },DBParameterGroupFamily => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllEngineDefaultParameters(DBParameterGroupFamily => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EngineDefaults.Parameters, passing the object as the first parameter, and the string 'EngineDefaults.Parameters' as the second parameter 

If not, it will return a a L<Paws::RDS::DescribeEngineDefaultParametersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEvents(sub { },[Duration => Int, EndTime => Str, EventCategories => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, SourceIdentifier => Str, SourceType => Str, StartTime => Str])

=head2 DescribeAllEvents([Duration => Int, EndTime => Str, EventCategories => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, SourceIdentifier => Str, SourceType => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Events, passing the object as the first parameter, and the string 'Events' as the second parameter 

If not, it will return a a L<Paws::RDS::EventsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEventSubscriptions(sub { },[Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, SubscriptionName => Str])

=head2 DescribeAllEventSubscriptions([Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, SubscriptionName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EventSubscriptionsList, passing the object as the first parameter, and the string 'EventSubscriptionsList' as the second parameter 

If not, it will return a a L<Paws::RDS::EventSubscriptionsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllExportTasks(sub { },[ExportTaskIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, SourceArn => Str])

=head2 DescribeAllExportTasks([ExportTaskIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, SourceArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ExportTasks, passing the object as the first parameter, and the string 'ExportTasks' as the second parameter 

If not, it will return a a L<Paws::RDS::ExportTasksMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllGlobalClusters(sub { },[Filters => ArrayRef[L<Paws::RDS::Filter>], GlobalClusterIdentifier => Str, Marker => Str, MaxRecords => Int])

=head2 DescribeAllGlobalClusters([Filters => ArrayRef[L<Paws::RDS::Filter>], GlobalClusterIdentifier => Str, Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GlobalClusters, passing the object as the first parameter, and the string 'GlobalClusters' as the second parameter 

If not, it will return a a L<Paws::RDS::GlobalClustersMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInstallationMedia(sub { },[Filters => ArrayRef[L<Paws::RDS::Filter>], InstallationMediaId => Str, Marker => Str, MaxRecords => Int])

=head2 DescribeAllInstallationMedia([Filters => ArrayRef[L<Paws::RDS::Filter>], InstallationMediaId => Str, Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstallationMedia, passing the object as the first parameter, and the string 'InstallationMedia' as the second parameter 

If not, it will return a a L<Paws::RDS::InstallationMediaMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllOptionGroupOptions(sub { },EngineName => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>], MajorEngineVersion => Str, Marker => Str, MaxRecords => Int])

=head2 DescribeAllOptionGroupOptions(EngineName => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>], MajorEngineVersion => Str, Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OptionGroupOptions, passing the object as the first parameter, and the string 'OptionGroupOptions' as the second parameter 

If not, it will return a a L<Paws::RDS::OptionGroupOptionsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllOptionGroups(sub { },[EngineName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], MajorEngineVersion => Str, Marker => Str, MaxRecords => Int, OptionGroupName => Str])

=head2 DescribeAllOptionGroups([EngineName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], MajorEngineVersion => Str, Marker => Str, MaxRecords => Int, OptionGroupName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OptionGroupsList, passing the object as the first parameter, and the string 'OptionGroupsList' as the second parameter 

If not, it will return a a L<Paws::RDS::OptionGroups> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllOrderableDBInstanceOptions(sub { },Engine => Str, [AvailabilityZoneGroup => Str, DBInstanceClass => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], LicenseModel => Str, Marker => Str, MaxRecords => Int, Vpc => Bool])

=head2 DescribeAllOrderableDBInstanceOptions(Engine => Str, [AvailabilityZoneGroup => Str, DBInstanceClass => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], LicenseModel => Str, Marker => Str, MaxRecords => Int, Vpc => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OrderableDBInstanceOptions, passing the object as the first parameter, and the string 'OrderableDBInstanceOptions' as the second parameter 

If not, it will return a a L<Paws::RDS::OrderableDBInstanceOptionsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllPendingMaintenanceActions(sub { },[Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, ResourceIdentifier => Str])

=head2 DescribeAllPendingMaintenanceActions([Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, ResourceIdentifier => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PendingMaintenanceActions, passing the object as the first parameter, and the string 'PendingMaintenanceActions' as the second parameter 

If not, it will return a a L<Paws::RDS::PendingMaintenanceActionsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReservedDBInstances(sub { },[DBInstanceClass => Str, Duration => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], LeaseId => Str, Marker => Str, MaxRecords => Int, MultiAZ => Bool, OfferingType => Str, ProductDescription => Str, ReservedDBInstanceId => Str, ReservedDBInstancesOfferingId => Str])

=head2 DescribeAllReservedDBInstances([DBInstanceClass => Str, Duration => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], LeaseId => Str, Marker => Str, MaxRecords => Int, MultiAZ => Bool, OfferingType => Str, ProductDescription => Str, ReservedDBInstanceId => Str, ReservedDBInstancesOfferingId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReservedDBInstances, passing the object as the first parameter, and the string 'ReservedDBInstances' as the second parameter 

If not, it will return a a L<Paws::RDS::ReservedDBInstanceMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReservedDBInstancesOfferings(sub { },[DBInstanceClass => Str, Duration => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, MultiAZ => Bool, OfferingType => Str, ProductDescription => Str, ReservedDBInstancesOfferingId => Str])

=head2 DescribeAllReservedDBInstancesOfferings([DBInstanceClass => Str, Duration => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, MultiAZ => Bool, OfferingType => Str, ProductDescription => Str, ReservedDBInstancesOfferingId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReservedDBInstancesOfferings, passing the object as the first parameter, and the string 'ReservedDBInstancesOfferings' as the second parameter 

If not, it will return a a L<Paws::RDS::ReservedDBInstancesOfferingMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSourceRegions(sub { },[Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, RegionName => Str])

=head2 DescribeAllSourceRegions([Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, RegionName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SourceRegions, passing the object as the first parameter, and the string 'SourceRegions' as the second parameter 

If not, it will return a a L<Paws::RDS::SourceRegionMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DownloadAllDBLogFilePortions(sub { },DBInstanceIdentifier => Str, LogFileName => Str, [Marker => Str, NumberOfLines => Int])

=head2 DownloadAllDBLogFilePortions(DBInstanceIdentifier => Str, LogFileName => Str, [Marker => Str, NumberOfLines => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LogFileData, passing the object as the first parameter, and the string 'LogFileData' as the second parameter 

If not, it will return a a L<Paws::RDS::DownloadDBLogFilePortionDetails> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

