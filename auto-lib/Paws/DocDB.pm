package Paws::DocDB;
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

  
  sub AddSourceIdentifierToSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::AddSourceIdentifierToSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddTagsToResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::AddTagsToResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ApplyPendingMaintenanceAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::ApplyPendingMaintenanceAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyDBClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::CopyDBClusterParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyDBClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::CopyDBClusterSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::CreateDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::CreateDBClusterParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::CreateDBClusterSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::CreateDBInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::CreateDBSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::CreateEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGlobalCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::CreateGlobalCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DeleteDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DeleteDBClusterParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DeleteDBClusterSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DeleteDBInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DeleteDBSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DeleteEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGlobalCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DeleteGlobalCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DescribeCertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBClusterParameterGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DescribeDBClusterParameterGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBClusterParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DescribeDBClusterParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DescribeDBClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBClusterSnapshotAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DescribeDBClusterSnapshotAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBClusterSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DescribeDBClusterSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBEngineVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DescribeDBEngineVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DescribeDBInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBSubnetGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DescribeDBSubnetGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEngineDefaultClusterParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DescribeEngineDefaultClusterParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventCategories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DescribeEventCategories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DescribeEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventSubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DescribeEventSubscriptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGlobalClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DescribeGlobalClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrderableDBInstanceOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DescribeOrderableDBInstanceOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePendingMaintenanceActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::DescribePendingMaintenanceActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub FailoverDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::FailoverDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::ModifyDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::ModifyDBClusterParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBClusterSnapshotAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::ModifyDBClusterSnapshotAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::ModifyDBInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::ModifyDBSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::ModifyEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyGlobalCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::ModifyGlobalCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootDBInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::RebootDBInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveFromGlobalCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::RemoveFromGlobalCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveSourceIdentifierFromSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::RemoveSourceIdentifierFromSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTagsFromResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::RemoveTagsFromResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetDBClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::ResetDBClusterParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreDBClusterFromSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::RestoreDBClusterFromSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreDBClusterToPointInTime {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::RestoreDBClusterToPointInTime', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::StartDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::StopDBCluster', @_);
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


  sub operations { qw/AddSourceIdentifierToSubscription AddTagsToResource ApplyPendingMaintenanceAction CopyDBClusterParameterGroup CopyDBClusterSnapshot CreateDBCluster CreateDBClusterParameterGroup CreateDBClusterSnapshot CreateDBInstance CreateDBSubnetGroup CreateEventSubscription CreateGlobalCluster DeleteDBCluster DeleteDBClusterParameterGroup DeleteDBClusterSnapshot DeleteDBInstance DeleteDBSubnetGroup DeleteEventSubscription DeleteGlobalCluster DescribeCertificates DescribeDBClusterParameterGroups DescribeDBClusterParameters DescribeDBClusters DescribeDBClusterSnapshotAttributes DescribeDBClusterSnapshots DescribeDBEngineVersions DescribeDBInstances DescribeDBSubnetGroups DescribeEngineDefaultClusterParameters DescribeEventCategories DescribeEvents DescribeEventSubscriptions DescribeGlobalClusters DescribeOrderableDBInstanceOptions DescribePendingMaintenanceActions FailoverDBCluster ListTagsForResource ModifyDBCluster ModifyDBClusterParameterGroup ModifyDBClusterSnapshotAttribute ModifyDBInstance ModifyDBSubnetGroup ModifyEventSubscription ModifyGlobalCluster RebootDBInstance RemoveFromGlobalCluster RemoveSourceIdentifierFromSubscription RemoveTagsFromResource ResetDBClusterParameterGroup RestoreDBClusterFromSnapshot RestoreDBClusterToPointInTime StartDBCluster StopDBCluster / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB - Perl Interface to AWS Amazon DocumentDB with MongoDB compatibility

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('DocDB');
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

Amazon DocumentDB API documentation

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31>


=head1 METHODS

=head2 AddSourceIdentifierToSubscription

=over

=item SourceIdentifier => Str

=item SubscriptionName => Str


=back

Each argument is described in detail in: L<Paws::DocDB::AddSourceIdentifierToSubscription>

Returns: a L<Paws::DocDB::AddSourceIdentifierToSubscriptionResult> instance

Adds a source identifier to an existing event notification
subscription.


=head2 AddTagsToResource

=over

=item ResourceName => Str

=item Tags => ArrayRef[L<Paws::DocDB::Tag>]


=back

Each argument is described in detail in: L<Paws::DocDB::AddTagsToResource>

Returns: nothing

Adds metadata tags to an Amazon DocumentDB resource. You can use these
tags with cost allocation reporting to track costs that are associated
with Amazon DocumentDB resources or in a C<Condition> statement in an
Identity and Access Management (IAM) policy for Amazon DocumentDB.


=head2 ApplyPendingMaintenanceAction

=over

=item ApplyAction => Str

=item OptInType => Str

=item ResourceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DocDB::ApplyPendingMaintenanceAction>

Returns: a L<Paws::DocDB::ApplyPendingMaintenanceActionResult> instance

Applies a pending maintenance action to a resource (for example, to an
Amazon DocumentDB instance).


=head2 CopyDBClusterParameterGroup

=over

=item SourceDBClusterParameterGroupIdentifier => Str

=item TargetDBClusterParameterGroupDescription => Str

=item TargetDBClusterParameterGroupIdentifier => Str

=item [Tags => ArrayRef[L<Paws::DocDB::Tag>]]


=back

Each argument is described in detail in: L<Paws::DocDB::CopyDBClusterParameterGroup>

Returns: a L<Paws::DocDB::CopyDBClusterParameterGroupResult> instance

Copies the specified cluster parameter group.


=head2 CopyDBClusterSnapshot

=over

=item SourceDBClusterSnapshotIdentifier => Str

=item TargetDBClusterSnapshotIdentifier => Str

=item [CopyTags => Bool]

=item [KmsKeyId => Str]

=item [PreSignedUrl => Str]

=item [Tags => ArrayRef[L<Paws::DocDB::Tag>]]


=back

Each argument is described in detail in: L<Paws::DocDB::CopyDBClusterSnapshot>

Returns: a L<Paws::DocDB::CopyDBClusterSnapshotResult> instance

Copies a snapshot of a cluster.

To copy a cluster snapshot from a shared manual cluster snapshot,
C<SourceDBClusterSnapshotIdentifier> must be the Amazon Resource Name
(ARN) of the shared cluster snapshot. You can only copy a shared DB
cluster snapshot, whether encrypted or not, in the same Region.

To cancel the copy operation after it is in progress, delete the target
cluster snapshot identified by C<TargetDBClusterSnapshotIdentifier>
while that cluster snapshot is in the I<copying> status.


=head2 CreateDBCluster

=over

=item DBClusterIdentifier => Str

=item Engine => Str

=item [AvailabilityZones => ArrayRef[Str|Undef]]

=item [BackupRetentionPeriod => Int]

=item [DBClusterParameterGroupName => Str]

=item [DBSubnetGroupName => Str]

=item [DeletionProtection => Bool]

=item [EnableCloudwatchLogsExports => ArrayRef[Str|Undef]]

=item [EngineVersion => Str]

=item [GlobalClusterIdentifier => Str]

=item [KmsKeyId => Str]

=item [MasterUsername => Str]

=item [MasterUserPassword => Str]

=item [Port => Int]

=item [PreferredBackupWindow => Str]

=item [PreferredMaintenanceWindow => Str]

=item [PreSignedUrl => Str]

=item [StorageEncrypted => Bool]

=item [Tags => ArrayRef[L<Paws::DocDB::Tag>]]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DocDB::CreateDBCluster>

Returns: a L<Paws::DocDB::CreateDBClusterResult> instance

Creates a new Amazon DocumentDB cluster.


=head2 CreateDBClusterParameterGroup

=over

=item DBClusterParameterGroupName => Str

=item DBParameterGroupFamily => Str

=item Description => Str

=item [Tags => ArrayRef[L<Paws::DocDB::Tag>]]


=back

Each argument is described in detail in: L<Paws::DocDB::CreateDBClusterParameterGroup>

Returns: a L<Paws::DocDB::CreateDBClusterParameterGroupResult> instance

Creates a new cluster parameter group.

Parameters in a cluster parameter group apply to all of the instances
in a cluster.

A cluster parameter group is initially created with the default
parameters for the database engine used by instances in the cluster. In
Amazon DocumentDB, you cannot make modifications directly to the
C<default.docdb3.6> cluster parameter group. If your Amazon DocumentDB
cluster is using the default cluster parameter group and you want to
modify a value in it, you must first create a new parameter group
(https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-create.html)
or copy an existing parameter group
(https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-copy.html),
modify it, and then apply the modified parameter group to your cluster.
For the new cluster parameter group and associated settings to take
effect, you must then reboot the instances in the cluster without
failover. For more information, see Modifying Amazon DocumentDB Cluster
Parameter Groups
(https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-modify.html).


=head2 CreateDBClusterSnapshot

=over

=item DBClusterIdentifier => Str

=item DBClusterSnapshotIdentifier => Str

=item [Tags => ArrayRef[L<Paws::DocDB::Tag>]]


=back

Each argument is described in detail in: L<Paws::DocDB::CreateDBClusterSnapshot>

Returns: a L<Paws::DocDB::CreateDBClusterSnapshotResult> instance

Creates a snapshot of a cluster.


=head2 CreateDBInstance

=over

=item DBClusterIdentifier => Str

=item DBInstanceClass => Str

=item DBInstanceIdentifier => Str

=item Engine => Str

=item [AutoMinorVersionUpgrade => Bool]

=item [AvailabilityZone => Str]

=item [PreferredMaintenanceWindow => Str]

=item [PromotionTier => Int]

=item [Tags => ArrayRef[L<Paws::DocDB::Tag>]]


=back

Each argument is described in detail in: L<Paws::DocDB::CreateDBInstance>

Returns: a L<Paws::DocDB::CreateDBInstanceResult> instance

Creates a new instance.


=head2 CreateDBSubnetGroup

=over

=item DBSubnetGroupDescription => Str

=item DBSubnetGroupName => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [Tags => ArrayRef[L<Paws::DocDB::Tag>]]


=back

Each argument is described in detail in: L<Paws::DocDB::CreateDBSubnetGroup>

Returns: a L<Paws::DocDB::CreateDBSubnetGroupResult> instance

Creates a new subnet group. subnet groups must contain at least one
subnet in at least two Availability Zones in the Region.


=head2 CreateEventSubscription

=over

=item SnsTopicArn => Str

=item SubscriptionName => Str

=item [Enabled => Bool]

=item [EventCategories => ArrayRef[Str|Undef]]

=item [SourceIds => ArrayRef[Str|Undef]]

=item [SourceType => Str]

=item [Tags => ArrayRef[L<Paws::DocDB::Tag>]]


=back

Each argument is described in detail in: L<Paws::DocDB::CreateEventSubscription>

Returns: a L<Paws::DocDB::CreateEventSubscriptionResult> instance

Creates an Amazon DocumentDB event notification subscription. This
action requires a topic Amazon Resource Name (ARN) created by using the
Amazon DocumentDB console, the Amazon SNS console, or the Amazon SNS
API. To obtain an ARN with Amazon SNS, you must create a topic in
Amazon SNS and subscribe to the topic. The ARN is displayed in the
Amazon SNS console.

You can specify the type of source (C<SourceType>) that you want to be
notified of. You can also provide a list of Amazon DocumentDB sources
(C<SourceIds>) that trigger the events, and you can provide a list of
event categories (C<EventCategories>) for events that you want to be
notified of. For example, you can specify C<SourceType = db-instance>,
C<SourceIds = mydbinstance1, mydbinstance2> and C<EventCategories =
Availability, Backup>.

If you specify both the C<SourceType> and C<SourceIds> (such as
C<SourceType = db-instance> and C<SourceIdentifier = myDBInstance1>),
you are notified of all the C<db-instance> events for the specified
source. If you specify a C<SourceType> but do not specify a
C<SourceIdentifier>, you receive notice of the events for that source
type for all your Amazon DocumentDB sources. If you do not specify
either the C<SourceType> or the C<SourceIdentifier>, you are notified
of events generated from all Amazon DocumentDB sources belonging to
your customer account.


=head2 CreateGlobalCluster

=over

=item GlobalClusterIdentifier => Str

=item [DatabaseName => Str]

=item [DeletionProtection => Bool]

=item [Engine => Str]

=item [EngineVersion => Str]

=item [SourceDBClusterIdentifier => Str]

=item [StorageEncrypted => Bool]


=back

Each argument is described in detail in: L<Paws::DocDB::CreateGlobalCluster>

Returns: a L<Paws::DocDB::CreateGlobalClusterResult> instance

Creates an Amazon DocumentDB global cluster that can span multiple
multiple Regions. The global cluster contains one primary cluster with
read-write capability, and up-to give read-only secondary clusters.
Global clusters uses storage-based fast replication across regions with
latencies less than one second, using dedicated infrastructure with no
impact to your workloadE<rsquo>s performance.

You can create a global cluster that is initially empty, and then add a
primary and a secondary to it. Or you can specify an existing cluster
during the create operation, and this cluster becomes the primary of
the global cluster.

This action only applies to Amazon DocumentDB clusters.


=head2 DeleteDBCluster

=over

=item DBClusterIdentifier => Str

=item [FinalDBSnapshotIdentifier => Str]

=item [SkipFinalSnapshot => Bool]


=back

Each argument is described in detail in: L<Paws::DocDB::DeleteDBCluster>

Returns: a L<Paws::DocDB::DeleteDBClusterResult> instance

Deletes a previously provisioned cluster. When you delete a cluster,
all automated backups for that cluster are deleted and can't be
recovered. Manual DB cluster snapshots of the specified cluster are not
deleted.


=head2 DeleteDBClusterParameterGroup

=over

=item DBClusterParameterGroupName => Str


=back

Each argument is described in detail in: L<Paws::DocDB::DeleteDBClusterParameterGroup>

Returns: nothing

Deletes a specified cluster parameter group. The cluster parameter
group to be deleted can't be associated with any clusters.


=head2 DeleteDBClusterSnapshot

=over

=item DBClusterSnapshotIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DocDB::DeleteDBClusterSnapshot>

Returns: a L<Paws::DocDB::DeleteDBClusterSnapshotResult> instance

Deletes a cluster snapshot. If the snapshot is being copied, the copy
operation is terminated.

The cluster snapshot must be in the C<available> state to be deleted.


=head2 DeleteDBInstance

=over

=item DBInstanceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DocDB::DeleteDBInstance>

Returns: a L<Paws::DocDB::DeleteDBInstanceResult> instance

Deletes a previously provisioned instance.


=head2 DeleteDBSubnetGroup

=over

=item DBSubnetGroupName => Str


=back

Each argument is described in detail in: L<Paws::DocDB::DeleteDBSubnetGroup>

Returns: nothing

Deletes a subnet group.

The specified database subnet group must not be associated with any DB
instances.


=head2 DeleteEventSubscription

=over

=item SubscriptionName => Str


=back

Each argument is described in detail in: L<Paws::DocDB::DeleteEventSubscription>

Returns: a L<Paws::DocDB::DeleteEventSubscriptionResult> instance

Deletes an Amazon DocumentDB event notification subscription.


=head2 DeleteGlobalCluster

=over

=item GlobalClusterIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DocDB::DeleteGlobalCluster>

Returns: a L<Paws::DocDB::DeleteGlobalClusterResult> instance

Deletes a global cluster. The primary and secondary clusters must
already be detached or deleted before attempting to delete a global
cluster.

This action only applies to Amazon DocumentDB clusters.


=head2 DescribeCertificates

=over

=item [CertificateIdentifier => Str]

=item [Filters => ArrayRef[L<Paws::DocDB::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DocDB::DescribeCertificates>

Returns: a L<Paws::DocDB::CertificateMessage> instance

Returns a list of certificate authority (CA) certificates provided by
Amazon DocumentDB for this account.


=head2 DescribeDBClusterParameterGroups

=over

=item [DBClusterParameterGroupName => Str]

=item [Filters => ArrayRef[L<Paws::DocDB::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DocDB::DescribeDBClusterParameterGroups>

Returns: a L<Paws::DocDB::DBClusterParameterGroupsMessage> instance

Returns a list of C<DBClusterParameterGroup> descriptions. If a
C<DBClusterParameterGroupName> parameter is specified, the list
contains only the description of the specified cluster parameter group.


=head2 DescribeDBClusterParameters

=over

=item DBClusterParameterGroupName => Str

=item [Filters => ArrayRef[L<Paws::DocDB::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [Source => Str]


=back

Each argument is described in detail in: L<Paws::DocDB::DescribeDBClusterParameters>

Returns: a L<Paws::DocDB::DBClusterParameterGroupDetails> instance

Returns the detailed parameter list for a particular cluster parameter
group.


=head2 DescribeDBClusters

=over

=item [DBClusterIdentifier => Str]

=item [Filters => ArrayRef[L<Paws::DocDB::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DocDB::DescribeDBClusters>

Returns: a L<Paws::DocDB::DBClusterMessage> instance

Returns information about provisioned Amazon DocumentDB clusters. This
API operation supports pagination. For certain management features such
as cluster and instance lifecycle management, Amazon DocumentDB
leverages operational technology that is shared with Amazon RDS and
Amazon Neptune. Use the C<filterName=engine,Values=docdb> filter
parameter to return only Amazon DocumentDB clusters.


=head2 DescribeDBClusterSnapshotAttributes

=over

=item DBClusterSnapshotIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DocDB::DescribeDBClusterSnapshotAttributes>

Returns: a L<Paws::DocDB::DescribeDBClusterSnapshotAttributesResult> instance

Returns a list of cluster snapshot attribute names and values for a
manual DB cluster snapshot.

When you share snapshots with other accounts,
C<DescribeDBClusterSnapshotAttributes> returns the C<restore> attribute
and a list of IDs for the accounts that are authorized to copy or
restore the manual cluster snapshot. If C<all> is included in the list
of values for the C<restore> attribute, then the manual cluster
snapshot is public and can be copied or restored by all accounts.


=head2 DescribeDBClusterSnapshots

=over

=item [DBClusterIdentifier => Str]

=item [DBClusterSnapshotIdentifier => Str]

=item [Filters => ArrayRef[L<Paws::DocDB::Filter>]]

=item [IncludePublic => Bool]

=item [IncludeShared => Bool]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [SnapshotType => Str]


=back

Each argument is described in detail in: L<Paws::DocDB::DescribeDBClusterSnapshots>

Returns: a L<Paws::DocDB::DBClusterSnapshotMessage> instance

Returns information about cluster snapshots. This API operation
supports pagination.


=head2 DescribeDBEngineVersions

=over

=item [DBParameterGroupFamily => Str]

=item [DefaultOnly => Bool]

=item [Engine => Str]

=item [EngineVersion => Str]

=item [Filters => ArrayRef[L<Paws::DocDB::Filter>]]

=item [ListSupportedCharacterSets => Bool]

=item [ListSupportedTimezones => Bool]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DocDB::DescribeDBEngineVersions>

Returns: a L<Paws::DocDB::DBEngineVersionMessage> instance

Returns a list of the available engines.


=head2 DescribeDBInstances

=over

=item [DBInstanceIdentifier => Str]

=item [Filters => ArrayRef[L<Paws::DocDB::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DocDB::DescribeDBInstances>

Returns: a L<Paws::DocDB::DBInstanceMessage> instance

Returns information about provisioned Amazon DocumentDB instances. This
API supports pagination.


=head2 DescribeDBSubnetGroups

=over

=item [DBSubnetGroupName => Str]

=item [Filters => ArrayRef[L<Paws::DocDB::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DocDB::DescribeDBSubnetGroups>

Returns: a L<Paws::DocDB::DBSubnetGroupMessage> instance

Returns a list of C<DBSubnetGroup> descriptions. If a
C<DBSubnetGroupName> is specified, the list will contain only the
descriptions of the specified C<DBSubnetGroup>.


=head2 DescribeEngineDefaultClusterParameters

=over

=item DBParameterGroupFamily => Str

=item [Filters => ArrayRef[L<Paws::DocDB::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DocDB::DescribeEngineDefaultClusterParameters>

Returns: a L<Paws::DocDB::DescribeEngineDefaultClusterParametersResult> instance

Returns the default engine and system parameter information for the
cluster database engine.


=head2 DescribeEventCategories

=over

=item [Filters => ArrayRef[L<Paws::DocDB::Filter>]]

=item [SourceType => Str]


=back

Each argument is described in detail in: L<Paws::DocDB::DescribeEventCategories>

Returns: a L<Paws::DocDB::EventCategoriesMessage> instance

Displays a list of categories for all event source types, or, if
specified, for a specified source type.


=head2 DescribeEvents

=over

=item [Duration => Int]

=item [EndTime => Str]

=item [EventCategories => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::DocDB::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [SourceIdentifier => Str]

=item [SourceType => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::DocDB::DescribeEvents>

Returns: a L<Paws::DocDB::EventsMessage> instance

Returns events related to instances, security groups, snapshots, and DB
parameter groups for the past 14 days. You can obtain events specific
to a particular DB instance, security group, snapshot, or parameter
group by providing the name as a parameter. By default, the events of
the past hour are returned.


=head2 DescribeEventSubscriptions

=over

=item [Filters => ArrayRef[L<Paws::DocDB::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [SubscriptionName => Str]


=back

Each argument is described in detail in: L<Paws::DocDB::DescribeEventSubscriptions>

Returns: a L<Paws::DocDB::EventSubscriptionsMessage> instance

Lists all the subscription descriptions for a customer account. The
description for a subscription includes C<SubscriptionName>,
C<SNSTopicARN>, C<CustomerID>, C<SourceType>, C<SourceID>,
C<CreationTime>, and C<Status>.

If you specify a C<SubscriptionName>, lists the description for that
subscription.


=head2 DescribeGlobalClusters

=over

=item [Filters => ArrayRef[L<Paws::DocDB::Filter>]]

=item [GlobalClusterIdentifier => Str]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DocDB::DescribeGlobalClusters>

Returns: a L<Paws::DocDB::GlobalClustersMessage> instance

Returns information about Amazon DocumentDB global clusters. This API
supports pagination.

This action only applies to Amazon DocumentDB clusters.


=head2 DescribeOrderableDBInstanceOptions

=over

=item Engine => Str

=item [DBInstanceClass => Str]

=item [EngineVersion => Str]

=item [Filters => ArrayRef[L<Paws::DocDB::Filter>]]

=item [LicenseModel => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [Vpc => Bool]


=back

Each argument is described in detail in: L<Paws::DocDB::DescribeOrderableDBInstanceOptions>

Returns: a L<Paws::DocDB::OrderableDBInstanceOptionsMessage> instance

Returns a list of orderable instance options for the specified engine.


=head2 DescribePendingMaintenanceActions

=over

=item [Filters => ArrayRef[L<Paws::DocDB::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [ResourceIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::DocDB::DescribePendingMaintenanceActions>

Returns: a L<Paws::DocDB::PendingMaintenanceActionsMessage> instance

Returns a list of resources (for example, instances) that have at least
one pending maintenance action.


=head2 FailoverDBCluster

=over

=item [DBClusterIdentifier => Str]

=item [TargetDBInstanceIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::DocDB::FailoverDBCluster>

Returns: a L<Paws::DocDB::FailoverDBClusterResult> instance

Forces a failover for a cluster.

A failover for a cluster promotes one of the Amazon DocumentDB replicas
(read-only instances) in the cluster to be the primary instance (the
cluster writer).

If the primary instance fails, Amazon DocumentDB automatically fails
over to an Amazon DocumentDB replica, if one exists. You can force a
failover when you want to simulate a failure of a primary instance for
testing.


=head2 ListTagsForResource

=over

=item ResourceName => Str

=item [Filters => ArrayRef[L<Paws::DocDB::Filter>]]


=back

Each argument is described in detail in: L<Paws::DocDB::ListTagsForResource>

Returns: a L<Paws::DocDB::TagListMessage> instance

Lists all tags on an Amazon DocumentDB resource.


=head2 ModifyDBCluster

=over

=item DBClusterIdentifier => Str

=item [ApplyImmediately => Bool]

=item [BackupRetentionPeriod => Int]

=item [CloudwatchLogsExportConfiguration => L<Paws::DocDB::CloudwatchLogsExportConfiguration>]

=item [DBClusterParameterGroupName => Str]

=item [DeletionProtection => Bool]

=item [EngineVersion => Str]

=item [MasterUserPassword => Str]

=item [NewDBClusterIdentifier => Str]

=item [Port => Int]

=item [PreferredBackupWindow => Str]

=item [PreferredMaintenanceWindow => Str]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DocDB::ModifyDBCluster>

Returns: a L<Paws::DocDB::ModifyDBClusterResult> instance

Modifies a setting for an Amazon DocumentDB cluster. You can change one
or more database configuration parameters by specifying these
parameters and the new values in the request.


=head2 ModifyDBClusterParameterGroup

=over

=item DBClusterParameterGroupName => Str

=item Parameters => ArrayRef[L<Paws::DocDB::Parameter>]


=back

Each argument is described in detail in: L<Paws::DocDB::ModifyDBClusterParameterGroup>

Returns: a L<Paws::DocDB::DBClusterParameterGroupNameMessage> instance

Modifies the parameters of a cluster parameter group. To modify more
than one parameter, submit a list of the following: C<ParameterName>,
C<ParameterValue>, and C<ApplyMethod>. A maximum of 20 parameters can
be modified in a single request.

Changes to dynamic parameters are applied immediately. Changes to
static parameters require a reboot or maintenance window before the
change can take effect.

After you create a cluster parameter group, you should wait at least 5
minutes before creating your first cluster that uses that cluster
parameter group as the default parameter group. This allows Amazon
DocumentDB to fully complete the create action before the parameter
group is used as the default for a new cluster. This step is especially
important for parameters that are critical when creating the default
database for a cluster, such as the character set for the default
database defined by the C<character_set_database> parameter.


=head2 ModifyDBClusterSnapshotAttribute

=over

=item AttributeName => Str

=item DBClusterSnapshotIdentifier => Str

=item [ValuesToAdd => ArrayRef[Str|Undef]]

=item [ValuesToRemove => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DocDB::ModifyDBClusterSnapshotAttribute>

Returns: a L<Paws::DocDB::ModifyDBClusterSnapshotAttributeResult> instance

Adds an attribute and values to, or removes an attribute and values
from, a manual cluster snapshot.

To share a manual cluster snapshot with other accounts, specify
C<restore> as the C<AttributeName>, and use the C<ValuesToAdd>
parameter to add a list of IDs of the accounts that are authorized to
restore the manual cluster snapshot. Use the value C<all> to make the
manual cluster snapshot public, which means that it can be copied or
restored by all accounts. Do not add the C<all> value for any manual
cluster snapshots that contain private information that you don't want
available to all accounts. If a manual cluster snapshot is encrypted,
it can be shared, but only by specifying a list of authorized account
IDs for the C<ValuesToAdd> parameter. You can't use C<all> as a value
for that parameter in this case.


=head2 ModifyDBInstance

=over

=item DBInstanceIdentifier => Str

=item [ApplyImmediately => Bool]

=item [AutoMinorVersionUpgrade => Bool]

=item [CACertificateIdentifier => Str]

=item [DBInstanceClass => Str]

=item [NewDBInstanceIdentifier => Str]

=item [PreferredMaintenanceWindow => Str]

=item [PromotionTier => Int]


=back

Each argument is described in detail in: L<Paws::DocDB::ModifyDBInstance>

Returns: a L<Paws::DocDB::ModifyDBInstanceResult> instance

Modifies settings for an instance. You can change one or more database
configuration parameters by specifying these parameters and the new
values in the request.


=head2 ModifyDBSubnetGroup

=over

=item DBSubnetGroupName => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [DBSubnetGroupDescription => Str]


=back

Each argument is described in detail in: L<Paws::DocDB::ModifyDBSubnetGroup>

Returns: a L<Paws::DocDB::ModifyDBSubnetGroupResult> instance

Modifies an existing subnet group. subnet groups must contain at least
one subnet in at least two Availability Zones in the Region.


=head2 ModifyEventSubscription

=over

=item SubscriptionName => Str

=item [Enabled => Bool]

=item [EventCategories => ArrayRef[Str|Undef]]

=item [SnsTopicArn => Str]

=item [SourceType => Str]


=back

Each argument is described in detail in: L<Paws::DocDB::ModifyEventSubscription>

Returns: a L<Paws::DocDB::ModifyEventSubscriptionResult> instance

Modifies an existing Amazon DocumentDB event notification subscription.


=head2 ModifyGlobalCluster

=over

=item GlobalClusterIdentifier => Str

=item [DeletionProtection => Bool]

=item [NewGlobalClusterIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::DocDB::ModifyGlobalCluster>

Returns: a L<Paws::DocDB::ModifyGlobalClusterResult> instance

Modify a setting for an Amazon DocumentDB global cluster. You can
change one or more configuration parameters (for example: deletion
protection), or the global cluster identifier by specifying these
parameters and the new values in the request.

This action only applies to Amazon DocumentDB clusters.


=head2 RebootDBInstance

=over

=item DBInstanceIdentifier => Str

=item [ForceFailover => Bool]


=back

Each argument is described in detail in: L<Paws::DocDB::RebootDBInstance>

Returns: a L<Paws::DocDB::RebootDBInstanceResult> instance

You might need to reboot your instance, usually for maintenance
reasons. For example, if you make certain changes, or if you change the
cluster parameter group that is associated with the instance, you must
reboot the instance for the changes to take effect.

Rebooting an instance restarts the database engine service. Rebooting
an instance results in a momentary outage, during which the instance
status is set to I<rebooting>.


=head2 RemoveFromGlobalCluster

=over

=item DbClusterIdentifier => Str

=item GlobalClusterIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DocDB::RemoveFromGlobalCluster>

Returns: a L<Paws::DocDB::RemoveFromGlobalClusterResult> instance

Detaches an Amazon DocumentDB secondary cluster from a global cluster.
The cluster becomes a standalone cluster with read-write capability
instead of being read-only and receiving data from a primary in a
different region.

This action only applies to Amazon DocumentDB clusters.


=head2 RemoveSourceIdentifierFromSubscription

=over

=item SourceIdentifier => Str

=item SubscriptionName => Str


=back

Each argument is described in detail in: L<Paws::DocDB::RemoveSourceIdentifierFromSubscription>

Returns: a L<Paws::DocDB::RemoveSourceIdentifierFromSubscriptionResult> instance

Removes a source identifier from an existing Amazon DocumentDB event
notification subscription.


=head2 RemoveTagsFromResource

=over

=item ResourceName => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::DocDB::RemoveTagsFromResource>

Returns: nothing

Removes metadata tags from an Amazon DocumentDB resource.


=head2 ResetDBClusterParameterGroup

=over

=item DBClusterParameterGroupName => Str

=item [Parameters => ArrayRef[L<Paws::DocDB::Parameter>]]

=item [ResetAllParameters => Bool]


=back

Each argument is described in detail in: L<Paws::DocDB::ResetDBClusterParameterGroup>

Returns: a L<Paws::DocDB::DBClusterParameterGroupNameMessage> instance

Modifies the parameters of a cluster parameter group to the default
value. To reset specific parameters, submit a list of the following:
C<ParameterName> and C<ApplyMethod>. To reset the entire cluster
parameter group, specify the C<DBClusterParameterGroupName> and
C<ResetAllParameters> parameters.

When you reset the entire group, dynamic parameters are updated
immediately and static parameters are set to C<pending-reboot> to take
effect on the next DB instance reboot.


=head2 RestoreDBClusterFromSnapshot

=over

=item DBClusterIdentifier => Str

=item Engine => Str

=item SnapshotIdentifier => Str

=item [AvailabilityZones => ArrayRef[Str|Undef]]

=item [DBSubnetGroupName => Str]

=item [DeletionProtection => Bool]

=item [EnableCloudwatchLogsExports => ArrayRef[Str|Undef]]

=item [EngineVersion => Str]

=item [KmsKeyId => Str]

=item [Port => Int]

=item [Tags => ArrayRef[L<Paws::DocDB::Tag>]]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DocDB::RestoreDBClusterFromSnapshot>

Returns: a L<Paws::DocDB::RestoreDBClusterFromSnapshotResult> instance

Creates a new cluster from a snapshot or cluster snapshot.

If a snapshot is specified, the target cluster is created from the
source DB snapshot with a default configuration and default security
group.

If a cluster snapshot is specified, the target cluster is created from
the source cluster restore point with the same configuration as the
original source DB cluster, except that the new cluster is created with
the default security group.


=head2 RestoreDBClusterToPointInTime

=over

=item DBClusterIdentifier => Str

=item SourceDBClusterIdentifier => Str

=item [DBSubnetGroupName => Str]

=item [DeletionProtection => Bool]

=item [EnableCloudwatchLogsExports => ArrayRef[Str|Undef]]

=item [KmsKeyId => Str]

=item [Port => Int]

=item [RestoreToTime => Str]

=item [Tags => ArrayRef[L<Paws::DocDB::Tag>]]

=item [UseLatestRestorableTime => Bool]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DocDB::RestoreDBClusterToPointInTime>

Returns: a L<Paws::DocDB::RestoreDBClusterToPointInTimeResult> instance

Restores a cluster to an arbitrary point in time. Users can restore to
any point in time before C<LatestRestorableTime> for up to
C<BackupRetentionPeriod> days. The target cluster is created from the
source cluster with the same configuration as the original cluster,
except that the new cluster is created with the default security group.


=head2 StartDBCluster

=over

=item DBClusterIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DocDB::StartDBCluster>

Returns: a L<Paws::DocDB::StartDBClusterResult> instance

Restarts the stopped cluster that is specified by
C<DBClusterIdentifier>. For more information, see Stopping and Starting
an Amazon DocumentDB Cluster
(https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-stop-start.html).


=head2 StopDBCluster

=over

=item DBClusterIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DocDB::StopDBCluster>

Returns: a L<Paws::DocDB::StopDBClusterResult> instance

Stops the running cluster that is specified by C<DBClusterIdentifier>.
The cluster must be in the I<available> state. For more information,
see Stopping and Starting an Amazon DocumentDB Cluster
(https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-stop-start.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllCertificates(sub { },[CertificateIdentifier => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllCertificates([CertificateIdentifier => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Certificates, passing the object as the first parameter, and the string 'Certificates' as the second parameter 

If not, it will return a a L<Paws::DocDB::CertificateMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBClusterParameterGroups(sub { },[DBClusterParameterGroupName => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBClusterParameterGroups([DBClusterParameterGroupName => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBClusterParameterGroups, passing the object as the first parameter, and the string 'DBClusterParameterGroups' as the second parameter 

If not, it will return a a L<Paws::DocDB::DBClusterParameterGroupsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBClusterParameters(sub { },DBClusterParameterGroupName => Str, [Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int, Source => Str])

=head2 DescribeAllDBClusterParameters(DBClusterParameterGroupName => Str, [Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int, Source => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Parameters, passing the object as the first parameter, and the string 'Parameters' as the second parameter 

If not, it will return a a L<Paws::DocDB::DBClusterParameterGroupDetails> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBClusters(sub { },[DBClusterIdentifier => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBClusters([DBClusterIdentifier => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBClusters, passing the object as the first parameter, and the string 'DBClusters' as the second parameter 

If not, it will return a a L<Paws::DocDB::DBClusterMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBClusterSnapshots(sub { },[DBClusterIdentifier => Str, DBClusterSnapshotIdentifier => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], IncludePublic => Bool, IncludeShared => Bool, Marker => Str, MaxRecords => Int, SnapshotType => Str])

=head2 DescribeAllDBClusterSnapshots([DBClusterIdentifier => Str, DBClusterSnapshotIdentifier => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], IncludePublic => Bool, IncludeShared => Bool, Marker => Str, MaxRecords => Int, SnapshotType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBClusterSnapshots, passing the object as the first parameter, and the string 'DBClusterSnapshots' as the second parameter 

If not, it will return a a L<Paws::DocDB::DBClusterSnapshotMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBEngineVersions(sub { },[DBParameterGroupFamily => Str, DefaultOnly => Bool, Engine => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], ListSupportedCharacterSets => Bool, ListSupportedTimezones => Bool, Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBEngineVersions([DBParameterGroupFamily => Str, DefaultOnly => Bool, Engine => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], ListSupportedCharacterSets => Bool, ListSupportedTimezones => Bool, Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBEngineVersions, passing the object as the first parameter, and the string 'DBEngineVersions' as the second parameter 

If not, it will return a a L<Paws::DocDB::DBEngineVersionMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBInstances(sub { },[DBInstanceIdentifier => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBInstances([DBInstanceIdentifier => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBInstances, passing the object as the first parameter, and the string 'DBInstances' as the second parameter 

If not, it will return a a L<Paws::DocDB::DBInstanceMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBSubnetGroups(sub { },[DBSubnetGroupName => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBSubnetGroups([DBSubnetGroupName => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBSubnetGroups, passing the object as the first parameter, and the string 'DBSubnetGroups' as the second parameter 

If not, it will return a a L<Paws::DocDB::DBSubnetGroupMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEvents(sub { },[Duration => Int, EndTime => Str, EventCategories => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int, SourceIdentifier => Str, SourceType => Str, StartTime => Str])

=head2 DescribeAllEvents([Duration => Int, EndTime => Str, EventCategories => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int, SourceIdentifier => Str, SourceType => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Events, passing the object as the first parameter, and the string 'Events' as the second parameter 

If not, it will return a a L<Paws::DocDB::EventsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEventSubscriptions(sub { },[Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int, SubscriptionName => Str])

=head2 DescribeAllEventSubscriptions([Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int, SubscriptionName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EventSubscriptionsList, passing the object as the first parameter, and the string 'EventSubscriptionsList' as the second parameter 

If not, it will return a a L<Paws::DocDB::EventSubscriptionsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllGlobalClusters(sub { },[Filters => ArrayRef[L<Paws::DocDB::Filter>], GlobalClusterIdentifier => Str, Marker => Str, MaxRecords => Int])

=head2 DescribeAllGlobalClusters([Filters => ArrayRef[L<Paws::DocDB::Filter>], GlobalClusterIdentifier => Str, Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GlobalClusters, passing the object as the first parameter, and the string 'GlobalClusters' as the second parameter 

If not, it will return a a L<Paws::DocDB::GlobalClustersMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllOrderableDBInstanceOptions(sub { },Engine => Str, [DBInstanceClass => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], LicenseModel => Str, Marker => Str, MaxRecords => Int, Vpc => Bool])

=head2 DescribeAllOrderableDBInstanceOptions(Engine => Str, [DBInstanceClass => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], LicenseModel => Str, Marker => Str, MaxRecords => Int, Vpc => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OrderableDBInstanceOptions, passing the object as the first parameter, and the string 'OrderableDBInstanceOptions' as the second parameter 

If not, it will return a a L<Paws::DocDB::OrderableDBInstanceOptionsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllPendingMaintenanceActions(sub { },[Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int, ResourceIdentifier => Str])

=head2 DescribeAllPendingMaintenanceActions([Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int, ResourceIdentifier => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PendingMaintenanceActions, passing the object as the first parameter, and the string 'PendingMaintenanceActions' as the second parameter 

If not, it will return a a L<Paws::DocDB::PendingMaintenanceActionsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

