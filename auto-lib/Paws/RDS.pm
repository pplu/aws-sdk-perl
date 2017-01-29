package Paws::RDS;
  use Moose;
  sub service { 'rds' }
  sub version { '2014-10-31' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

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
  sub CreateDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CreateDBCluster', @_);
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
  sub CreateOptionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::CreateOptionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteDBCluster', @_);
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
  sub DeleteDBParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteDBParameterGroup', @_);
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
  sub DeleteOptionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::DeleteOptionGroup', @_);
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
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::ModifyDBCluster', @_);
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
  sub RemoveRoleFromDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDS::RemoveRoleFromDBCluster', @_);
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
  
  sub DescribeAllDBClusterSnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBClusterSnapshots(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeDBClusterSnapshots(@_, Marker => $result->Marker);
        push @{ $result->DBClusterSnapshots }, @{ $result->DBClusterSnapshots };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeDBClusterSnapshots(@_, Marker => $result->Marker);
        $callback->($_ => 'DBClusterSnapshots') foreach (@{ $result->DBClusterSnapshots });
      }
    }

    return undef
  }
  sub DescribeAllDBEngineVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBEngineVersions(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeDBEngineVersions(@_, Marker => $result->Marker);
        push @{ $result->DBEngineVersions }, @{ $result->DBEngineVersions };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeDBEngineVersions(@_, Marker => $result->Marker);
        $callback->($_ => 'DBEngineVersions') foreach (@{ $result->DBEngineVersions });
      }
    }

    return undef
  }
  sub DescribeAllDBInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBInstances(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeDBInstances(@_, Marker => $result->Marker);
        push @{ $result->DBInstances }, @{ $result->DBInstances };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeDBInstances(@_, Marker => $result->Marker);
        $callback->($_ => 'DBInstances') foreach (@{ $result->DBInstances });
      }
    }

    return undef
  }
  sub DescribeAllDBLogFiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBLogFiles(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeDBLogFiles(@_, Marker => $result->Marker);
        push @{ $result->DescribeDBLogFiles }, @{ $result->DescribeDBLogFiles };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeDBLogFiles(@_, Marker => $result->Marker);
        $callback->($_ => 'DescribeDBLogFiles') foreach (@{ $result->DescribeDBLogFiles });
      }
    }

    return undef
  }
  sub DescribeAllDBParameterGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBParameterGroups(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeDBParameterGroups(@_, Marker => $result->Marker);
        push @{ $result->DBParameterGroups }, @{ $result->DBParameterGroups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeDBParameterGroups(@_, Marker => $result->Marker);
        $callback->($_ => 'DBParameterGroups') foreach (@{ $result->DBParameterGroups });
      }
    }

    return undef
  }
  sub DescribeAllDBParameters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBParameters(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeDBParameters(@_, Marker => $result->Marker);
        push @{ $result->Parameters }, @{ $result->Parameters };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeDBParameters(@_, Marker => $result->Marker);
        $callback->($_ => 'Parameters') foreach (@{ $result->Parameters });
      }
    }

    return undef
  }
  sub DescribeAllDBSecurityGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBSecurityGroups(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeDBSecurityGroups(@_, Marker => $result->Marker);
        push @{ $result->DBSecurityGroups }, @{ $result->DBSecurityGroups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeDBSecurityGroups(@_, Marker => $result->Marker);
        $callback->($_ => 'DBSecurityGroups') foreach (@{ $result->DBSecurityGroups });
      }
    }

    return undef
  }
  sub DescribeAllDBSnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBSnapshots(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeDBSnapshots(@_, Marker => $result->Marker);
        push @{ $result->DBSnapshots }, @{ $result->DBSnapshots };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeDBSnapshots(@_, Marker => $result->Marker);
        $callback->($_ => 'DBSnapshots') foreach (@{ $result->DBSnapshots });
      }
    }

    return undef
  }
  sub DescribeAllDBSubnetGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDBSubnetGroups(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeDBSubnetGroups(@_, Marker => $result->Marker);
        push @{ $result->DBSubnetGroups }, @{ $result->DBSubnetGroups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeDBSubnetGroups(@_, Marker => $result->Marker);
        $callback->($_ => 'DBSubnetGroups') foreach (@{ $result->DBSubnetGroups });
      }
    }

    return undef
  }
  sub DescribeAllEngineDefaultParameters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEngineDefaultParameters(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeEngineDefaultParameters(@_, Marker => $result->EngineDefaults->Marker);
        push @{ $result->EngineDefaults->Parameters }, @{ $result->EngineDefaults->Parameters };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeEngineDefaultParameters(@_, Marker => $result->EngineDefaults->Marker);
        $callback->($_ => 'EngineDefaults.Parameters') foreach (@{ $result->EngineDefaults->Parameters });
      }
    }

    return undef
  }
  sub DescribeAllEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEvents(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeEvents(@_, Marker => $result->Marker);
        push @{ $result->Events }, @{ $result->Events };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeEvents(@_, Marker => $result->Marker);
        $callback->($_ => 'Events') foreach (@{ $result->Events });
      }
    }

    return undef
  }
  sub DescribeAllEventSubscriptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEventSubscriptions(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeEventSubscriptions(@_, Marker => $result->Marker);
        push @{ $result->EventSubscriptionsList }, @{ $result->EventSubscriptionsList };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeEventSubscriptions(@_, Marker => $result->Marker);
        $callback->($_ => 'EventSubscriptionsList') foreach (@{ $result->EventSubscriptionsList });
      }
    }

    return undef
  }
  sub DescribeAllOptionGroupOptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeOptionGroupOptions(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeOptionGroupOptions(@_, Marker => $result->Marker);
        push @{ $result->OptionGroupOptions }, @{ $result->OptionGroupOptions };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeOptionGroupOptions(@_, Marker => $result->Marker);
        $callback->($_ => 'OptionGroupOptions') foreach (@{ $result->OptionGroupOptions });
      }
    }

    return undef
  }
  sub DescribeAllOptionGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeOptionGroups(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeOptionGroups(@_, Marker => $result->Marker);
        push @{ $result->OptionGroupsList }, @{ $result->OptionGroupsList };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeOptionGroups(@_, Marker => $result->Marker);
        $callback->($_ => 'OptionGroupsList') foreach (@{ $result->OptionGroupsList });
      }
    }

    return undef
  }
  sub DescribeAllOrderableDBInstanceOptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeOrderableDBInstanceOptions(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeOrderableDBInstanceOptions(@_, Marker => $result->Marker);
        push @{ $result->OrderableDBInstanceOptions }, @{ $result->OrderableDBInstanceOptions };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeOrderableDBInstanceOptions(@_, Marker => $result->Marker);
        $callback->($_ => 'OrderableDBInstanceOptions') foreach (@{ $result->OrderableDBInstanceOptions });
      }
    }

    return undef
  }
  sub DescribeAllReservedDBInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReservedDBInstances(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeReservedDBInstances(@_, Marker => $result->Marker);
        push @{ $result->ReservedDBInstances }, @{ $result->ReservedDBInstances };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeReservedDBInstances(@_, Marker => $result->Marker);
        $callback->($_ => 'ReservedDBInstances') foreach (@{ $result->ReservedDBInstances });
      }
    }

    return undef
  }
  sub DescribeAllReservedDBInstancesOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReservedDBInstancesOfferings(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeReservedDBInstancesOfferings(@_, Marker => $result->Marker);
        push @{ $result->ReservedDBInstancesOfferings }, @{ $result->ReservedDBInstancesOfferings };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeReservedDBInstancesOfferings(@_, Marker => $result->Marker);
        $callback->($_ => 'ReservedDBInstancesOfferings') foreach (@{ $result->ReservedDBInstancesOfferings });
      }
    }

    return undef
  }
  sub DownloadAllDBLogFilePortions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DownloadDBLogFilePortion(@_);

    if (not defined $callback) {
      while ($result->AdditionalDataPending) {
        $result = $self->DownloadDBLogFilePortion(@_, Marker => $result->Marker);
        push @{ $result->LogFileData }, @{ $result->LogFileData };
      }
      return $result;
    } else {
      while ($result->AdditionalDataPending) {
        $result = $self->DownloadDBLogFilePortion(@_, Marker => $result->Marker);
        $callback->($_ => 'LogFileData') foreach (@{ $result->LogFileData });
      }
    }

    return undef
  }


  sub operations { qw/AddRoleToDBCluster AddSourceIdentifierToSubscription AddTagsToResource ApplyPendingMaintenanceAction AuthorizeDBSecurityGroupIngress CopyDBClusterParameterGroup CopyDBClusterSnapshot CopyDBParameterGroup CopyDBSnapshot CopyOptionGroup CreateDBCluster CreateDBClusterParameterGroup CreateDBClusterSnapshot CreateDBInstance CreateDBInstanceReadReplica CreateDBParameterGroup CreateDBSecurityGroup CreateDBSnapshot CreateDBSubnetGroup CreateEventSubscription CreateOptionGroup DeleteDBCluster DeleteDBClusterParameterGroup DeleteDBClusterSnapshot DeleteDBInstance DeleteDBParameterGroup DeleteDBSecurityGroup DeleteDBSnapshot DeleteDBSubnetGroup DeleteEventSubscription DeleteOptionGroup DescribeAccountAttributes DescribeCertificates DescribeDBClusterParameterGroups DescribeDBClusterParameters DescribeDBClusters DescribeDBClusterSnapshotAttributes DescribeDBClusterSnapshots DescribeDBEngineVersions DescribeDBInstances DescribeDBLogFiles DescribeDBParameterGroups DescribeDBParameters DescribeDBSecurityGroups DescribeDBSnapshotAttributes DescribeDBSnapshots DescribeDBSubnetGroups DescribeEngineDefaultClusterParameters DescribeEngineDefaultParameters DescribeEventCategories DescribeEvents DescribeEventSubscriptions DescribeOptionGroupOptions DescribeOptionGroups DescribeOrderableDBInstanceOptions DescribePendingMaintenanceActions DescribeReservedDBInstances DescribeReservedDBInstancesOfferings DescribeSourceRegions DownloadDBLogFilePortion FailoverDBCluster ListTagsForResource ModifyDBCluster ModifyDBClusterParameterGroup ModifyDBClusterSnapshotAttribute ModifyDBInstance ModifyDBParameterGroup ModifyDBSnapshot ModifyDBSnapshotAttribute ModifyDBSubnetGroup ModifyEventSubscription ModifyOptionGroup PromoteReadReplica PromoteReadReplicaDBCluster PurchaseReservedDBInstancesOffering RebootDBInstance RemoveRoleFromDBCluster RemoveSourceIdentifierFromSubscription RemoveTagsFromResource ResetDBClusterParameterGroup ResetDBParameterGroup RestoreDBClusterFromS3 RestoreDBClusterFromSnapshot RestoreDBClusterToPointInTime RestoreDBInstanceFromDBSnapshot RestoreDBInstanceToPointInTime RevokeDBSecurityGroupIngress / }

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
Amazon RDS is flexible: you can scale your database instance's compute
resources and storage capacity to meet your application's demand. As
with all Amazon Web Services, there are no up-front investments, and
you pay only for the resources you use.

This interface reference for Amazon RDS contains documentation for a
programming or command line interface you can use to manage Amazon RDS.
Note that Amazon RDS is asynchronous, which means that some interfaces
might require techniques such as polling or callback functions to
determine when a command has been applied. In this reference, the
parameter descriptions indicate whether a command is applied
immediately, on the next instance reboot, or during the maintenance
window. The reference structure is as follows, and we list following
some related topics from the user guide.

B<Amazon RDS API Reference>

=over

=item *

For the alphabetical list of API actions, see API Actions.

=item *

For the alphabetical list of data types, see Data Types.

=item *

For a list of common query parameters, see Common Parameters.

=item *

For descriptions of the error codes, see Common Errors.

=back

B<Amazon RDS User Guide>

=over

=item *

For a summary of the Amazon RDS interfaces, see Available RDS
Interfaces.

=item *

For more information about how to use the Query API, see Using the
Query API.

=back


=head1 METHODS

=head2 AddRoleToDBCluster(DBClusterIdentifier => Str, RoleArn => Str)

Each argument is described in detail in: L<Paws::RDS::AddRoleToDBCluster>

Returns: nothing

  Associates an Identity and Access Management (IAM) role from an Aurora
DB cluster. For more information, see Authorizing Amazon Aurora to
Access Other AWS Services On Your Behalf.


=head2 AddSourceIdentifierToSubscription(SourceIdentifier => Str, SubscriptionName => Str)

Each argument is described in detail in: L<Paws::RDS::AddSourceIdentifierToSubscription>

Returns: a L<Paws::RDS::AddSourceIdentifierToSubscriptionResult> instance

  Adds a source identifier to an existing RDS event notification
subscription.


=head2 AddTagsToResource(ResourceName => Str, Tags => ArrayRef[L<Paws::RDS::Tag>])

Each argument is described in detail in: L<Paws::RDS::AddTagsToResource>

Returns: nothing

  Adds metadata tags to an Amazon RDS resource. These tags can also be
used with cost allocation reporting to track cost associated with
Amazon RDS resources, or used in a Condition statement in an IAM policy
for Amazon RDS.

For an overview on tagging Amazon RDS resources, see Tagging Amazon RDS
Resources.


=head2 ApplyPendingMaintenanceAction(ApplyAction => Str, OptInType => Str, ResourceIdentifier => Str)

Each argument is described in detail in: L<Paws::RDS::ApplyPendingMaintenanceAction>

Returns: a L<Paws::RDS::ApplyPendingMaintenanceActionResult> instance

  Applies a pending maintenance action to a resource (for example, to a
DB instance).


=head2 AuthorizeDBSecurityGroupIngress(DBSecurityGroupName => Str, [CIDRIP => Str, EC2SecurityGroupId => Str, EC2SecurityGroupName => Str, EC2SecurityGroupOwnerId => Str])

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

You cannot authorize ingress from an EC2 security group in one region
to an Amazon RDS DB instance in another. You cannot authorize ingress
from a VPC security group in one VPC to an Amazon RDS DB instance in
another.

For an overview of CIDR ranges, go to the Wikipedia Tutorial.


=head2 CopyDBClusterParameterGroup(SourceDBClusterParameterGroupIdentifier => Str, TargetDBClusterParameterGroupDescription => Str, TargetDBClusterParameterGroupIdentifier => Str, [Tags => ArrayRef[L<Paws::RDS::Tag>]])

Each argument is described in detail in: L<Paws::RDS::CopyDBClusterParameterGroup>

Returns: a L<Paws::RDS::CopyDBClusterParameterGroupResult> instance

  Copies the specified DB cluster parameter group.


=head2 CopyDBClusterSnapshot(SourceDBClusterSnapshotIdentifier => Str, TargetDBClusterSnapshotIdentifier => Str, [Tags => ArrayRef[L<Paws::RDS::Tag>]])

Each argument is described in detail in: L<Paws::RDS::CopyDBClusterSnapshot>

Returns: a L<Paws::RDS::CopyDBClusterSnapshotResult> instance

  Creates a snapshot of a DB cluster. For more information on Amazon
Aurora, see Aurora on Amazon RDS in the I<Amazon RDS User Guide.>


=head2 CopyDBParameterGroup(SourceDBParameterGroupIdentifier => Str, TargetDBParameterGroupDescription => Str, TargetDBParameterGroupIdentifier => Str, [Tags => ArrayRef[L<Paws::RDS::Tag>]])

Each argument is described in detail in: L<Paws::RDS::CopyDBParameterGroup>

Returns: a L<Paws::RDS::CopyDBParameterGroupResult> instance

  Copies the specified DB parameter group.


=head2 CopyDBSnapshot(SourceDBSnapshotIdentifier => Str, TargetDBSnapshotIdentifier => Str, [CopyTags => Bool, KmsKeyId => Str, PreSignedUrl => Str, Tags => ArrayRef[L<Paws::RDS::Tag>]])

Each argument is described in detail in: L<Paws::RDS::CopyDBSnapshot>

Returns: a L<Paws::RDS::CopyDBSnapshotResult> instance

  Copies the specified DB snapshot. The source DB snapshot must be in the
"available" state.

To copy a DB snapshot from a shared manual DB snapshot,
C<SourceDBSnapshotIdentifier> must be the Amazon Resource Name (ARN) of
the shared DB snapshot.

You can copy an encrypted DB snapshot from another AWS Region. In that
case, the region where you call the C<CopyDBSnapshot> action is the
destination region for the encrypted DB snapshot to be copied to. To
copy an encrypted DB snapshot from another region, you must provide the
following values:

=over

=item *

C<KmsKeyId> - The AWS Key Management System (KMS) key identifier for
the key to use to encrypt the copy of the DB snapshot in the
destination region.

=item *

C<PreSignedUrl> - A URL that contains a Signature Version 4 signed
request for the C<CopyDBSnapshot> action to be called in the source
region where the DB snapshot will be copied from. The presigned URL
must be a valid request for the C<CopyDBSnapshot> API action that can
be executed in the source region that contains the encrypted DB
snapshot to be copied.

The presigned URL request must contain the following parameter values:

=over

=item *

C<DestinationRegion> - The AWS Region that the encrypted DB snapshot
will be copied to. This region is the same one where the
C<CopyDBSnapshot> action is called that contains this presigned URL.

For example, if you copy an encrypted DB snapshot from the us-west-2
region to the us-east-1 region, then you will call the
C<CopyDBSnapshot> action in the us-east-1 region and provide a
presigned URL that contains a call to the C<CopyDBSnapshot> action in
the us-west-2 region. For this example, the C<DestinationRegion> in the
presigned URL must be set to the us-east-1 region.

=item *

C<KmsKeyId> - The KMS key identifier for the key to use to encrypt the
copy of the DB snapshot in the destination region. This identifier is
the same for both the C<CopyDBSnapshot> action that is called in the
destination region, and the action contained in the presigned URL.

=item *

C<SourceDBSnapshotIdentifier> - The DB snapshot identifier for the
encrypted snapshot to be copied. This identifier must be in the Amazon
Resource Name (ARN) format for the source region. For example, if you
copy an encrypted DB snapshot from the us-west-2 region, then your
C<SourceDBSnapshotIdentifier> looks like this example:
C<arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20161115>.

=back

To learn how to generate a Signature Version 4 signed request, see
Authenticating Requests: Using Query Parameters (AWS Signature Version
4) and Signature Version 4 Signing Process.

=item *

C<TargetDBSnapshotIdentifier> - The identifier for the new copy of the
DB snapshot in the destination region.

=item *

C<SourceDBSnapshotIdentifier> - The DB snapshot identifier for the
encrypted snapshot to be copied. This identifier must be in the ARN
format for the source region and is the same value as the
C<SourceDBSnapshotIdentifier> in the presigned URL.

=back

For more information on copying encrypted snapshots from one region to
another, see Copying an Encrypted DB Snapshot to Another Region in the
Amazon RDS User Guide.


=head2 CopyOptionGroup(SourceOptionGroupIdentifier => Str, TargetOptionGroupDescription => Str, TargetOptionGroupIdentifier => Str, [Tags => ArrayRef[L<Paws::RDS::Tag>]])

Each argument is described in detail in: L<Paws::RDS::CopyOptionGroup>

Returns: a L<Paws::RDS::CopyOptionGroupResult> instance

  Copies the specified option group.


=head2 CreateDBCluster(DBClusterIdentifier => Str, Engine => Str, [AvailabilityZones => ArrayRef[Str|Undef], BackupRetentionPeriod => Int, CharacterSetName => Str, DatabaseName => Str, DBClusterParameterGroupName => Str, DBSubnetGroupName => Str, EngineVersion => Str, KmsKeyId => Str, MasterUsername => Str, MasterUserPassword => Str, OptionGroupName => Str, Port => Int, PreferredBackupWindow => Str, PreferredMaintenanceWindow => Str, ReplicationSourceIdentifier => Str, StorageEncrypted => Bool, Tags => ArrayRef[L<Paws::RDS::Tag>], VpcSecurityGroupIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::RDS::CreateDBCluster>

Returns: a L<Paws::RDS::CreateDBClusterResult> instance

  Creates a new Amazon Aurora DB cluster.

You can use the C<ReplicationSourceIdentifier> parameter to create the
DB cluster as a Read Replica of another DB cluster or Amazon RDS MySQL
DB instance.

For more information on Amazon Aurora, see Aurora on Amazon RDS in the
I<Amazon RDS User Guide.>


=head2 CreateDBClusterParameterGroup(DBClusterParameterGroupName => Str, DBParameterGroupFamily => Str, Description => Str, [Tags => ArrayRef[L<Paws::RDS::Tag>]])

Each argument is described in detail in: L<Paws::RDS::CreateDBClusterParameterGroup>

Returns: a L<Paws::RDS::CreateDBClusterParameterGroupResult> instance

  Creates a new DB cluster parameter group.

Parameters in a DB cluster parameter group apply to all of the
instances in a DB cluster.

A DB cluster parameter group is initially created with the default
parameters for the database engine used by instances in the DB cluster.
To provide custom values for any of the parameters, you must modify the
group after creating it using ModifyDBClusterParameterGroup. Once
you've created a DB cluster parameter group, you need to associate it
with your DB cluster using ModifyDBCluster. When you associate a new DB
cluster parameter group with a running DB cluster, you need to reboot
the DB instances in the DB cluster without failover for the new DB
cluster parameter group and associated settings to take effect.

After you create a DB cluster parameter group, you should wait at least
5 minutes before creating your first DB cluster that uses that DB
cluster parameter group as the default parameter group. This allows
Amazon RDS to fully complete the create action before the DB cluster
parameter group is used as the default for a new DB cluster. This is
especially important for parameters that are critical when creating the
default database for a DB cluster, such as the character set for the
default database defined by the C<character_set_database> parameter.
You can use the I<Parameter Groups> option of the Amazon RDS console or
the DescribeDBClusterParameters command to verify that your DB cluster
parameter group has been created or modified.

For more information on Amazon Aurora, see Aurora on Amazon RDS in the
I<Amazon RDS User Guide.>


=head2 CreateDBClusterSnapshot(DBClusterIdentifier => Str, DBClusterSnapshotIdentifier => Str, [Tags => ArrayRef[L<Paws::RDS::Tag>]])

Each argument is described in detail in: L<Paws::RDS::CreateDBClusterSnapshot>

Returns: a L<Paws::RDS::CreateDBClusterSnapshotResult> instance

  Creates a snapshot of a DB cluster. For more information on Amazon
Aurora, see Aurora on Amazon RDS in the I<Amazon RDS User Guide.>


=head2 CreateDBInstance(DBInstanceClass => Str, DBInstanceIdentifier => Str, Engine => Str, [AllocatedStorage => Int, AutoMinorVersionUpgrade => Bool, AvailabilityZone => Str, BackupRetentionPeriod => Int, CharacterSetName => Str, CopyTagsToSnapshot => Bool, DBClusterIdentifier => Str, DBName => Str, DBParameterGroupName => Str, DBSecurityGroups => ArrayRef[Str|Undef], DBSubnetGroupName => Str, Domain => Str, DomainIAMRoleName => Str, EngineVersion => Str, Iops => Int, KmsKeyId => Str, LicenseModel => Str, MasterUsername => Str, MasterUserPassword => Str, MonitoringInterval => Int, MonitoringRoleArn => Str, MultiAZ => Bool, OptionGroupName => Str, Port => Int, PreferredBackupWindow => Str, PreferredMaintenanceWindow => Str, PromotionTier => Int, PubliclyAccessible => Bool, StorageEncrypted => Bool, StorageType => Str, Tags => ArrayRef[L<Paws::RDS::Tag>], TdeCredentialArn => Str, TdeCredentialPassword => Str, Timezone => Str, VpcSecurityGroupIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::RDS::CreateDBInstance>

Returns: a L<Paws::RDS::CreateDBInstanceResult> instance

  Creates a new DB instance.


=head2 CreateDBInstanceReadReplica(DBInstanceIdentifier => Str, SourceDBInstanceIdentifier => Str, [AutoMinorVersionUpgrade => Bool, AvailabilityZone => Str, CopyTagsToSnapshot => Bool, DBInstanceClass => Str, DBSubnetGroupName => Str, Iops => Int, KmsKeyId => Str, MonitoringInterval => Int, MonitoringRoleArn => Str, OptionGroupName => Str, Port => Int, PreSignedUrl => Str, PubliclyAccessible => Bool, StorageType => Str, Tags => ArrayRef[L<Paws::RDS::Tag>]])

Each argument is described in detail in: L<Paws::RDS::CreateDBInstanceReadReplica>

Returns: a L<Paws::RDS::CreateDBInstanceReadReplicaResult> instance

  Creates a DB instance for a DB instance running MySQL, MariaDB, or
PostgreSQL that acts as a Read Replica of a source DB instance.

All Read Replica DB instances are created as Single-AZ deployments with
backups disabled. All other DB instance attributes (including DB
security groups and DB parameter groups) are inherited from the source
DB instance, except as specified below.

The source DB instance must have backup retention enabled.

You can create an encrypted Read Replica in a different AWS Region than
the source DB instance. In that case, the region where you call the
C<CreateDBInstanceReadReplica> action is the destination region of the
encrypted Read Replica. The source DB instance must be encrypted.

To create an encrypted Read Replica in another AWS Region, you must
provide the following values:

=over

=item *

C<KmsKeyId> - The AWS Key Management System (KMS) key identifier for
the key to use to encrypt the Read Replica in the destination region.

=item *

C<PreSignedUrl> - A URL that contains a Signature Version 4 signed
request for the C< CreateDBInstanceReadReplica> API action in the AWS
region that contains the source DB instance. The C<PreSignedUrl>
parameter must be used when encrypting a Read Replica from another AWS
region.

The presigned URL must be a valid request for the
C<CreateDBInstanceReadReplica> API action that can be executed in the
source region that contains the encrypted DB instance. The presigned
URL request must contain the following parameter values:

=over

=item *

C<DestinationRegion> - The AWS Region that the Read Replica is created
in. This region is the same one where the
C<CreateDBInstanceReadReplica> action is called that contains this
presigned URL.

For example, if you create an encrypted Read Replica in the us-east-1
region, and the source DB instance is in the west-2 region, then you
call the C<CreateDBInstanceReadReplica> action in the us-east-1 region
and provide a presigned URL that contains a call to the
C<CreateDBInstanceReadReplica> action in the us-west-2 region. For this
example, the C<DestinationRegion> in the presigned URL must be set to
the us-east-1 region.

=item *

C<KmsKeyId> - The KMS key identifier for the key to use to encrypt the
Read Replica in the destination region. This is the same identifier for
both the C<CreateDBInstanceReadReplica> action that is called in the
destination region, and the action contained in the presigned URL.

=item *

C<SourceDBInstanceIdentifier> - The DB instance identifier for the
encrypted Read Replica to be created. This identifier must be in the
Amazon Resource Name (ARN) format for the source region. For example,
if you create an encrypted Read Replica from a DB instance in the
us-west-2 region, then your C<SourceDBInstanceIdentifier> would look
like this example: C<
arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-instance-20161115>.

=back

To learn how to generate a Signature Version 4 signed request, see
Authenticating Requests: Using Query Parameters (AWS Signature Version
4) and Signature Version 4 Signing Process.

=item *

C<DBInstanceIdentifier> - The identifier for the encrypted Read Replica
in the destination region.

=item *

C<SourceDBInstanceIdentifier> - The DB instance identifier for the
encrypted Read Replica. This identifier must be in the ARN format for
the source region and is the same value as the
C<SourceDBInstanceIdentifier> in the presigned URL.

=back



=head2 CreateDBParameterGroup(DBParameterGroupFamily => Str, DBParameterGroupName => Str, Description => Str, [Tags => ArrayRef[L<Paws::RDS::Tag>]])

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
Groups> option of the Amazon RDS console or the I<DescribeDBParameters>
command to verify that your DB parameter group has been created or
modified.


=head2 CreateDBSecurityGroup(DBSecurityGroupDescription => Str, DBSecurityGroupName => Str, [Tags => ArrayRef[L<Paws::RDS::Tag>]])

Each argument is described in detail in: L<Paws::RDS::CreateDBSecurityGroup>

Returns: a L<Paws::RDS::CreateDBSecurityGroupResult> instance

  Creates a new DB security group. DB security groups control access to a
DB instance.


=head2 CreateDBSnapshot(DBInstanceIdentifier => Str, DBSnapshotIdentifier => Str, [Tags => ArrayRef[L<Paws::RDS::Tag>]])

Each argument is described in detail in: L<Paws::RDS::CreateDBSnapshot>

Returns: a L<Paws::RDS::CreateDBSnapshotResult> instance

  Creates a DBSnapshot. The source DBInstance must be in "available"
state.


=head2 CreateDBSubnetGroup(DBSubnetGroupDescription => Str, DBSubnetGroupName => Str, SubnetIds => ArrayRef[Str|Undef], [Tags => ArrayRef[L<Paws::RDS::Tag>]])

Each argument is described in detail in: L<Paws::RDS::CreateDBSubnetGroup>

Returns: a L<Paws::RDS::CreateDBSubnetGroupResult> instance

  Creates a new DB subnet group. DB subnet groups must contain at least
one subnet in at least two AZs in the region.


=head2 CreateEventSubscription(SnsTopicArn => Str, SubscriptionName => Str, [Enabled => Bool, EventCategories => ArrayRef[Str|Undef], SourceIds => ArrayRef[Str|Undef], SourceType => Str, Tags => ArrayRef[L<Paws::RDS::Tag>]])

Each argument is described in detail in: L<Paws::RDS::CreateEventSubscription>

Returns: a L<Paws::RDS::CreateEventSubscriptionResult> instance

  Creates an RDS event notification subscription. This action requires a
topic ARN (Amazon Resource Name) created by either the RDS console, the
SNS console, or the SNS API. To obtain an ARN with SNS, you must create
a topic in Amazon SNS and subscribe to the topic. The ARN is displayed
in the SNS console.

You can specify the type of source (SourceType) you want to be notified
of, provide a list of RDS sources (SourceIds) that triggers the events,
and provide a list of event categories (EventCategories) for events you
want to be notified of. For example, you can specify SourceType =
db-instance, SourceIds = mydbinstance1, mydbinstance2 and
EventCategories = Availability, Backup.

If you specify both the SourceType and SourceIds, such as SourceType =
db-instance and SourceIdentifier = myDBInstance1, you will be notified
of all the db-instance events for the specified source. If you specify
a SourceType but do not specify a SourceIdentifier, you will receive
notice of the events for that source type for all your RDS sources. If
you do not specify either the SourceType nor the SourceIdentifier, you
will be notified of events generated from all RDS sources belonging to
your customer account.


=head2 CreateOptionGroup(EngineName => Str, MajorEngineVersion => Str, OptionGroupDescription => Str, OptionGroupName => Str, [Tags => ArrayRef[L<Paws::RDS::Tag>]])

Each argument is described in detail in: L<Paws::RDS::CreateOptionGroup>

Returns: a L<Paws::RDS::CreateOptionGroupResult> instance

  Creates a new option group. You can create up to 20 option groups.


=head2 DeleteDBCluster(DBClusterIdentifier => Str, [FinalDBSnapshotIdentifier => Str, SkipFinalSnapshot => Bool])

Each argument is described in detail in: L<Paws::RDS::DeleteDBCluster>

Returns: a L<Paws::RDS::DeleteDBClusterResult> instance

  The DeleteDBCluster action deletes a previously provisioned DB cluster.
When you delete a DB cluster, all automated backups for that DB cluster
are deleted and cannot be recovered. Manual DB cluster snapshots of the
specified DB cluster are not deleted.

For more information on Amazon Aurora, see Aurora on Amazon RDS in the
I<Amazon RDS User Guide.>


=head2 DeleteDBClusterParameterGroup(DBClusterParameterGroupName => Str)

Each argument is described in detail in: L<Paws::RDS::DeleteDBClusterParameterGroup>

Returns: nothing

  Deletes a specified DB cluster parameter group. The DB cluster
parameter group to be deleted cannot be associated with any DB
clusters.

For more information on Amazon Aurora, see Aurora on Amazon RDS in the
I<Amazon RDS User Guide.>


=head2 DeleteDBClusterSnapshot(DBClusterSnapshotIdentifier => Str)

Each argument is described in detail in: L<Paws::RDS::DeleteDBClusterSnapshot>

Returns: a L<Paws::RDS::DeleteDBClusterSnapshotResult> instance

  Deletes a DB cluster snapshot. If the snapshot is being copied, the
copy operation is terminated.

The DB cluster snapshot must be in the C<available> state to be
deleted.

For more information on Amazon Aurora, see Aurora on Amazon RDS in the
I<Amazon RDS User Guide.>


=head2 DeleteDBInstance(DBInstanceIdentifier => Str, [FinalDBSnapshotIdentifier => Str, SkipFinalSnapshot => Bool])

Each argument is described in detail in: L<Paws::RDS::DeleteDBInstance>

Returns: a L<Paws::RDS::DeleteDBInstanceResult> instance

  The DeleteDBInstance action deletes a previously provisioned DB
instance. When you delete a DB instance, all automated backups for that
instance are deleted and cannot be recovered. Manual DB snapshots of
the DB instance to be deleted by C<DeleteDBInstance> are not deleted.

If you request a final DB snapshot the status of the Amazon RDS DB
instance is C<deleting> until the DB snapshot is created. The API
action C<DescribeDBInstance> is used to monitor the status of this
operation. The action cannot be canceled or reverted once submitted.

Note that when a DB instance is in a failure state and has a status of
C<failed>, C<incompatible-restore>, or C<incompatible-network>, you can
only delete it when the C<SkipFinalSnapshot> parameter is set to
C<true>.

If the specified DB instance is part of an Amazon Aurora DB cluster,
you cannot delete the DB instance if the following are true:

=over

=item *

The DB cluster is a Read Replica of another Amazon Aurora DB cluster.

=item *

The DB instance is the only instance in the DB cluster.

=back

To delete a DB instance in this case, first call the
PromoteReadReplicaDBCluster API action to promote the DB cluster so
it's no longer a Read Replica. After the promotion completes, then call
the C<DeleteDBInstance> API action to delete the final instance in the
DB cluster.


=head2 DeleteDBParameterGroup(DBParameterGroupName => Str)

Each argument is described in detail in: L<Paws::RDS::DeleteDBParameterGroup>

Returns: nothing

  Deletes a specified DBParameterGroup. The DBParameterGroup to be
deleted cannot be associated with any DB instances.


=head2 DeleteDBSecurityGroup(DBSecurityGroupName => Str)

Each argument is described in detail in: L<Paws::RDS::DeleteDBSecurityGroup>

Returns: nothing

  Deletes a DB security group.

The specified DB security group must not be associated with any DB
instances.


=head2 DeleteDBSnapshot(DBSnapshotIdentifier => Str)

Each argument is described in detail in: L<Paws::RDS::DeleteDBSnapshot>

Returns: a L<Paws::RDS::DeleteDBSnapshotResult> instance

  Deletes a DBSnapshot. If the snapshot is being copied, the copy
operation is terminated.

The DBSnapshot must be in the C<available> state to be deleted.


=head2 DeleteDBSubnetGroup(DBSubnetGroupName => Str)

Each argument is described in detail in: L<Paws::RDS::DeleteDBSubnetGroup>

Returns: nothing

  Deletes a DB subnet group.

The specified database subnet group must not be associated with any DB
instances.


=head2 DeleteEventSubscription(SubscriptionName => Str)

Each argument is described in detail in: L<Paws::RDS::DeleteEventSubscription>

Returns: a L<Paws::RDS::DeleteEventSubscriptionResult> instance

  Deletes an RDS event notification subscription.


=head2 DeleteOptionGroup(OptionGroupName => Str)

Each argument is described in detail in: L<Paws::RDS::DeleteOptionGroup>

Returns: nothing

  Deletes an existing option group.


=head2 DescribeAccountAttributes()

Each argument is described in detail in: L<Paws::RDS::DescribeAccountAttributes>

Returns: a L<Paws::RDS::AccountAttributesMessage> instance

  Lists all of the attributes for a customer account. The attributes
include Amazon RDS quotas for the account, such as the number of DB
instances allowed. The description for a quota includes the quota name,
current usage toward that quota, and the quota's maximum value.

This command does not take any parameters.


=head2 DescribeCertificates([CertificateIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::RDS::DescribeCertificates>

Returns: a L<Paws::RDS::CertificateMessage> instance

  Lists the set of CA certificates provided by Amazon RDS for this AWS
account.


=head2 DescribeDBClusterParameterGroups([DBClusterParameterGroupName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::RDS::DescribeDBClusterParameterGroups>

Returns: a L<Paws::RDS::DBClusterParameterGroupsMessage> instance

  Returns a list of C<DBClusterParameterGroup> descriptions. If a
C<DBClusterParameterGroupName> parameter is specified, the list will
contain only the description of the specified DB cluster parameter
group.

For more information on Amazon Aurora, see Aurora on Amazon RDS in the
I<Amazon RDS User Guide.>


=head2 DescribeDBClusterParameters(DBClusterParameterGroupName => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, Source => Str])

Each argument is described in detail in: L<Paws::RDS::DescribeDBClusterParameters>

Returns: a L<Paws::RDS::DBClusterParameterGroupDetails> instance

  Returns the detailed parameter list for a particular DB cluster
parameter group.

For more information on Amazon Aurora, see Aurora on Amazon RDS in the
I<Amazon RDS User Guide.>


=head2 DescribeDBClusters([DBClusterIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::RDS::DescribeDBClusters>

Returns: a L<Paws::RDS::DBClusterMessage> instance

  Returns information about provisioned Aurora DB clusters. This API
supports pagination.

For more information on Amazon Aurora, see Aurora on Amazon RDS in the
I<Amazon RDS User Guide.>


=head2 DescribeDBClusterSnapshotAttributes(DBClusterSnapshotIdentifier => Str)

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
or private, use the ModifyDBClusterSnapshotAttribute API action.


=head2 DescribeDBClusterSnapshots([DBClusterIdentifier => Str, DBClusterSnapshotIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], IncludePublic => Bool, IncludeShared => Bool, Marker => Str, MaxRecords => Int, SnapshotType => Str])

Each argument is described in detail in: L<Paws::RDS::DescribeDBClusterSnapshots>

Returns: a L<Paws::RDS::DBClusterSnapshotMessage> instance

  Returns information about DB cluster snapshots. This API action
supports pagination.

For more information on Amazon Aurora, see Aurora on Amazon RDS in the
I<Amazon RDS User Guide.>


=head2 DescribeDBEngineVersions([DBParameterGroupFamily => Str, DefaultOnly => Bool, Engine => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], ListSupportedCharacterSets => Bool, ListSupportedTimezones => Bool, Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::RDS::DescribeDBEngineVersions>

Returns: a L<Paws::RDS::DBEngineVersionMessage> instance

  Returns a list of the available DB engines.


=head2 DescribeDBInstances([DBInstanceIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::RDS::DescribeDBInstances>

Returns: a L<Paws::RDS::DBInstanceMessage> instance

  Returns information about provisioned RDS instances. This API supports
pagination.


=head2 DescribeDBLogFiles(DBInstanceIdentifier => Str, [FileLastWritten => Int, FilenameContains => Str, FileSize => Int, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::RDS::DescribeDBLogFiles>

Returns: a L<Paws::RDS::DescribeDBLogFilesResponse> instance

  Returns a list of DB log files for the DB instance.


=head2 DescribeDBParameterGroups([DBParameterGroupName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::RDS::DescribeDBParameterGroups>

Returns: a L<Paws::RDS::DBParameterGroupsMessage> instance

  Returns a list of C<DBParameterGroup> descriptions. If a
C<DBParameterGroupName> is specified, the list will contain only the
description of the specified DB parameter group.


=head2 DescribeDBParameters(DBParameterGroupName => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, Source => Str])

Each argument is described in detail in: L<Paws::RDS::DescribeDBParameters>

Returns: a L<Paws::RDS::DBParameterGroupDetails> instance

  Returns the detailed parameter list for a particular DB parameter
group.


=head2 DescribeDBSecurityGroups([DBSecurityGroupName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::RDS::DescribeDBSecurityGroups>

Returns: a L<Paws::RDS::DBSecurityGroupMessage> instance

  Returns a list of C<DBSecurityGroup> descriptions. If a
C<DBSecurityGroupName> is specified, the list will contain only the
descriptions of the specified DB security group.


=head2 DescribeDBSnapshotAttributes(DBSnapshotIdentifier => Str)

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
the ModifyDBSnapshotAttribute API action.


=head2 DescribeDBSnapshots([DBInstanceIdentifier => Str, DBSnapshotIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], IncludePublic => Bool, IncludeShared => Bool, Marker => Str, MaxRecords => Int, SnapshotType => Str])

Each argument is described in detail in: L<Paws::RDS::DescribeDBSnapshots>

Returns: a L<Paws::RDS::DBSnapshotMessage> instance

  Returns information about DB snapshots. This API action supports
pagination.


=head2 DescribeDBSubnetGroups([DBSubnetGroupName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::RDS::DescribeDBSubnetGroups>

Returns: a L<Paws::RDS::DBSubnetGroupMessage> instance

  Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is
specified, the list will contain only the descriptions of the specified
DBSubnetGroup.

For an overview of CIDR ranges, go to the Wikipedia Tutorial.


=head2 DescribeEngineDefaultClusterParameters(DBParameterGroupFamily => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::RDS::DescribeEngineDefaultClusterParameters>

Returns: a L<Paws::RDS::DescribeEngineDefaultClusterParametersResult> instance

  Returns the default engine and system parameter information for the
cluster database engine.

For more information on Amazon Aurora, see Aurora on Amazon RDS in the
I<Amazon RDS User Guide.>


=head2 DescribeEngineDefaultParameters(DBParameterGroupFamily => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::RDS::DescribeEngineDefaultParameters>

Returns: a L<Paws::RDS::DescribeEngineDefaultParametersResult> instance

  Returns the default engine and system parameter information for the
specified database engine.


=head2 DescribeEventCategories([Filters => ArrayRef[L<Paws::RDS::Filter>], SourceType => Str])

Each argument is described in detail in: L<Paws::RDS::DescribeEventCategories>

Returns: a L<Paws::RDS::EventCategoriesMessage> instance

  Displays a list of categories for all event source types, or, if
specified, for a specified source type. You can see a list of the event
categories and source types in the Events topic in the I<Amazon RDS
User Guide.>


=head2 DescribeEvents([Duration => Int, EndTime => Str, EventCategories => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, SourceIdentifier => Str, SourceType => Str, StartTime => Str])

Each argument is described in detail in: L<Paws::RDS::DescribeEvents>

Returns: a L<Paws::RDS::EventsMessage> instance

  Returns events related to DB instances, DB security groups, DB
snapshots, and DB parameter groups for the past 14 days. Events
specific to a particular DB instance, DB security group, database
snapshot, or DB parameter group can be obtained by providing the name
as a parameter. By default, the past hour of events are returned.


=head2 DescribeEventSubscriptions([Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, SubscriptionName => Str])

Each argument is described in detail in: L<Paws::RDS::DescribeEventSubscriptions>

Returns: a L<Paws::RDS::EventSubscriptionsMessage> instance

  Lists all the subscription descriptions for a customer account. The
description for a subscription includes SubscriptionName, SNSTopicARN,
CustomerID, SourceType, SourceID, CreationTime, and Status.

If you specify a SubscriptionName, lists the description for that
subscription.


=head2 DescribeOptionGroupOptions(EngineName => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>], MajorEngineVersion => Str, Marker => Str, MaxRecords => Int])

Each argument is described in detail in: L<Paws::RDS::DescribeOptionGroupOptions>

Returns: a L<Paws::RDS::OptionGroupOptionsMessage> instance

  Describes all available options.


=head2 DescribeOptionGroups([EngineName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], MajorEngineVersion => Str, Marker => Str, MaxRecords => Int, OptionGroupName => Str])

Each argument is described in detail in: L<Paws::RDS::DescribeOptionGroups>

Returns: a L<Paws::RDS::OptionGroups> instance

  Describes the available option groups.


=head2 DescribeOrderableDBInstanceOptions(Engine => Str, [DBInstanceClass => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], LicenseModel => Str, Marker => Str, MaxRecords => Int, Vpc => Bool])

Each argument is described in detail in: L<Paws::RDS::DescribeOrderableDBInstanceOptions>

Returns: a L<Paws::RDS::OrderableDBInstanceOptionsMessage> instance

  Returns a list of orderable DB instance options for the specified
engine.


=head2 DescribePendingMaintenanceActions([Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, ResourceIdentifier => Str])

Each argument is described in detail in: L<Paws::RDS::DescribePendingMaintenanceActions>

Returns: a L<Paws::RDS::PendingMaintenanceActionsMessage> instance

  Returns a list of resources (for example, DB instances) that have at
least one pending maintenance action.


=head2 DescribeReservedDBInstances([DBInstanceClass => Str, Duration => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, MultiAZ => Bool, OfferingType => Str, ProductDescription => Str, ReservedDBInstanceId => Str, ReservedDBInstancesOfferingId => Str])

Each argument is described in detail in: L<Paws::RDS::DescribeReservedDBInstances>

Returns: a L<Paws::RDS::ReservedDBInstanceMessage> instance

  Returns information about reserved DB instances for this account, or
about a specified reserved DB instance.


=head2 DescribeReservedDBInstancesOfferings([DBInstanceClass => Str, Duration => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, MultiAZ => Bool, OfferingType => Str, ProductDescription => Str, ReservedDBInstancesOfferingId => Str])

Each argument is described in detail in: L<Paws::RDS::DescribeReservedDBInstancesOfferings>

Returns: a L<Paws::RDS::ReservedDBInstancesOfferingMessage> instance

  Lists available reserved DB instance offerings.


=head2 DescribeSourceRegions([Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, RegionName => Str])

Each argument is described in detail in: L<Paws::RDS::DescribeSourceRegions>

Returns: a L<Paws::RDS::SourceRegionMessage> instance

  Returns a list of the source AWS regions where the current AWS region
can create a Read Replica or copy a DB snapshot from. This API action
supports pagination.


=head2 DownloadDBLogFilePortion(DBInstanceIdentifier => Str, LogFileName => Str, [Marker => Str, NumberOfLines => Int])

Each argument is described in detail in: L<Paws::RDS::DownloadDBLogFilePortion>

Returns: a L<Paws::RDS::DownloadDBLogFilePortionDetails> instance

  Downloads all or a portion of the specified log file, up to 1 MB in
size.


=head2 FailoverDBCluster([DBClusterIdentifier => Str, TargetDBInstanceIdentifier => Str])

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

For more information on Amazon Aurora, see Aurora on Amazon RDS in the
I<Amazon RDS User Guide.>


=head2 ListTagsForResource(ResourceName => Str, [Filters => ArrayRef[L<Paws::RDS::Filter>]])

Each argument is described in detail in: L<Paws::RDS::ListTagsForResource>

Returns: a L<Paws::RDS::TagListMessage> instance

  Lists all tags on an Amazon RDS resource.

For an overview on tagging an Amazon RDS resource, see Tagging Amazon
RDS Resources.


=head2 ModifyDBCluster(DBClusterIdentifier => Str, [ApplyImmediately => Bool, BackupRetentionPeriod => Int, DBClusterParameterGroupName => Str, MasterUserPassword => Str, NewDBClusterIdentifier => Str, OptionGroupName => Str, Port => Int, PreferredBackupWindow => Str, PreferredMaintenanceWindow => Str, VpcSecurityGroupIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::RDS::ModifyDBCluster>

Returns: a L<Paws::RDS::ModifyDBClusterResult> instance

  Modify a setting for an Amazon Aurora DB cluster. You can change one or
more database configuration parameters by specifying these parameters
and the new values in the request. For more information on Amazon
Aurora, see Aurora on Amazon RDS in the I<Amazon RDS User Guide.>


=head2 ModifyDBClusterParameterGroup(DBClusterParameterGroupName => Str, Parameters => ArrayRef[L<Paws::RDS::Parameter>])

Each argument is described in detail in: L<Paws::RDS::ModifyDBClusterParameterGroup>

Returns: a L<Paws::RDS::DBClusterParameterGroupNameMessage> instance

  Modifies the parameters of a DB cluster parameter group. To modify more
than one parameter, submit a list of the following: C<ParameterName>,
C<ParameterValue>, and C<ApplyMethod>. A maximum of 20 parameters can
be modified in a single request.

For more information on Amazon Aurora, see Aurora on Amazon RDS in the
I<Amazon RDS User Guide.>

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
use the I<Parameter Groups> option of the Amazon RDS console or the
DescribeDBClusterParameters command to verify that your DB cluster
parameter group has been created or modified.


=head2 ModifyDBClusterSnapshotAttribute(AttributeName => Str, DBClusterSnapshotIdentifier => Str, [ValuesToAdd => ArrayRef[Str|Undef], ValuesToRemove => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::RDS::ModifyDBClusterSnapshotAttribute>

Returns: a L<Paws::RDS::ModifyDBClusterSnapshotAttributeResult> instance

  Adds an attribute and values to, or removes an attribute and values
from, a manual DB cluster snapshot.

To share a manual DB cluster snapshot with other AWS accounts, specify
C<restore> as the C<AttributeName> and use the C<ValuesToAdd> parameter
to add a list of IDs of the AWS accounts that are authorized to restore
the manual DB cluster snapshot. Use the value C<all> to make the manual
DB cluster snapshot public, which means that it can be copied or
restored by all AWS accounts. Do not add the C<all> value for any
manual DB cluster snapshots that contain private information that you
don't want available to all AWS accounts.

To view which AWS accounts have access to copy or restore a manual DB
cluster snapshot, or whether a manual DB cluster snapshot public or
private, use the DescribeDBClusterSnapshotAttributes API action.

If a manual DB cluster snapshot is encrypted, it cannot be shared.


=head2 ModifyDBInstance(DBInstanceIdentifier => Str, [AllocatedStorage => Int, AllowMajorVersionUpgrade => Bool, ApplyImmediately => Bool, AutoMinorVersionUpgrade => Bool, BackupRetentionPeriod => Int, CACertificateIdentifier => Str, CopyTagsToSnapshot => Bool, DBInstanceClass => Str, DBParameterGroupName => Str, DBPortNumber => Int, DBSecurityGroups => ArrayRef[Str|Undef], DBSubnetGroupName => Str, Domain => Str, DomainIAMRoleName => Str, EngineVersion => Str, Iops => Int, LicenseModel => Str, MasterUserPassword => Str, MonitoringInterval => Int, MonitoringRoleArn => Str, MultiAZ => Bool, NewDBInstanceIdentifier => Str, OptionGroupName => Str, PreferredBackupWindow => Str, PreferredMaintenanceWindow => Str, PromotionTier => Int, PubliclyAccessible => Bool, StorageType => Str, TdeCredentialArn => Str, TdeCredentialPassword => Str, VpcSecurityGroupIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::RDS::ModifyDBInstance>

Returns: a L<Paws::RDS::ModifyDBInstanceResult> instance

  Modifies settings for a DB instance. You can change one or more
database configuration parameters by specifying these parameters and
the new values in the request.


=head2 ModifyDBParameterGroup(DBParameterGroupName => Str, Parameters => ArrayRef[L<Paws::RDS::Parameter>])

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
Groups> option of the Amazon RDS console or the I<DescribeDBParameters>
command to verify that your DB parameter group has been created or
modified.


=head2 ModifyDBSnapshot(DBSnapshotIdentifier => Str, [EngineVersion => Str])

Each argument is described in detail in: L<Paws::RDS::ModifyDBSnapshot>

Returns: a L<Paws::RDS::ModifyDBSnapshotResult> instance

  Updates a manual DB snapshot, which can be encrypted or not encrypted,
with a new engine version. You can update the engine version to either
a new major or minor engine version.

Amazon RDS supports upgrading a MySQL DB snapshot from MySQL 5.1 to
MySQL 5.5.


=head2 ModifyDBSnapshotAttribute(AttributeName => Str, DBSnapshotIdentifier => Str, [ValuesToAdd => ArrayRef[Str|Undef], ValuesToRemove => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::RDS::ModifyDBSnapshotAttribute>

Returns: a L<Paws::RDS::ModifyDBSnapshotAttributeResult> instance

  Adds an attribute and values to, or removes an attribute and values
from, a manual DB snapshot.

To share a manual DB snapshot with other AWS accounts, specify
C<restore> as the C<AttributeName> and use the C<ValuesToAdd> parameter
to add a list of IDs of the AWS accounts that are authorized to restore
the manual DB snapshot. Uses the value C<all> to make the manual DB
snapshot public, which means it can be copied or restored by all AWS
accounts. Do not add the C<all> value for any manual DB snapshots that
contain private information that you don't want available to all AWS
accounts.

To view which AWS accounts have access to copy or restore a manual DB
snapshot, or whether a manual DB snapshot public or private, use the
DescribeDBSnapshotAttributes API action.

If the manual DB snapshot is encrypted, it cannot be shared.


=head2 ModifyDBSubnetGroup(DBSubnetGroupName => Str, SubnetIds => ArrayRef[Str|Undef], [DBSubnetGroupDescription => Str])

Each argument is described in detail in: L<Paws::RDS::ModifyDBSubnetGroup>

Returns: a L<Paws::RDS::ModifyDBSubnetGroupResult> instance

  Modifies an existing DB subnet group. DB subnet groups must contain at
least one subnet in at least two AZs in the region.


=head2 ModifyEventSubscription(SubscriptionName => Str, [Enabled => Bool, EventCategories => ArrayRef[Str|Undef], SnsTopicArn => Str, SourceType => Str])

Each argument is described in detail in: L<Paws::RDS::ModifyEventSubscription>

Returns: a L<Paws::RDS::ModifyEventSubscriptionResult> instance

  Modifies an existing RDS event notification subscription. Note that you
cannot modify the source identifiers using this call; to change source
identifiers for a subscription, use the
AddSourceIdentifierToSubscription and
RemoveSourceIdentifierFromSubscription calls.

You can see a list of the event categories for a given SourceType in
the Events topic in the Amazon RDS User Guide or by using the
B<DescribeEventCategories> action.


=head2 ModifyOptionGroup(OptionGroupName => Str, [ApplyImmediately => Bool, OptionsToInclude => ArrayRef[L<Paws::RDS::OptionConfiguration>], OptionsToRemove => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::RDS::ModifyOptionGroup>

Returns: a L<Paws::RDS::ModifyOptionGroupResult> instance

  Modifies an existing option group.


=head2 PromoteReadReplica(DBInstanceIdentifier => Str, [BackupRetentionPeriod => Int, PreferredBackupWindow => Str])

Each argument is described in detail in: L<Paws::RDS::PromoteReadReplica>

Returns: a L<Paws::RDS::PromoteReadReplicaResult> instance

  Promotes a Read Replica DB instance to a standalone DB instance.

We recommend that you enable automated backups on your Read Replica
before promoting the Read Replica. This ensures that no backup is taken
during the promotion process. Once the instance is promoted to a
primary instance, backups are taken based on your backup settings.


=head2 PromoteReadReplicaDBCluster(DBClusterIdentifier => Str)

Each argument is described in detail in: L<Paws::RDS::PromoteReadReplicaDBCluster>

Returns: a L<Paws::RDS::PromoteReadReplicaDBClusterResult> instance

  Promotes a Read Replica DB cluster to a standalone DB cluster.


=head2 PurchaseReservedDBInstancesOffering(ReservedDBInstancesOfferingId => Str, [DBInstanceCount => Int, ReservedDBInstanceId => Str, Tags => ArrayRef[L<Paws::RDS::Tag>]])

Each argument is described in detail in: L<Paws::RDS::PurchaseReservedDBInstancesOffering>

Returns: a L<Paws::RDS::PurchaseReservedDBInstancesOfferingResult> instance

  Purchases a reserved DB instance offering.


=head2 RebootDBInstance(DBInstanceIdentifier => Str, [ForceFailover => Bool])

Each argument is described in detail in: L<Paws::RDS::RebootDBInstance>

Returns: a L<Paws::RDS::RebootDBInstanceResult> instance

  Rebooting a DB instance restarts the database engine service. A reboot
also applies to the DB instance any modifications to the associated DB
parameter group that were pending. Rebooting a DB instance results in a
momentary outage of the instance, during which the DB instance status
is set to rebooting. If the RDS instance is configured for MultiAZ, it
is possible that the reboot will be conducted through a failover. An
Amazon RDS event is created when the reboot is completed.

If your DB instance is deployed in multiple Availability Zones, you can
force a failover from one AZ to the other during the reboot. You might
force a failover to test the availability of your DB instance
deployment or to restore operations to the original AZ after a failover
occurs.

The time required to reboot is a function of the specific database
engine's crash recovery process. To improve the reboot time, we
recommend that you reduce database activities as much as possible
during the reboot process to reduce rollback activity for in-transit
transactions.


=head2 RemoveRoleFromDBCluster(DBClusterIdentifier => Str, RoleArn => Str)

Each argument is described in detail in: L<Paws::RDS::RemoveRoleFromDBCluster>

Returns: nothing

  Disassociates an Identity and Access Management (IAM) role from an
Aurora DB cluster. For more information, see Authorizing Amazon Aurora
to Access Other AWS Services On Your Behalf.


=head2 RemoveSourceIdentifierFromSubscription(SourceIdentifier => Str, SubscriptionName => Str)

Each argument is described in detail in: L<Paws::RDS::RemoveSourceIdentifierFromSubscription>

Returns: a L<Paws::RDS::RemoveSourceIdentifierFromSubscriptionResult> instance

  Removes a source identifier from an existing RDS event notification
subscription.


=head2 RemoveTagsFromResource(ResourceName => Str, TagKeys => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::RDS::RemoveTagsFromResource>

Returns: nothing

  Removes metadata tags from an Amazon RDS resource.

For an overview on tagging an Amazon RDS resource, see Tagging Amazon
RDS Resources.


=head2 ResetDBClusterParameterGroup(DBClusterParameterGroupName => Str, [Parameters => ArrayRef[L<Paws::RDS::Parameter>], ResetAllParameters => Bool])

Each argument is described in detail in: L<Paws::RDS::ResetDBClusterParameterGroup>

Returns: a L<Paws::RDS::DBClusterParameterGroupNameMessage> instance

  Modifies the parameters of a DB cluster parameter group to the default
value. To reset specific parameters submit a list of the following:
C<ParameterName> and C<ApplyMethod>. To reset the entire DB cluster
parameter group, specify the C<DBClusterParameterGroupName> and
C<ResetAllParameters> parameters.

When resetting the entire group, dynamic parameters are updated
immediately and static parameters are set to C<pending-reboot> to take
effect on the next DB instance restart or RebootDBInstance request. You
must call RebootDBInstance for every DB instance in your DB cluster
that you want the updated static parameter to apply to.

For more information on Amazon Aurora, see Aurora on Amazon RDS in the
I<Amazon RDS User Guide.>


=head2 ResetDBParameterGroup(DBParameterGroupName => Str, [Parameters => ArrayRef[L<Paws::RDS::Parameter>], ResetAllParameters => Bool])

Each argument is described in detail in: L<Paws::RDS::ResetDBParameterGroup>

Returns: a L<Paws::RDS::DBParameterGroupNameMessage> instance

  Modifies the parameters of a DB parameter group to the engine/system
default value. To reset specific parameters submit a list of the
following: C<ParameterName> and C<ApplyMethod>. To reset the entire DB
parameter group, specify the C<DBParameterGroup> name and
C<ResetAllParameters> parameters. When resetting the entire group,
dynamic parameters are updated immediately and static parameters are
set to C<pending-reboot> to take effect on the next DB instance restart
or C<RebootDBInstance> request.


=head2 RestoreDBClusterFromS3(DBClusterIdentifier => Str, Engine => Str, MasterUsername => Str, MasterUserPassword => Str, S3BucketName => Str, S3IngestionRoleArn => Str, SourceEngine => Str, SourceEngineVersion => Str, [AvailabilityZones => ArrayRef[Str|Undef], BackupRetentionPeriod => Int, CharacterSetName => Str, DatabaseName => Str, DBClusterParameterGroupName => Str, DBSubnetGroupName => Str, EngineVersion => Str, KmsKeyId => Str, OptionGroupName => Str, Port => Int, PreferredBackupWindow => Str, PreferredMaintenanceWindow => Str, S3Prefix => Str, StorageEncrypted => Bool, Tags => ArrayRef[L<Paws::RDS::Tag>], VpcSecurityGroupIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::RDS::RestoreDBClusterFromS3>

Returns: a L<Paws::RDS::RestoreDBClusterFromS3Result> instance

  Creates an Amazon Aurora DB cluster from data stored in an Amazon S3
bucket. Amazon RDS must be authorized to access the Amazon S3 bucket
and the data must be created using the Percona XtraBackup utility as
described in Migrating Data from MySQL by Using an Amazon S3 Bucket.


=head2 RestoreDBClusterFromSnapshot(DBClusterIdentifier => Str, Engine => Str, SnapshotIdentifier => Str, [AvailabilityZones => ArrayRef[Str|Undef], DatabaseName => Str, DBSubnetGroupName => Str, EngineVersion => Str, KmsKeyId => Str, OptionGroupName => Str, Port => Int, Tags => ArrayRef[L<Paws::RDS::Tag>], VpcSecurityGroupIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::RDS::RestoreDBClusterFromSnapshot>

Returns: a L<Paws::RDS::RestoreDBClusterFromSnapshotResult> instance

  Creates a new DB cluster from a DB cluster snapshot. The target DB
cluster is created from the source DB cluster restore point with the
same configuration as the original source DB cluster, except that the
new DB cluster is created with the default security group.

For more information on Amazon Aurora, see Aurora on Amazon RDS in the
I<Amazon RDS User Guide.>


=head2 RestoreDBClusterToPointInTime(DBClusterIdentifier => Str, SourceDBClusterIdentifier => Str, [DBSubnetGroupName => Str, KmsKeyId => Str, OptionGroupName => Str, Port => Int, RestoreToTime => Str, Tags => ArrayRef[L<Paws::RDS::Tag>], UseLatestRestorableTime => Bool, VpcSecurityGroupIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::RDS::RestoreDBClusterToPointInTime>

Returns: a L<Paws::RDS::RestoreDBClusterToPointInTimeResult> instance

  Restores a DB cluster to an arbitrary point in time. Users can restore
to any point in time before C<LatestRestorableTime> for up to
C<BackupRetentionPeriod> days. The target DB cluster is created from
the source DB cluster with the same configuration as the original DB
cluster, except that the new DB cluster is created with the default DB
security group.

For more information on Amazon Aurora, see Aurora on Amazon RDS in the
I<Amazon RDS User Guide.>


=head2 RestoreDBInstanceFromDBSnapshot(DBInstanceIdentifier => Str, DBSnapshotIdentifier => Str, [AutoMinorVersionUpgrade => Bool, AvailabilityZone => Str, CopyTagsToSnapshot => Bool, DBInstanceClass => Str, DBName => Str, DBSubnetGroupName => Str, Domain => Str, DomainIAMRoleName => Str, Engine => Str, Iops => Int, LicenseModel => Str, MultiAZ => Bool, OptionGroupName => Str, Port => Int, PubliclyAccessible => Bool, StorageType => Str, Tags => ArrayRef[L<Paws::RDS::Tag>], TdeCredentialArn => Str, TdeCredentialPassword => Str])

Each argument is described in detail in: L<Paws::RDS::RestoreDBInstanceFromDBSnapshot>

Returns: a L<Paws::RDS::RestoreDBInstanceFromDBSnapshotResult> instance

  Creates a new DB instance from a DB snapshot. The target database is
created from the source database restore point with the most of
original configuration with the default security group and the default
DB parameter group. By default, the new DB instance is created as a
single-AZ deployment except when the instance is a SQL Server instance
that has an option group that is associated with mirroring; in this
case, the instance becomes a mirrored AZ deployment and not a single-AZ
deployment.

If your intent is to replace your original DB instance with the new,
restored DB instance, then rename your original DB instance before you
call the RestoreDBInstanceFromDBSnapshot action. RDS does not allow two
DB instances with the same name. Once you have renamed your original DB
instance with a different identifier, then you can pass the original
name of the DB instance as the DBInstanceIdentifier in the call to the
RestoreDBInstanceFromDBSnapshot action. The result is that you will
replace the original DB instance with the DB instance created from the
snapshot.

If you are restoring from a shared manual DB snapshot, the
C<DBSnapshotIdentifier> must be the ARN of the shared DB snapshot.


=head2 RestoreDBInstanceToPointInTime(SourceDBInstanceIdentifier => Str, TargetDBInstanceIdentifier => Str, [AutoMinorVersionUpgrade => Bool, AvailabilityZone => Str, CopyTagsToSnapshot => Bool, DBInstanceClass => Str, DBName => Str, DBSubnetGroupName => Str, Domain => Str, DomainIAMRoleName => Str, Engine => Str, Iops => Int, LicenseModel => Str, MultiAZ => Bool, OptionGroupName => Str, Port => Int, PubliclyAccessible => Bool, RestoreTime => Str, StorageType => Str, Tags => ArrayRef[L<Paws::RDS::Tag>], TdeCredentialArn => Str, TdeCredentialPassword => Str, UseLatestRestorableTime => Bool])

Each argument is described in detail in: L<Paws::RDS::RestoreDBInstanceToPointInTime>

Returns: a L<Paws::RDS::RestoreDBInstanceToPointInTimeResult> instance

  Restores a DB instance to an arbitrary point in time. You can restore
to any point in time before the time identified by the
LatestRestorableTime property. You can restore to a point up to the
number of days specified by the BackupRetentionPeriod property.

The target database is created with most of the original configuration,
but in a system-selected availability zone, with the default security
group, the default subnet group, and the default DB parameter group. By
default, the new DB instance is created as a single-AZ deployment
except when the instance is a SQL Server instance that has an option
group that is associated with mirroring; in this case, the instance
becomes a mirrored deployment and not a single-AZ deployment.


=head2 RevokeDBSecurityGroupIngress(DBSecurityGroupName => Str, [CIDRIP => Str, EC2SecurityGroupId => Str, EC2SecurityGroupName => Str, EC2SecurityGroupOwnerId => Str])

Each argument is described in detail in: L<Paws::RDS::RevokeDBSecurityGroupIngress>

Returns: a L<Paws::RDS::RevokeDBSecurityGroupIngressResult> instance

  Revokes ingress from a DBSecurityGroup for previously authorized IP
ranges or EC2 or VPC Security Groups. Required parameters for this API
are one of CIDRIP, EC2SecurityGroupId for VPC, or
(EC2SecurityGroupOwnerId and either EC2SecurityGroupName or
EC2SecurityGroupId).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllDBClusterSnapshots(sub { },[DBClusterIdentifier => Str, DBClusterSnapshotIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], IncludePublic => Bool, IncludeShared => Bool, Marker => Str, MaxRecords => Int, SnapshotType => Str])

=head2 DescribeAllDBClusterSnapshots([DBClusterIdentifier => Str, DBClusterSnapshotIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], IncludePublic => Bool, IncludeShared => Bool, Marker => Str, MaxRecords => Int, SnapshotType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBClusterSnapshots, passing the object as the first parameter, and the string 'DBClusterSnapshots' as the second parameter 

If not, it will return a a L<Paws::RDS::DBClusterSnapshotMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBEngineVersions(sub { },[DBParameterGroupFamily => Str, DefaultOnly => Bool, Engine => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], ListSupportedCharacterSets => Bool, ListSupportedTimezones => Bool, Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBEngineVersions([DBParameterGroupFamily => Str, DefaultOnly => Bool, Engine => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], ListSupportedCharacterSets => Bool, ListSupportedTimezones => Bool, Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBEngineVersions, passing the object as the first parameter, and the string 'DBEngineVersions' as the second parameter 

If not, it will return a a L<Paws::RDS::DBEngineVersionMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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


=head2 DescribeAllDBSecurityGroups(sub { },[DBSecurityGroupName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBSecurityGroups([DBSecurityGroupName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBSecurityGroups, passing the object as the first parameter, and the string 'DBSecurityGroups' as the second parameter 

If not, it will return a a L<Paws::RDS::DBSecurityGroupMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBSnapshots(sub { },[DBInstanceIdentifier => Str, DBSnapshotIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], IncludePublic => Bool, IncludeShared => Bool, Marker => Str, MaxRecords => Int, SnapshotType => Str])

=head2 DescribeAllDBSnapshots([DBInstanceIdentifier => Str, DBSnapshotIdentifier => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], IncludePublic => Bool, IncludeShared => Bool, Marker => Str, MaxRecords => Int, SnapshotType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBSnapshots, passing the object as the first parameter, and the string 'DBSnapshots' as the second parameter 

If not, it will return a a L<Paws::RDS::DBSnapshotMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBSubnetGroups(sub { },[DBSubnetGroupName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBSubnetGroups([DBSubnetGroupName => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBSubnetGroups, passing the object as the first parameter, and the string 'DBSubnetGroups' as the second parameter 

If not, it will return a a L<Paws::RDS::DBSubnetGroupMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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


=head2 DescribeAllOrderableDBInstanceOptions(sub { },Engine => Str, [DBInstanceClass => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], LicenseModel => Str, Marker => Str, MaxRecords => Int, Vpc => Bool])

=head2 DescribeAllOrderableDBInstanceOptions(Engine => Str, [DBInstanceClass => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], LicenseModel => Str, Marker => Str, MaxRecords => Int, Vpc => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OrderableDBInstanceOptions, passing the object as the first parameter, and the string 'OrderableDBInstanceOptions' as the second parameter 

If not, it will return a a L<Paws::RDS::OrderableDBInstanceOptionsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReservedDBInstances(sub { },[DBInstanceClass => Str, Duration => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, MultiAZ => Bool, OfferingType => Str, ProductDescription => Str, ReservedDBInstanceId => Str, ReservedDBInstancesOfferingId => Str])

=head2 DescribeAllReservedDBInstances([DBInstanceClass => Str, Duration => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, MultiAZ => Bool, OfferingType => Str, ProductDescription => Str, ReservedDBInstanceId => Str, ReservedDBInstancesOfferingId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReservedDBInstances, passing the object as the first parameter, and the string 'ReservedDBInstances' as the second parameter 

If not, it will return a a L<Paws::RDS::ReservedDBInstanceMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReservedDBInstancesOfferings(sub { },[DBInstanceClass => Str, Duration => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, MultiAZ => Bool, OfferingType => Str, ProductDescription => Str, ReservedDBInstancesOfferingId => Str])

=head2 DescribeAllReservedDBInstancesOfferings([DBInstanceClass => Str, Duration => Str, Filters => ArrayRef[L<Paws::RDS::Filter>], Marker => Str, MaxRecords => Int, MultiAZ => Bool, OfferingType => Str, ProductDescription => Str, ReservedDBInstancesOfferingId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReservedDBInstancesOfferings, passing the object as the first parameter, and the string 'ReservedDBInstancesOfferings' as the second parameter 

If not, it will return a a L<Paws::RDS::ReservedDBInstancesOfferingMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DownloadAllDBLogFilePortions(sub { },DBInstanceIdentifier => Str, LogFileName => Str, [Marker => Str, NumberOfLines => Int])

=head2 DownloadAllDBLogFilePortions(DBInstanceIdentifier => Str, LogFileName => Str, [Marker => Str, NumberOfLines => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LogFileData, passing the object as the first parameter, and the string 'LogFileData' as the second parameter 

If not, it will return a a L<Paws::RDS::DownloadDBLogFilePortionDetails> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

