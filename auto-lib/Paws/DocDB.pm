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
  sub RebootDBInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDB::RebootDBInstance', @_);
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


  sub operations { qw/AddTagsToResource ApplyPendingMaintenanceAction CopyDBClusterParameterGroup CopyDBClusterSnapshot CreateDBCluster CreateDBClusterParameterGroup CreateDBClusterSnapshot CreateDBInstance CreateDBSubnetGroup DeleteDBCluster DeleteDBClusterParameterGroup DeleteDBClusterSnapshot DeleteDBInstance DeleteDBSubnetGroup DescribeDBClusterParameterGroups DescribeDBClusterParameters DescribeDBClusters DescribeDBClusterSnapshotAttributes DescribeDBClusterSnapshots DescribeDBEngineVersions DescribeDBInstances DescribeDBSubnetGroups DescribeEngineDefaultClusterParameters DescribeEventCategories DescribeEvents DescribeOrderableDBInstanceOptions DescribePendingMaintenanceActions FailoverDBCluster ListTagsForResource ModifyDBCluster ModifyDBClusterParameterGroup ModifyDBClusterSnapshotAttribute ModifyDBInstance ModifyDBSubnetGroup RebootDBInstance RemoveTagsFromResource ResetDBClusterParameterGroup RestoreDBClusterFromSnapshot RestoreDBClusterToPointInTime / }

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

=head2 AddTagsToResource

=over

=item ResourceName => Str

=item Tags => ArrayRef[L<Paws::DocDB::Tag>]


=back

Each argument is described in detail in: L<Paws::DocDB::AddTagsToResource>

Returns: nothing

Adds metadata tags to an Amazon DocumentDB resource. You can use these
tags with cost allocation reporting to track costs that are associated
with Amazon DocumentDB resources. or in a C<Condition> statement in an
AWS Identity and Access Management (IAM) policy for Amazon DocumentDB.


=head2 ApplyPendingMaintenanceAction

=over

=item ApplyAction => Str

=item OptInType => Str

=item ResourceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DocDB::ApplyPendingMaintenanceAction>

Returns: a L<Paws::DocDB::ApplyPendingMaintenanceActionResult> instance

Applies a pending maintenance action to a resource (for example, to a
DB instance).


=head2 CopyDBClusterParameterGroup

=over

=item SourceDBClusterParameterGroupIdentifier => Str

=item TargetDBClusterParameterGroupDescription => Str

=item TargetDBClusterParameterGroupIdentifier => Str

=item [Tags => ArrayRef[L<Paws::DocDB::Tag>]]


=back

Each argument is described in detail in: L<Paws::DocDB::CopyDBClusterParameterGroup>

Returns: a L<Paws::DocDB::CopyDBClusterParameterGroupResult> instance

Copies the specified DB cluster parameter group.


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

Copies a snapshot of a DB cluster.

To copy a DB cluster snapshot from a shared manual DB cluster snapshot,
C<SourceDBClusterSnapshotIdentifier> must be the Amazon Resource Name
(ARN) of the shared DB cluster snapshot.

To cancel the copy operation after it is in progress, delete the target
DB cluster snapshot identified by C<TargetDBClusterSnapshotIdentifier>
while that DB cluster snapshot is in the I<copying> status.


=head2 CreateDBCluster

=over

=item DBClusterIdentifier => Str

=item Engine => Str

=item [AvailabilityZones => ArrayRef[Str|Undef]]

=item [BackupRetentionPeriod => Int]

=item [DBClusterParameterGroupName => Str]

=item [DBSubnetGroupName => Str]

=item [EnableCloudwatchLogsExports => ArrayRef[Str|Undef]]

=item [EngineVersion => Str]

=item [KmsKeyId => Str]

=item [MasterUsername => Str]

=item [MasterUserPassword => Str]

=item [Port => Int]

=item [PreferredBackupWindow => Str]

=item [PreferredMaintenanceWindow => Str]

=item [StorageEncrypted => Bool]

=item [Tags => ArrayRef[L<Paws::DocDB::Tag>]]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DocDB::CreateDBCluster>

Returns: a L<Paws::DocDB::CreateDBClusterResult> instance

Creates a new Amazon DocumentDB DB cluster.


=head2 CreateDBClusterParameterGroup

=over

=item DBClusterParameterGroupName => Str

=item DBParameterGroupFamily => Str

=item Description => Str

=item [Tags => ArrayRef[L<Paws::DocDB::Tag>]]


=back

Each argument is described in detail in: L<Paws::DocDB::CreateDBClusterParameterGroup>

Returns: a L<Paws::DocDB::CreateDBClusterParameterGroupResult> instance

Creates a new DB cluster parameter group.

Parameters in a DB cluster parameter group apply to all of the
instances in a DB cluster.

A DB cluster parameter group is initially created with the default
parameters for the database engine used by instances in the DB cluster.
To provide custom values for any of the parameters, you must modify the
group after you create it. After you create a DB cluster parameter
group, you must associate it with your DB cluster. For the new DB
cluster parameter group and associated settings to take effect, you
must then reboot the DB instances in the DB cluster without failover.

After you create a DB cluster parameter group, you should wait at least
5 minutes before creating your first DB cluster that uses that DB
cluster parameter group as the default parameter group. This allows
Amazon DocumentDB to fully complete the create action before the DB
cluster parameter group is used as the default for a new DB cluster.
This step is especially important for parameters that are critical when
creating the default database for a DB cluster, such as the character
set for the default database defined by the C<character_set_database>
parameter.


=head2 CreateDBClusterSnapshot

=over

=item DBClusterIdentifier => Str

=item DBClusterSnapshotIdentifier => Str

=item [Tags => ArrayRef[L<Paws::DocDB::Tag>]]


=back

Each argument is described in detail in: L<Paws::DocDB::CreateDBClusterSnapshot>

Returns: a L<Paws::DocDB::CreateDBClusterSnapshotResult> instance

Creates a snapshot of a DB cluster.


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

Creates a new DB instance.


=head2 CreateDBSubnetGroup

=over

=item DBSubnetGroupDescription => Str

=item DBSubnetGroupName => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [Tags => ArrayRef[L<Paws::DocDB::Tag>]]


=back

Each argument is described in detail in: L<Paws::DocDB::CreateDBSubnetGroup>

Returns: a L<Paws::DocDB::CreateDBSubnetGroupResult> instance

Creates a new DB subnet group. DB subnet groups must contain at least
one subnet in at least two Availability Zones in the AWS Region.


=head2 DeleteDBCluster

=over

=item DBClusterIdentifier => Str

=item [FinalDBSnapshotIdentifier => Str]

=item [SkipFinalSnapshot => Bool]


=back

Each argument is described in detail in: L<Paws::DocDB::DeleteDBCluster>

Returns: a L<Paws::DocDB::DeleteDBClusterResult> instance

Deletes a previously provisioned DB cluster. When you delete a DB
cluster, all automated backups for that DB cluster are deleted and
can't be recovered. Manual DB cluster snapshots of the specified DB
cluster are not deleted.


=head2 DeleteDBClusterParameterGroup

=over

=item DBClusterParameterGroupName => Str


=back

Each argument is described in detail in: L<Paws::DocDB::DeleteDBClusterParameterGroup>

Returns: nothing

Deletes a specified DB cluster parameter group. The DB cluster
parameter group to be deleted can't be associated with any DB clusters.


=head2 DeleteDBClusterSnapshot

=over

=item DBClusterSnapshotIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DocDB::DeleteDBClusterSnapshot>

Returns: a L<Paws::DocDB::DeleteDBClusterSnapshotResult> instance

Deletes a DB cluster snapshot. If the snapshot is being copied, the
copy operation is terminated.

The DB cluster snapshot must be in the C<available> state to be
deleted.


=head2 DeleteDBInstance

=over

=item DBInstanceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DocDB::DeleteDBInstance>

Returns: a L<Paws::DocDB::DeleteDBInstanceResult> instance

Deletes a previously provisioned DB instance.


=head2 DeleteDBSubnetGroup

=over

=item DBSubnetGroupName => Str


=back

Each argument is described in detail in: L<Paws::DocDB::DeleteDBSubnetGroup>

Returns: nothing

Deletes a DB subnet group.

The specified database subnet group must not be associated with any DB
instances.


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
contains only the description of the specified DB cluster parameter
group.


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

Returns the detailed parameter list for a particular DB cluster
parameter group.


=head2 DescribeDBClusters

=over

=item [DBClusterIdentifier => Str]

=item [Filters => ArrayRef[L<Paws::DocDB::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DocDB::DescribeDBClusters>

Returns: a L<Paws::DocDB::DBClusterMessage> instance

Returns information about provisioned Amazon DocumentDB DB clusters.
This API operation supports pagination.


=head2 DescribeDBClusterSnapshotAttributes

=over

=item DBClusterSnapshotIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DocDB::DescribeDBClusterSnapshotAttributes>

Returns: a L<Paws::DocDB::DescribeDBClusterSnapshotAttributesResult> instance

Returns a list of DB cluster snapshot attribute names and values for a
manual DB cluster snapshot.

When you share snapshots with other AWS accounts,
C<DescribeDBClusterSnapshotAttributes> returns the C<restore> attribute
and a list of IDs for the AWS accounts that are authorized to copy or
restore the manual DB cluster snapshot. If C<all> is included in the
list of values for the C<restore> attribute, then the manual DB cluster
snapshot is public and can be copied or restored by all AWS accounts.


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

Returns information about DB cluster snapshots. This API operation
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

Returns a list of the available DB engines.


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

Returns events related to DB instances, DB security groups, DB
snapshots, and DB parameter groups for the past 14 days. You can obtain
events specific to a particular DB instance, DB security group, DB
snapshot, or DB parameter group by providing the name as a parameter.
By default, the events of the past hour are returned.


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

Returns a list of orderable DB instance options for the specified
engine.


=head2 DescribePendingMaintenanceActions

=over

=item [Filters => ArrayRef[L<Paws::DocDB::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [ResourceIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::DocDB::DescribePendingMaintenanceActions>

Returns: a L<Paws::DocDB::PendingMaintenanceActionsMessage> instance

Returns a list of resources (for example, DB instances) that have at
least one pending maintenance action.


=head2 FailoverDBCluster

=over

=item [DBClusterIdentifier => Str]

=item [TargetDBInstanceIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::DocDB::FailoverDBCluster>

Returns: a L<Paws::DocDB::FailoverDBClusterResult> instance

Forces a failover for a DB cluster.

A failover for a DB cluster promotes one of the Amazon DocumentDB
replicas (read-only instances) in the DB cluster to be the primary
instance (the cluster writer).

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

Modifies a setting for an Amazon DocumentDB DB cluster. You can change
one or more database configuration parameters by specifying these
parameters and the new values in the request.


=head2 ModifyDBClusterParameterGroup

=over

=item DBClusterParameterGroupName => Str

=item Parameters => ArrayRef[L<Paws::DocDB::Parameter>]


=back

Each argument is described in detail in: L<Paws::DocDB::ModifyDBClusterParameterGroup>

Returns: a L<Paws::DocDB::DBClusterParameterGroupNameMessage> instance

Modifies the parameters of a DB cluster parameter group. To modify more
than one parameter, submit a list of the following: C<ParameterName>,
C<ParameterValue>, and C<ApplyMethod>. A maximum of 20 parameters can
be modified in a single request.

Changes to dynamic parameters are applied immediately. Changes to
static parameters require a reboot or maintenance window before the
change can take effect.

After you create a DB cluster parameter group, you should wait at least
5 minutes before creating your first DB cluster that uses that DB
cluster parameter group as the default parameter group. This allows
Amazon DocumentDB to fully complete the create action before the
parameter group is used as the default for a new DB cluster. This step
is especially important for parameters that are critical when creating
the default database for a DB cluster, such as the character set for
the default database defined by the C<character_set_database>
parameter.


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
from, a manual DB cluster snapshot.

To share a manual DB cluster snapshot with other AWS accounts, specify
C<restore> as the C<AttributeName>, and use the C<ValuesToAdd>
parameter to add a list of IDs of the AWS accounts that are authorized
to restore the manual DB cluster snapshot. Use the value C<all> to make
the manual DB cluster snapshot public, which means that it can be
copied or restored by all AWS accounts. Do not add the C<all> value for
any manual DB cluster snapshots that contain private information that
you don't want available to all AWS accounts. If a manual DB cluster
snapshot is encrypted, it can be shared, but only by specifying a list
of authorized AWS account IDs for the C<ValuesToAdd> parameter. You
can't use C<all> as a value for that parameter in this case.


=head2 ModifyDBInstance

=over

=item DBInstanceIdentifier => Str

=item [ApplyImmediately => Bool]

=item [AutoMinorVersionUpgrade => Bool]

=item [DBInstanceClass => Str]

=item [NewDBInstanceIdentifier => Str]

=item [PreferredMaintenanceWindow => Str]

=item [PromotionTier => Int]


=back

Each argument is described in detail in: L<Paws::DocDB::ModifyDBInstance>

Returns: a L<Paws::DocDB::ModifyDBInstanceResult> instance

Modifies settings for a DB instance. You can change one or more
database configuration parameters by specifying these parameters and
the new values in the request.


=head2 ModifyDBSubnetGroup

=over

=item DBSubnetGroupName => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [DBSubnetGroupDescription => Str]


=back

Each argument is described in detail in: L<Paws::DocDB::ModifyDBSubnetGroup>

Returns: a L<Paws::DocDB::ModifyDBSubnetGroupResult> instance

Modifies an existing DB subnet group. DB subnet groups must contain at
least one subnet in at least two Availability Zones in the AWS Region.


=head2 RebootDBInstance

=over

=item DBInstanceIdentifier => Str

=item [ForceFailover => Bool]


=back

Each argument is described in detail in: L<Paws::DocDB::RebootDBInstance>

Returns: a L<Paws::DocDB::RebootDBInstanceResult> instance

You might need to reboot your DB instance, usually for maintenance
reasons. For example, if you make certain changes, or if you change the
DB cluster parameter group that is associated with the DB instance, you
must reboot the instance for the changes to take effect.

Rebooting a DB instance restarts the database engine service. Rebooting
a DB instance results in a momentary outage, during which the DB
instance status is set to I<rebooting>.


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

Modifies the parameters of a DB cluster parameter group to the default
value. To reset specific parameters, submit a list of the following:
C<ParameterName> and C<ApplyMethod>. To reset the entire DB cluster
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

=item [EnableCloudwatchLogsExports => ArrayRef[Str|Undef]]

=item [EngineVersion => Str]

=item [KmsKeyId => Str]

=item [Port => Int]

=item [Tags => ArrayRef[L<Paws::DocDB::Tag>]]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DocDB::RestoreDBClusterFromSnapshot>

Returns: a L<Paws::DocDB::RestoreDBClusterFromSnapshotResult> instance

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

Restores a DB cluster to an arbitrary point in time. Users can restore
to any point in time before C<LatestRestorableTime> for up to
C<BackupRetentionPeriod> days. The target DB cluster is created from
the source DB cluster with the same configuration as the original DB
cluster, except that the new DB cluster is created with the default DB
security group.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllDBClusters(sub { },[DBClusterIdentifier => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllDBClusters([DBClusterIdentifier => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DBClusters, passing the object as the first parameter, and the string 'DBClusters' as the second parameter 

If not, it will return a a L<Paws::DocDB::DBClusterMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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


=head2 DescribeAllOrderableDBInstanceOptions(sub { },Engine => Str, [DBInstanceClass => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], LicenseModel => Str, Marker => Str, MaxRecords => Int, Vpc => Bool])

=head2 DescribeAllOrderableDBInstanceOptions(Engine => Str, [DBInstanceClass => Str, EngineVersion => Str, Filters => ArrayRef[L<Paws::DocDB::Filter>], LicenseModel => Str, Marker => Str, MaxRecords => Int, Vpc => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OrderableDBInstanceOptions, passing the object as the first parameter, and the string 'OrderableDBInstanceOptions' as the second parameter 

If not, it will return a a L<Paws::DocDB::OrderableDBInstanceOptionsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

