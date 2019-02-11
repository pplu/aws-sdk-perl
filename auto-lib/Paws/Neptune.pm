package Paws::Neptune;
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
    my $call_object = $self->new_with_coercions('Paws::Neptune::AddRoleToDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddSourceIdentifierToSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::AddSourceIdentifierToSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddTagsToResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::AddTagsToResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ApplyPendingMaintenanceAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::ApplyPendingMaintenanceAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyDBClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::CopyDBClusterParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyDBClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::CopyDBClusterSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyDBParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::CopyDBParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::CreateDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::CreateDBClusterParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::CreateDBClusterSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::CreateDBInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::CreateDBParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDBSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::CreateDBSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::CreateEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DeleteDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DeleteDBClusterParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DeleteDBClusterSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DeleteDBInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DeleteDBParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDBSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DeleteDBSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DeleteEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBClusterParameterGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DescribeDBClusterParameterGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBClusterParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DescribeDBClusterParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DescribeDBClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBClusterSnapshotAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DescribeDBClusterSnapshotAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBClusterSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DescribeDBClusterSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBEngineVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DescribeDBEngineVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DescribeDBInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBParameterGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DescribeDBParameterGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DescribeDBParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDBSubnetGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DescribeDBSubnetGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEngineDefaultClusterParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DescribeEngineDefaultClusterParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEngineDefaultParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DescribeEngineDefaultParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventCategories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DescribeEventCategories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DescribeEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventSubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DescribeEventSubscriptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrderableDBInstanceOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DescribeOrderableDBInstanceOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePendingMaintenanceActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DescribePendingMaintenanceActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeValidDBInstanceModifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::DescribeValidDBInstanceModifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub FailoverDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::FailoverDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::ModifyDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::ModifyDBClusterParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBClusterSnapshotAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::ModifyDBClusterSnapshotAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::ModifyDBInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::ModifyDBParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDBSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::ModifyDBSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::ModifyEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PromoteReadReplicaDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::PromoteReadReplicaDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootDBInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::RebootDBInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveRoleFromDBCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::RemoveRoleFromDBCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveSourceIdentifierFromSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::RemoveSourceIdentifierFromSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTagsFromResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::RemoveTagsFromResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetDBClusterParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::ResetDBClusterParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetDBParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::ResetDBParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreDBClusterFromSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::RestoreDBClusterFromSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreDBClusterToPointInTime {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptune::RestoreDBClusterToPointInTime', @_);
    return $self->caller->do_call($self, $call_object);
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


  sub operations { qw/AddRoleToDBCluster AddSourceIdentifierToSubscription AddTagsToResource ApplyPendingMaintenanceAction CopyDBClusterParameterGroup CopyDBClusterSnapshot CopyDBParameterGroup CreateDBCluster CreateDBClusterParameterGroup CreateDBClusterSnapshot CreateDBInstance CreateDBParameterGroup CreateDBSubnetGroup CreateEventSubscription DeleteDBCluster DeleteDBClusterParameterGroup DeleteDBClusterSnapshot DeleteDBInstance DeleteDBParameterGroup DeleteDBSubnetGroup DeleteEventSubscription DescribeDBClusterParameterGroups DescribeDBClusterParameters DescribeDBClusters DescribeDBClusterSnapshotAttributes DescribeDBClusterSnapshots DescribeDBEngineVersions DescribeDBInstances DescribeDBParameterGroups DescribeDBParameters DescribeDBSubnetGroups DescribeEngineDefaultClusterParameters DescribeEngineDefaultParameters DescribeEventCategories DescribeEvents DescribeEventSubscriptions DescribeOrderableDBInstanceOptions DescribePendingMaintenanceActions DescribeValidDBInstanceModifications FailoverDBCluster ListTagsForResource ModifyDBCluster ModifyDBClusterParameterGroup ModifyDBClusterSnapshotAttribute ModifyDBInstance ModifyDBParameterGroup ModifyDBSubnetGroup ModifyEventSubscription PromoteReadReplicaDBCluster RebootDBInstance RemoveRoleFromDBCluster RemoveSourceIdentifierFromSubscription RemoveTagsFromResource ResetDBClusterParameterGroup ResetDBParameterGroup RestoreDBClusterFromSnapshot RestoreDBClusterToPointInTime / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune - Perl Interface to AWS Amazon Neptune

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Neptune');
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

Amazon Neptune

Amazon Neptune is a fast, reliable, fully-managed graph database
service that makes it easy to build and run applications that work with
highly connected datasets. The core of Amazon Neptune is a
purpose-built, high-performance graph database engine optimized for
storing billions of relationships and querying the graph with
milliseconds latency. Amazon Neptune supports popular graph models
Property Graph and W3C's RDF, and their respective query languages
Apache TinkerPop Gremlin and SPARQL, allowing you to easily build
queries that efficiently navigate highly connected datasets. Neptune
powers graph use cases such as recommendation engines, fraud detection,
knowledge graphs, drug discovery, and network security.

This interface reference for Amazon Neptune contains documentation for
a programming or command line interface you can use to manage Amazon
Neptune. Note that Amazon Neptune is asynchronous, which means that
some interfaces might require techniques such as polling or callback
functions to determine when a command has been applied. In this
reference, the parameter descriptions indicate whether a command is
applied immediately, on the next instance reboot, or during the
maintenance window. The reference structure is as follows, and we list
following some related topics from the user guide.

B<Amazon Neptune API Reference>

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31>


=head1 METHODS

=head2 AddRoleToDBCluster

=over

=item DBClusterIdentifier => Str

=item RoleArn => Str


=back

Each argument is described in detail in: L<Paws::Neptune::AddRoleToDBCluster>

Returns: nothing

Associates an Identity and Access Management (IAM) role from an Neptune
DB cluster.


=head2 AddSourceIdentifierToSubscription

=over

=item SourceIdentifier => Str

=item SubscriptionName => Str


=back

Each argument is described in detail in: L<Paws::Neptune::AddSourceIdentifierToSubscription>

Returns: a L<Paws::Neptune::AddSourceIdentifierToSubscriptionResult> instance

Adds a source identifier to an existing event notification
subscription.


=head2 AddTagsToResource

=over

=item ResourceName => Str

=item Tags => ArrayRef[L<Paws::Neptune::Tag>]


=back

Each argument is described in detail in: L<Paws::Neptune::AddTagsToResource>

Returns: nothing

Adds metadata tags to an Amazon Neptune resource. These tags can also
be used with cost allocation reporting to track cost associated with
Amazon Neptune resources, or used in a Condition statement in an IAM
policy for Amazon Neptune.


=head2 ApplyPendingMaintenanceAction

=over

=item ApplyAction => Str

=item OptInType => Str

=item ResourceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Neptune::ApplyPendingMaintenanceAction>

Returns: a L<Paws::Neptune::ApplyPendingMaintenanceActionResult> instance

Applies a pending maintenance action to a resource (for example, to a
DB instance).


=head2 CopyDBClusterParameterGroup

=over

=item SourceDBClusterParameterGroupIdentifier => Str

=item TargetDBClusterParameterGroupDescription => Str

=item TargetDBClusterParameterGroupIdentifier => Str

=item [Tags => ArrayRef[L<Paws::Neptune::Tag>]]


=back

Each argument is described in detail in: L<Paws::Neptune::CopyDBClusterParameterGroup>

Returns: a L<Paws::Neptune::CopyDBClusterParameterGroupResult> instance

Copies the specified DB cluster parameter group.


=head2 CopyDBClusterSnapshot

=over

=item SourceDBClusterSnapshotIdentifier => Str

=item TargetDBClusterSnapshotIdentifier => Str

=item [CopyTags => Bool]

=item [KmsKeyId => Str]

=item [PreSignedUrl => Str]

=item [Tags => ArrayRef[L<Paws::Neptune::Tag>]]


=back

Each argument is described in detail in: L<Paws::Neptune::CopyDBClusterSnapshot>

Returns: a L<Paws::Neptune::CopyDBClusterSnapshotResult> instance

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

C<KmsKeyId> - The KMS key identifier for the key to use to encrypt the
copy of the DB cluster snapshot in the destination AWS Region. This is
the same identifier for both the C<CopyDBClusterSnapshot> action that
is called in the destination AWS Region, and the action contained in
the pre-signed URL.

=item *

C<DestinationRegion> - The name of the AWS Region that the DB cluster
snapshot will be created in.

=item *

C<SourceDBClusterSnapshotIdentifier> - The DB cluster snapshot
identifier for the encrypted DB cluster snapshot to be copied. This
identifier must be in the Amazon Resource Name (ARN) format for the
source AWS Region. For example, if you are copying an encrypted DB
cluster snapshot from the us-west-2 AWS Region, then your
C<SourceDBClusterSnapshotIdentifier> looks like the following example:
C<arn:aws:rds:us-west-2:123456789012:cluster-snapshot:neptune-cluster1-snapshot-20161115>.

=back

To learn how to generate a Signature Version 4 signed request, see
Authenticating Requests: Using Query Parameters (AWS Signature Version
4)
(http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html)
and Signature Version 4 Signing Process
(http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

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


=head2 CopyDBParameterGroup

=over

=item SourceDBParameterGroupIdentifier => Str

=item TargetDBParameterGroupDescription => Str

=item TargetDBParameterGroupIdentifier => Str

=item [Tags => ArrayRef[L<Paws::Neptune::Tag>]]


=back

Each argument is described in detail in: L<Paws::Neptune::CopyDBParameterGroup>

Returns: a L<Paws::Neptune::CopyDBParameterGroupResult> instance

Copies the specified DB parameter group.


=head2 CreateDBCluster

=over

=item DBClusterIdentifier => Str

=item Engine => Str

=item [AvailabilityZones => ArrayRef[Str|Undef]]

=item [BackupRetentionPeriod => Int]

=item [CharacterSetName => Str]

=item [DatabaseName => Str]

=item [DBClusterParameterGroupName => Str]

=item [DBSubnetGroupName => Str]

=item [EnableIAMDatabaseAuthentication => Bool]

=item [EngineVersion => Str]

=item [KmsKeyId => Str]

=item [MasterUsername => Str]

=item [MasterUserPassword => Str]

=item [OptionGroupName => Str]

=item [Port => Int]

=item [PreferredBackupWindow => Str]

=item [PreferredMaintenanceWindow => Str]

=item [PreSignedUrl => Str]

=item [ReplicationSourceIdentifier => Str]

=item [StorageEncrypted => Bool]

=item [Tags => ArrayRef[L<Paws::Neptune::Tag>]]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Neptune::CreateDBCluster>

Returns: a L<Paws::Neptune::CreateDBClusterResult> instance

Creates a new Amazon Neptune DB cluster.

You can use the C<ReplicationSourceIdentifier> parameter to create the
DB cluster as a Read Replica of another DB cluster or Amazon Neptune DB
instance. For cross-region replication where the DB cluster identified
by C<ReplicationSourceIdentifier> is encrypted, you must also specify
the C<PreSignedUrl> parameter.


=head2 CreateDBClusterParameterGroup

=over

=item DBClusterParameterGroupName => Str

=item DBParameterGroupFamily => Str

=item Description => Str

=item [Tags => ArrayRef[L<Paws::Neptune::Tag>]]


=back

Each argument is described in detail in: L<Paws::Neptune::CreateDBClusterParameterGroup>

Returns: a L<Paws::Neptune::CreateDBClusterParameterGroupResult> instance

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
Amazon Neptune to fully complete the create action before the DB
cluster parameter group is used as the default for a new DB cluster.
This is especially important for parameters that are critical when
creating the default database for a DB cluster, such as the character
set for the default database defined by the C<character_set_database>
parameter. You can use the I<Parameter Groups> option of the Amazon
Neptune console (https://console.aws.amazon.com/rds/) or the
DescribeDBClusterParameters command to verify that your DB cluster
parameter group has been created or modified.


=head2 CreateDBClusterSnapshot

=over

=item DBClusterIdentifier => Str

=item DBClusterSnapshotIdentifier => Str

=item [Tags => ArrayRef[L<Paws::Neptune::Tag>]]


=back

Each argument is described in detail in: L<Paws::Neptune::CreateDBClusterSnapshot>

Returns: a L<Paws::Neptune::CreateDBClusterSnapshotResult> instance

Creates a snapshot of a DB cluster.


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

=item [Domain => Str]

=item [DomainIAMRoleName => Str]

=item [EnableCloudwatchLogsExports => ArrayRef[Str|Undef]]

=item [EnableIAMDatabaseAuthentication => Bool]

=item [EnablePerformanceInsights => Bool]

=item [EngineVersion => Str]

=item [Iops => Int]

=item [KmsKeyId => Str]

=item [LicenseModel => Str]

=item [MasterUsername => Str]

=item [MasterUserPassword => Str]

=item [MonitoringInterval => Int]

=item [MonitoringRoleArn => Str]

=item [MultiAZ => Bool]

=item [OptionGroupName => Str]

=item [PerformanceInsightsKMSKeyId => Str]

=item [Port => Int]

=item [PreferredBackupWindow => Str]

=item [PreferredMaintenanceWindow => Str]

=item [PromotionTier => Int]

=item [PubliclyAccessible => Bool]

=item [StorageEncrypted => Bool]

=item [StorageType => Str]

=item [Tags => ArrayRef[L<Paws::Neptune::Tag>]]

=item [TdeCredentialArn => Str]

=item [TdeCredentialPassword => Str]

=item [Timezone => Str]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Neptune::CreateDBInstance>

Returns: a L<Paws::Neptune::CreateDBInstanceResult> instance

Creates a new DB instance.


=head2 CreateDBParameterGroup

=over

=item DBParameterGroupFamily => Str

=item DBParameterGroupName => Str

=item Description => Str

=item [Tags => ArrayRef[L<Paws::Neptune::Tag>]]


=back

Each argument is described in detail in: L<Paws::Neptune::CreateDBParameterGroup>

Returns: a L<Paws::Neptune::CreateDBParameterGroupResult> instance

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
parameter group as the default parameter group. This allows Amazon
Neptune to fully complete the create action before the parameter group
is used as the default for a new DB instance. This is especially
important for parameters that are critical when creating the default
database for a DB instance, such as the character set for the default
database defined by the C<character_set_database> parameter. You can
use the I<Parameter Groups> option of the Amazon Neptune console or the
I<DescribeDBParameters> command to verify that your DB parameter group
has been created or modified.


=head2 CreateDBSubnetGroup

=over

=item DBSubnetGroupDescription => Str

=item DBSubnetGroupName => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [Tags => ArrayRef[L<Paws::Neptune::Tag>]]


=back

Each argument is described in detail in: L<Paws::Neptune::CreateDBSubnetGroup>

Returns: a L<Paws::Neptune::CreateDBSubnetGroupResult> instance

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

=item [Tags => ArrayRef[L<Paws::Neptune::Tag>]]


=back

Each argument is described in detail in: L<Paws::Neptune::CreateEventSubscription>

Returns: a L<Paws::Neptune::CreateEventSubscriptionResult> instance

Creates an event notification subscription. This action requires a
topic ARN (Amazon Resource Name) created by either the Neptune console,
the SNS console, or the SNS API. To obtain an ARN with SNS, you must
create a topic in Amazon SNS and subscribe to the topic. The ARN is
displayed in the SNS console.

You can specify the type of source (SourceType) you want to be notified
of, provide a list of Neptune sources (SourceIds) that triggers the
events, and provide a list of event categories (EventCategories) for
events you want to be notified of. For example, you can specify
SourceType = db-instance, SourceIds = mydbinstance1, mydbinstance2 and
EventCategories = Availability, Backup.

If you specify both the SourceType and SourceIds, such as SourceType =
db-instance and SourceIdentifier = myDBInstance1, you are notified of
all the db-instance events for the specified source. If you specify a
SourceType but do not specify a SourceIdentifier, you receive notice of
the events for that source type for all your Neptune sources. If you do
not specify either the SourceType nor the SourceIdentifier, you are
notified of events generated from all Neptune sources belonging to your
customer account.


=head2 DeleteDBCluster

=over

=item DBClusterIdentifier => Str

=item [FinalDBSnapshotIdentifier => Str]

=item [SkipFinalSnapshot => Bool]


=back

Each argument is described in detail in: L<Paws::Neptune::DeleteDBCluster>

Returns: a L<Paws::Neptune::DeleteDBClusterResult> instance

The DeleteDBCluster action deletes a previously provisioned DB cluster.
When you delete a DB cluster, all automated backups for that DB cluster
are deleted and can't be recovered. Manual DB cluster snapshots of the
specified DB cluster are not deleted.


=head2 DeleteDBClusterParameterGroup

=over

=item DBClusterParameterGroupName => Str


=back

Each argument is described in detail in: L<Paws::Neptune::DeleteDBClusterParameterGroup>

Returns: nothing

Deletes a specified DB cluster parameter group. The DB cluster
parameter group to be deleted can't be associated with any DB clusters.


=head2 DeleteDBClusterSnapshot

=over

=item DBClusterSnapshotIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Neptune::DeleteDBClusterSnapshot>

Returns: a L<Paws::Neptune::DeleteDBClusterSnapshotResult> instance

Deletes a DB cluster snapshot. If the snapshot is being copied, the
copy operation is terminated.

The DB cluster snapshot must be in the C<available> state to be
deleted.


=head2 DeleteDBInstance

=over

=item DBInstanceIdentifier => Str

=item [FinalDBSnapshotIdentifier => Str]

=item [SkipFinalSnapshot => Bool]


=back

Each argument is described in detail in: L<Paws::Neptune::DeleteDBInstance>

Returns: a L<Paws::Neptune::DeleteDBInstanceResult> instance

The DeleteDBInstance action deletes a previously provisioned DB
instance. When you delete a DB instance, all automated backups for that
instance are deleted and can't be recovered. Manual DB snapshots of the
DB instance to be deleted by C<DeleteDBInstance> are not deleted.

If you request a final DB snapshot the status of the Amazon Neptune DB
instance is C<deleting> until the DB snapshot is created. The API
action C<DescribeDBInstance> is used to monitor the status of this
operation. The action can't be canceled or reverted once submitted.

Note that when a DB instance is in a failure state and has a status of
C<failed>, C<incompatible-restore>, or C<incompatible-network>, you can
only delete it when the C<SkipFinalSnapshot> parameter is set to
C<true>.

If the specified DB instance is part of a DB cluster, you can't delete
the DB instance if both of the following conditions are true:

=over

=item *

The DB cluster is a Read Replica of another DB cluster.

=item *

The DB instance is the only instance in the DB cluster.

=back

To delete a DB instance in this case, first call the
PromoteReadReplicaDBCluster API action to promote the DB cluster so
it's no longer a Read Replica. After the promotion completes, then call
the C<DeleteDBInstance> API action to delete the final instance in the
DB cluster.


=head2 DeleteDBParameterGroup

=over

=item DBParameterGroupName => Str


=back

Each argument is described in detail in: L<Paws::Neptune::DeleteDBParameterGroup>

Returns: nothing

Deletes a specified DBParameterGroup. The DBParameterGroup to be
deleted can't be associated with any DB instances.


=head2 DeleteDBSubnetGroup

=over

=item DBSubnetGroupName => Str


=back

Each argument is described in detail in: L<Paws::Neptune::DeleteDBSubnetGroup>

Returns: nothing

Deletes a DB subnet group.

The specified database subnet group must not be associated with any DB
instances.


=head2 DeleteEventSubscription

=over

=item SubscriptionName => Str


=back

Each argument is described in detail in: L<Paws::Neptune::DeleteEventSubscription>

Returns: a L<Paws::Neptune::DeleteEventSubscriptionResult> instance

Deletes an event notification subscription.


=head2 DescribeDBClusterParameterGroups

=over

=item [DBClusterParameterGroupName => Str]

=item [Filters => ArrayRef[L<Paws::Neptune::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::Neptune::DescribeDBClusterParameterGroups>

Returns: a L<Paws::Neptune::DBClusterParameterGroupsMessage> instance

Returns a list of C<DBClusterParameterGroup> descriptions. If a
C<DBClusterParameterGroupName> parameter is specified, the list will
contain only the description of the specified DB cluster parameter
group.


=head2 DescribeDBClusterParameters

=over

=item DBClusterParameterGroupName => Str

=item [Filters => ArrayRef[L<Paws::Neptune::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [Source => Str]


=back

Each argument is described in detail in: L<Paws::Neptune::DescribeDBClusterParameters>

Returns: a L<Paws::Neptune::DBClusterParameterGroupDetails> instance

Returns the detailed parameter list for a particular DB cluster
parameter group.


=head2 DescribeDBClusters

=over

=item [DBClusterIdentifier => Str]

=item [Filters => ArrayRef[L<Paws::Neptune::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::Neptune::DescribeDBClusters>

Returns: a L<Paws::Neptune::DBClusterMessage> instance

Returns information about provisioned DB clusters. This API supports
pagination.


=head2 DescribeDBClusterSnapshotAttributes

=over

=item DBClusterSnapshotIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Neptune::DescribeDBClusterSnapshotAttributes>

Returns: a L<Paws::Neptune::DescribeDBClusterSnapshotAttributesResult> instance

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


=head2 DescribeDBClusterSnapshots

=over

=item [DBClusterIdentifier => Str]

=item [DBClusterSnapshotIdentifier => Str]

=item [Filters => ArrayRef[L<Paws::Neptune::Filter>]]

=item [IncludePublic => Bool]

=item [IncludeShared => Bool]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [SnapshotType => Str]


=back

Each argument is described in detail in: L<Paws::Neptune::DescribeDBClusterSnapshots>

Returns: a L<Paws::Neptune::DBClusterSnapshotMessage> instance

Returns information about DB cluster snapshots. This API action
supports pagination.


=head2 DescribeDBEngineVersions

=over

=item [DBParameterGroupFamily => Str]

=item [DefaultOnly => Bool]

=item [Engine => Str]

=item [EngineVersion => Str]

=item [Filters => ArrayRef[L<Paws::Neptune::Filter>]]

=item [ListSupportedCharacterSets => Bool]

=item [ListSupportedTimezones => Bool]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::Neptune::DescribeDBEngineVersions>

Returns: a L<Paws::Neptune::DBEngineVersionMessage> instance

Returns a list of the available DB engines.


=head2 DescribeDBInstances

=over

=item [DBInstanceIdentifier => Str]

=item [Filters => ArrayRef[L<Paws::Neptune::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::Neptune::DescribeDBInstances>

Returns: a L<Paws::Neptune::DBInstanceMessage> instance

Returns information about provisioned instances. This API supports
pagination.


=head2 DescribeDBParameterGroups

=over

=item [DBParameterGroupName => Str]

=item [Filters => ArrayRef[L<Paws::Neptune::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::Neptune::DescribeDBParameterGroups>

Returns: a L<Paws::Neptune::DBParameterGroupsMessage> instance

Returns a list of C<DBParameterGroup> descriptions. If a
C<DBParameterGroupName> is specified, the list will contain only the
description of the specified DB parameter group.


=head2 DescribeDBParameters

=over

=item DBParameterGroupName => Str

=item [Filters => ArrayRef[L<Paws::Neptune::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [Source => Str]


=back

Each argument is described in detail in: L<Paws::Neptune::DescribeDBParameters>

Returns: a L<Paws::Neptune::DBParameterGroupDetails> instance

Returns the detailed parameter list for a particular DB parameter
group.


=head2 DescribeDBSubnetGroups

=over

=item [DBSubnetGroupName => Str]

=item [Filters => ArrayRef[L<Paws::Neptune::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::Neptune::DescribeDBSubnetGroups>

Returns: a L<Paws::Neptune::DBSubnetGroupMessage> instance

Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is
specified, the list will contain only the descriptions of the specified
DBSubnetGroup.

For an overview of CIDR ranges, go to the Wikipedia Tutorial
(http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).


=head2 DescribeEngineDefaultClusterParameters

=over

=item DBParameterGroupFamily => Str

=item [Filters => ArrayRef[L<Paws::Neptune::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::Neptune::DescribeEngineDefaultClusterParameters>

Returns: a L<Paws::Neptune::DescribeEngineDefaultClusterParametersResult> instance

Returns the default engine and system parameter information for the
cluster database engine.


=head2 DescribeEngineDefaultParameters

=over

=item DBParameterGroupFamily => Str

=item [Filters => ArrayRef[L<Paws::Neptune::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::Neptune::DescribeEngineDefaultParameters>

Returns: a L<Paws::Neptune::DescribeEngineDefaultParametersResult> instance

Returns the default engine and system parameter information for the
specified database engine.


=head2 DescribeEventCategories

=over

=item [Filters => ArrayRef[L<Paws::Neptune::Filter>]]

=item [SourceType => Str]


=back

Each argument is described in detail in: L<Paws::Neptune::DescribeEventCategories>

Returns: a L<Paws::Neptune::EventCategoriesMessage> instance

Displays a list of categories for all event source types, or, if
specified, for a specified source type.


=head2 DescribeEvents

=over

=item [Duration => Int]

=item [EndTime => Str]

=item [EventCategories => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::Neptune::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [SourceIdentifier => Str]

=item [SourceType => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::Neptune::DescribeEvents>

Returns: a L<Paws::Neptune::EventsMessage> instance

Returns events related to DB instances, DB security groups, DB
snapshots, and DB parameter groups for the past 14 days. Events
specific to a particular DB instance, DB security group, database
snapshot, or DB parameter group can be obtained by providing the name
as a parameter. By default, the past hour of events are returned.


=head2 DescribeEventSubscriptions

=over

=item [Filters => ArrayRef[L<Paws::Neptune::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [SubscriptionName => Str]


=back

Each argument is described in detail in: L<Paws::Neptune::DescribeEventSubscriptions>

Returns: a L<Paws::Neptune::EventSubscriptionsMessage> instance

Lists all the subscription descriptions for a customer account. The
description for a subscription includes SubscriptionName, SNSTopicARN,
CustomerID, SourceType, SourceID, CreationTime, and Status.

If you specify a SubscriptionName, lists the description for that
subscription.


=head2 DescribeOrderableDBInstanceOptions

=over

=item Engine => Str

=item [DBInstanceClass => Str]

=item [EngineVersion => Str]

=item [Filters => ArrayRef[L<Paws::Neptune::Filter>]]

=item [LicenseModel => Str]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [Vpc => Bool]


=back

Each argument is described in detail in: L<Paws::Neptune::DescribeOrderableDBInstanceOptions>

Returns: a L<Paws::Neptune::OrderableDBInstanceOptionsMessage> instance

Returns a list of orderable DB instance options for the specified
engine.


=head2 DescribePendingMaintenanceActions

=over

=item [Filters => ArrayRef[L<Paws::Neptune::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [ResourceIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::Neptune::DescribePendingMaintenanceActions>

Returns: a L<Paws::Neptune::PendingMaintenanceActionsMessage> instance

Returns a list of resources (for example, DB instances) that have at
least one pending maintenance action.


=head2 DescribeValidDBInstanceModifications

=over

=item DBInstanceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Neptune::DescribeValidDBInstanceModifications>

Returns: a L<Paws::Neptune::DescribeValidDBInstanceModificationsResult> instance

You can call DescribeValidDBInstanceModifications to learn what
modifications you can make to your DB instance. You can use this
information when you call ModifyDBInstance.


=head2 FailoverDBCluster

=over

=item [DBClusterIdentifier => Str]

=item [TargetDBInstanceIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::Neptune::FailoverDBCluster>

Returns: a L<Paws::Neptune::FailoverDBClusterResult> instance

Forces a failover for a DB cluster.

A failover for a DB cluster promotes one of the Read Replicas
(read-only instances) in the DB cluster to be the primary instance (the
cluster writer).

Amazon Neptune will automatically fail over to a Read Replica, if one
exists, when the primary instance fails. You can force a failover when
you want to simulate a failure of a primary instance for testing.
Because each instance in a DB cluster has its own endpoint address, you
will need to clean up and re-establish any existing connections that
use those endpoint addresses when the failover is complete.


=head2 ListTagsForResource

=over

=item ResourceName => Str

=item [Filters => ArrayRef[L<Paws::Neptune::Filter>]]


=back

Each argument is described in detail in: L<Paws::Neptune::ListTagsForResource>

Returns: a L<Paws::Neptune::TagListMessage> instance

Lists all tags on an Amazon Neptune resource.


=head2 ModifyDBCluster

=over

=item DBClusterIdentifier => Str

=item [ApplyImmediately => Bool]

=item [BackupRetentionPeriod => Int]

=item [DBClusterParameterGroupName => Str]

=item [EnableIAMDatabaseAuthentication => Bool]

=item [EngineVersion => Str]

=item [MasterUserPassword => Str]

=item [NewDBClusterIdentifier => Str]

=item [OptionGroupName => Str]

=item [Port => Int]

=item [PreferredBackupWindow => Str]

=item [PreferredMaintenanceWindow => Str]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Neptune::ModifyDBCluster>

Returns: a L<Paws::Neptune::ModifyDBClusterResult> instance

Modify a setting for a DB cluster. You can change one or more database
configuration parameters by specifying these parameters and the new
values in the request.


=head2 ModifyDBClusterParameterGroup

=over

=item DBClusterParameterGroupName => Str

=item Parameters => ArrayRef[L<Paws::Neptune::Parameter>]


=back

Each argument is described in detail in: L<Paws::Neptune::ModifyDBClusterParameterGroup>

Returns: a L<Paws::Neptune::DBClusterParameterGroupNameMessage> instance

Modifies the parameters of a DB cluster parameter group. To modify more
than one parameter, submit a list of the following: C<ParameterName>,
C<ParameterValue>, and C<ApplyMethod>. A maximum of 20 parameters can
be modified in a single request.

Changes to dynamic parameters are applied immediately. Changes to
static parameters require a reboot without failover to the DB cluster
associated with the parameter group before the change can take effect.

After you create a DB cluster parameter group, you should wait at least
5 minutes before creating your first DB cluster that uses that DB
cluster parameter group as the default parameter group. This allows
Amazon Neptune to fully complete the create action before the parameter
group is used as the default for a new DB cluster. This is especially
important for parameters that are critical when creating the default
database for a DB cluster, such as the character set for the default
database defined by the C<character_set_database> parameter. You can
use the I<Parameter Groups> option of the Amazon Neptune console or the
DescribeDBClusterParameters command to verify that your DB cluster
parameter group has been created or modified.


=head2 ModifyDBClusterSnapshotAttribute

=over

=item AttributeName => Str

=item DBClusterSnapshotIdentifier => Str

=item [ValuesToAdd => ArrayRef[Str|Undef]]

=item [ValuesToRemove => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Neptune::ModifyDBClusterSnapshotAttribute>

Returns: a L<Paws::Neptune::ModifyDBClusterSnapshotAttributeResult> instance

Adds an attribute and values to, or removes an attribute and values
from, a manual DB cluster snapshot.

To share a manual DB cluster snapshot with other AWS accounts, specify
C<restore> as the C<AttributeName> and use the C<ValuesToAdd> parameter
to add a list of IDs of the AWS accounts that are authorized to restore
the manual DB cluster snapshot. Use the value C<all> to make the manual
DB cluster snapshot public, which means that it can be copied or
restored by all AWS accounts. Do not add the C<all> value for any
manual DB cluster snapshots that contain private information that you
don't want available to all AWS accounts. If a manual DB cluster
snapshot is encrypted, it can be shared, but only by specifying a list
of authorized AWS account IDs for the C<ValuesToAdd> parameter. You
can't use C<all> as a value for that parameter in this case.

To view which AWS accounts have access to copy or restore a manual DB
cluster snapshot, or whether a manual DB cluster snapshot public or
private, use the DescribeDBClusterSnapshotAttributes API action.


=head2 ModifyDBInstance

=over

=item DBInstanceIdentifier => Str

=item [AllocatedStorage => Int]

=item [AllowMajorVersionUpgrade => Bool]

=item [ApplyImmediately => Bool]

=item [AutoMinorVersionUpgrade => Bool]

=item [BackupRetentionPeriod => Int]

=item [CACertificateIdentifier => Str]

=item [CloudwatchLogsExportConfiguration => L<Paws::Neptune::CloudwatchLogsExportConfiguration>]

=item [CopyTagsToSnapshot => Bool]

=item [DBInstanceClass => Str]

=item [DBParameterGroupName => Str]

=item [DBPortNumber => Int]

=item [DBSecurityGroups => ArrayRef[Str|Undef]]

=item [DBSubnetGroupName => Str]

=item [Domain => Str]

=item [DomainIAMRoleName => Str]

=item [EnableIAMDatabaseAuthentication => Bool]

=item [EnablePerformanceInsights => Bool]

=item [EngineVersion => Str]

=item [Iops => Int]

=item [LicenseModel => Str]

=item [MasterUserPassword => Str]

=item [MonitoringInterval => Int]

=item [MonitoringRoleArn => Str]

=item [MultiAZ => Bool]

=item [NewDBInstanceIdentifier => Str]

=item [OptionGroupName => Str]

=item [PerformanceInsightsKMSKeyId => Str]

=item [PreferredBackupWindow => Str]

=item [PreferredMaintenanceWindow => Str]

=item [PromotionTier => Int]

=item [PubliclyAccessible => Bool]

=item [StorageType => Str]

=item [TdeCredentialArn => Str]

=item [TdeCredentialPassword => Str]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Neptune::ModifyDBInstance>

Returns: a L<Paws::Neptune::ModifyDBInstanceResult> instance

Modifies settings for a DB instance. You can change one or more
database configuration parameters by specifying these parameters and
the new values in the request. To learn what modifications you can make
to your DB instance, call DescribeValidDBInstanceModifications before
you call ModifyDBInstance.


=head2 ModifyDBParameterGroup

=over

=item DBParameterGroupName => Str

=item Parameters => ArrayRef[L<Paws::Neptune::Parameter>]


=back

Each argument is described in detail in: L<Paws::Neptune::ModifyDBParameterGroup>

Returns: a L<Paws::Neptune::DBParameterGroupNameMessage> instance

Modifies the parameters of a DB parameter group. To modify more than
one parameter, submit a list of the following: C<ParameterName>,
C<ParameterValue>, and C<ApplyMethod>. A maximum of 20 parameters can
be modified in a single request.

Changes to dynamic parameters are applied immediately. Changes to
static parameters require a reboot without failover to the DB instance
associated with the parameter group before the change can take effect.

After you modify a DB parameter group, you should wait at least 5
minutes before creating your first DB instance that uses that DB
parameter group as the default parameter group. This allows Amazon
Neptune to fully complete the modify action before the parameter group
is used as the default for a new DB instance. This is especially
important for parameters that are critical when creating the default
database for a DB instance, such as the character set for the default
database defined by the C<character_set_database> parameter. You can
use the I<Parameter Groups> option of the Amazon Neptune console or the
I<DescribeDBParameters> command to verify that your DB parameter group
has been created or modified.


=head2 ModifyDBSubnetGroup

=over

=item DBSubnetGroupName => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [DBSubnetGroupDescription => Str]


=back

Each argument is described in detail in: L<Paws::Neptune::ModifyDBSubnetGroup>

Returns: a L<Paws::Neptune::ModifyDBSubnetGroupResult> instance

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

Each argument is described in detail in: L<Paws::Neptune::ModifyEventSubscription>

Returns: a L<Paws::Neptune::ModifyEventSubscriptionResult> instance

Modifies an existing event notification subscription. Note that you
can't modify the source identifiers using this call; to change source
identifiers for a subscription, use the
AddSourceIdentifierToSubscription and
RemoveSourceIdentifierFromSubscription calls.

You can see a list of the event categories for a given SourceType by
using the B<DescribeEventCategories> action.


=head2 PromoteReadReplicaDBCluster

=over

=item DBClusterIdentifier => Str


=back

Each argument is described in detail in: L<Paws::Neptune::PromoteReadReplicaDBCluster>

Returns: a L<Paws::Neptune::PromoteReadReplicaDBClusterResult> instance

Promotes a Read Replica DB cluster to a standalone DB cluster.


=head2 RebootDBInstance

=over

=item DBInstanceIdentifier => Str

=item [ForceFailover => Bool]


=back

Each argument is described in detail in: L<Paws::Neptune::RebootDBInstance>

Returns: a L<Paws::Neptune::RebootDBInstanceResult> instance

You might need to reboot your DB instance, usually for maintenance
reasons. For example, if you make certain modifications, or if you
change the DB parameter group associated with the DB instance, you must
reboot the instance for the changes to take effect.

Rebooting a DB instance restarts the database engine service. Rebooting
a DB instance results in a momentary outage, during which the DB
instance status is set to rebooting.


=head2 RemoveRoleFromDBCluster

=over

=item DBClusterIdentifier => Str

=item RoleArn => Str


=back

Each argument is described in detail in: L<Paws::Neptune::RemoveRoleFromDBCluster>

Returns: nothing

Disassociates an Identity and Access Management (IAM) role from a DB
cluster.


=head2 RemoveSourceIdentifierFromSubscription

=over

=item SourceIdentifier => Str

=item SubscriptionName => Str


=back

Each argument is described in detail in: L<Paws::Neptune::RemoveSourceIdentifierFromSubscription>

Returns: a L<Paws::Neptune::RemoveSourceIdentifierFromSubscriptionResult> instance

Removes a source identifier from an existing event notification
subscription.


=head2 RemoveTagsFromResource

=over

=item ResourceName => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Neptune::RemoveTagsFromResource>

Returns: nothing

Removes metadata tags from an Amazon Neptune resource.


=head2 ResetDBClusterParameterGroup

=over

=item DBClusterParameterGroupName => Str

=item [Parameters => ArrayRef[L<Paws::Neptune::Parameter>]]

=item [ResetAllParameters => Bool]


=back

Each argument is described in detail in: L<Paws::Neptune::ResetDBClusterParameterGroup>

Returns: a L<Paws::Neptune::DBClusterParameterGroupNameMessage> instance

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


=head2 ResetDBParameterGroup

=over

=item DBParameterGroupName => Str

=item [Parameters => ArrayRef[L<Paws::Neptune::Parameter>]]

=item [ResetAllParameters => Bool]


=back

Each argument is described in detail in: L<Paws::Neptune::ResetDBParameterGroup>

Returns: a L<Paws::Neptune::DBParameterGroupNameMessage> instance

Modifies the parameters of a DB parameter group to the engine/system
default value. To reset specific parameters, provide a list of the
following: C<ParameterName> and C<ApplyMethod>. To reset the entire DB
parameter group, specify the C<DBParameterGroup> name and
C<ResetAllParameters> parameters. When resetting the entire group,
dynamic parameters are updated immediately and static parameters are
set to C<pending-reboot> to take effect on the next DB instance restart
or C<RebootDBInstance> request.


=head2 RestoreDBClusterFromSnapshot

=over

=item DBClusterIdentifier => Str

=item Engine => Str

=item SnapshotIdentifier => Str

=item [AvailabilityZones => ArrayRef[Str|Undef]]

=item [DatabaseName => Str]

=item [DBSubnetGroupName => Str]

=item [EnableIAMDatabaseAuthentication => Bool]

=item [EngineVersion => Str]

=item [KmsKeyId => Str]

=item [OptionGroupName => Str]

=item [Port => Int]

=item [Tags => ArrayRef[L<Paws::Neptune::Tag>]]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Neptune::RestoreDBClusterFromSnapshot>

Returns: a L<Paws::Neptune::RestoreDBClusterFromSnapshotResult> instance

Creates a new DB cluster from a DB snapshot or DB cluster snapshot.

If a DB snapshot is specified, the target DB cluster is created from
the source DB snapshot with a default configuration and default
security group.

If a DB cluster snapshot is specified, the target DB cluster is created
from the source DB cluster restore point with the same configuration as
the original source DB cluster, except that the new DB cluster is
created with the default security group.


=head2 RestoreDBClusterToPointInTime

=over

=item DBClusterIdentifier => Str

=item SourceDBClusterIdentifier => Str

=item [DBSubnetGroupName => Str]

=item [EnableIAMDatabaseAuthentication => Bool]

=item [KmsKeyId => Str]

=item [OptionGroupName => Str]

=item [Port => Int]

=item [RestoreToTime => Str]

=item [RestoreType => Str]

=item [Tags => ArrayRef[L<Paws::Neptune::Tag>]]

=item [UseLatestRestorableTime => Bool]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Neptune::RestoreDBClusterToPointInTime>

Returns: a L<Paws::Neptune::RestoreDBClusterToPointInTimeResult> instance

Restores a DB cluster to an arbitrary point in time. Users can restore
to any point in time before C<LatestRestorableTime> for up to
C<BackupRetentionPeriod> days. The target DB cluster is created from
the source DB cluster with the same configuration as the original DB
cluster, except that the new DB cluster is created with the default DB
security group.

This action only restores the DB cluster, not the DB instances for that
DB cluster. You must invoke the CreateDBInstance action to create DB
instances for the restored DB cluster, specifying the identifier of the
restored DB cluster in C<DBClusterIdentifier>. You can create DB
instances only after the C<RestoreDBClusterToPointInTime> action has
completed and the DB cluster is available.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllDBClusterParameterGroups(sub { },[DBClusterParameterGroupName => Str, Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBClusterParameterGroups([DBClusterParameterGroupName => Str, Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBClusterParameterGroups, passing the object as the first parameter, and the string 'DBClusterParameterGroups' as the second parameter 

If not, it will return a a L<Paws::Neptune::DBClusterParameterGroupsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBClusterParameters(sub { },DBClusterParameterGroupName => Str, [Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int, Source => Str])

=head2 DescribeAllDBClusterParameters(DBClusterParameterGroupName => Str, [Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int, Source => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Parameters, passing the object as the first parameter, and the string 'Parameters' as the second parameter 

If not, it will return a a L<Paws::Neptune::DBClusterParameterGroupDetails> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBClusters(sub { },[DBClusterIdentifier => Str, Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBClusters([DBClusterIdentifier => Str, Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBClusters, passing the object as the first parameter, and the string 'DBClusters' as the second parameter 

If not, it will return a a L<Paws::Neptune::DBClusterMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBClusterSnapshots(sub { },[DBClusterIdentifier => Str, DBClusterSnapshotIdentifier => Str, Filters => ArrayRef[L<Paws::Neptune::Filter>], IncludePublic => Bool, IncludeShared => Bool, Marker => Str, MaxRecords => Int, SnapshotType => Str])

=head2 DescribeAllDBClusterSnapshots([DBClusterIdentifier => Str, DBClusterSnapshotIdentifier => Str, Filters => ArrayRef[L<Paws::Neptune::Filter>], IncludePublic => Bool, IncludeShared => Bool, Marker => Str, MaxRecords => Int, SnapshotType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBClusterSnapshots, passing the object as the first parameter, and the string 'DBClusterSnapshots' as the second parameter 

If not, it will return a a L<Paws::Neptune::DBClusterSnapshotMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBEngineVersions(sub { },[DBParameterGroupFamily => Str, DefaultOnly => Bool, Engine => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::Neptune::Filter>], ListSupportedCharacterSets => Bool, ListSupportedTimezones => Bool, Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBEngineVersions([DBParameterGroupFamily => Str, DefaultOnly => Bool, Engine => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::Neptune::Filter>], ListSupportedCharacterSets => Bool, ListSupportedTimezones => Bool, Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBEngineVersions, passing the object as the first parameter, and the string 'DBEngineVersions' as the second parameter 

If not, it will return a a L<Paws::Neptune::DBEngineVersionMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBInstances(sub { },[DBInstanceIdentifier => Str, Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBInstances([DBInstanceIdentifier => Str, Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBInstances, passing the object as the first parameter, and the string 'DBInstances' as the second parameter 

If not, it will return a a L<Paws::Neptune::DBInstanceMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBParameterGroups(sub { },[DBParameterGroupName => Str, Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBParameterGroups([DBParameterGroupName => Str, Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBParameterGroups, passing the object as the first parameter, and the string 'DBParameterGroups' as the second parameter 

If not, it will return a a L<Paws::Neptune::DBParameterGroupsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBParameters(sub { },DBParameterGroupName => Str, [Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int, Source => Str])

=head2 DescribeAllDBParameters(DBParameterGroupName => Str, [Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int, Source => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Parameters, passing the object as the first parameter, and the string 'Parameters' as the second parameter 

If not, it will return a a L<Paws::Neptune::DBParameterGroupDetails> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDBSubnetGroups(sub { },[DBSubnetGroupName => Str, Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBSubnetGroups([DBSubnetGroupName => Str, Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBSubnetGroups, passing the object as the first parameter, and the string 'DBSubnetGroups' as the second parameter 

If not, it will return a a L<Paws::Neptune::DBSubnetGroupMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEngineDefaultParameters(sub { },DBParameterGroupFamily => Str, [Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllEngineDefaultParameters(DBParameterGroupFamily => Str, [Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EngineDefaults.Parameters, passing the object as the first parameter, and the string 'EngineDefaults.Parameters' as the second parameter 

If not, it will return a a L<Paws::Neptune::DescribeEngineDefaultParametersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEvents(sub { },[Duration => Int, EndTime => Str, EventCategories => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int, SourceIdentifier => Str, SourceType => Str, StartTime => Str])

=head2 DescribeAllEvents([Duration => Int, EndTime => Str, EventCategories => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int, SourceIdentifier => Str, SourceType => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Events, passing the object as the first parameter, and the string 'Events' as the second parameter 

If not, it will return a a L<Paws::Neptune::EventsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEventSubscriptions(sub { },[Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int, SubscriptionName => Str])

=head2 DescribeAllEventSubscriptions([Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int, SubscriptionName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EventSubscriptionsList, passing the object as the first parameter, and the string 'EventSubscriptionsList' as the second parameter 

If not, it will return a a L<Paws::Neptune::EventSubscriptionsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllOrderableDBInstanceOptions(sub { },Engine => Str, [DBInstanceClass => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::Neptune::Filter>], LicenseModel => Str, Marker => Str, MaxRecords => Int, Vpc => Bool])

=head2 DescribeAllOrderableDBInstanceOptions(Engine => Str, [DBInstanceClass => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::Neptune::Filter>], LicenseModel => Str, Marker => Str, MaxRecords => Int, Vpc => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OrderableDBInstanceOptions, passing the object as the first parameter, and the string 'OrderableDBInstanceOptions' as the second parameter 

If not, it will return a a L<Paws::Neptune::OrderableDBInstanceOptionsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllPendingMaintenanceActions(sub { },[Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int, ResourceIdentifier => Str])

=head2 DescribeAllPendingMaintenanceActions([Filters => ArrayRef[L<Paws::Neptune::Filter>], Marker => Str, MaxRecords => Int, ResourceIdentifier => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PendingMaintenanceActions, passing the object as the first parameter, and the string 'PendingMaintenanceActions' as the second parameter 

If not, it will return a a L<Paws::Neptune::PendingMaintenanceActionsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

