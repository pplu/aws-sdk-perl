package Paws::Neptune::DBCluster;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AssociatedRoles => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::DBClusterRole]', request_name => 'DBClusterRole', traits => ['NameInRequest']);
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'AvailabilityZone', traits => ['NameInRequest']);
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has CloneGroupId => (is => 'ro', isa => 'Str');
  has ClusterCreateTime => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DBClusterArn => (is => 'ro', isa => 'Str');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has DBClusterMembers => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::DBClusterMember]', request_name => 'DBClusterMember', traits => ['NameInRequest']);
  has DBClusterOptionGroupMemberships => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::DBClusterOptionGroupStatus]', request_name => 'DBClusterOptionGroup', traits => ['NameInRequest']);
  has DBClusterParameterGroup => (is => 'ro', isa => 'Str');
  has DbClusterResourceId => (is => 'ro', isa => 'Str');
  has DBSubnetGroup => (is => 'ro', isa => 'Str');
  has EarliestRestorableTime => (is => 'ro', isa => 'Str');
  has Endpoint => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has HostedZoneId => (is => 'ro', isa => 'Str');
  has IAMDatabaseAuthenticationEnabled => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LatestRestorableTime => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has PercentProgress => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ReaderEndpoint => (is => 'ro', isa => 'Str');
  has ReadReplicaIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ReadReplicaIdentifier', traits => ['NameInRequest']);
  has ReplicationSourceIdentifier => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
  has VpcSecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::VpcSecurityGroupMembership]', request_name => 'VpcSecurityGroupMembership', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DBCluster

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Neptune::DBCluster object:

  $service_obj->Method(Att1 => { AllocatedStorage => $value, ..., VpcSecurityGroups => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Neptune::DBCluster object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocatedStorage

=head1 DESCRIPTION

Contains the details of an Amazon Neptune DB cluster.

This data type is used as a response element in the DescribeDBClusters
action.

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

  C<AllocatedStorage> always returns 1, because Neptune DB cluster
storage size is not fixed, but instead automatically adjusts as needed.


=head2 AssociatedRoles => ArrayRef[L<Paws::Neptune::DBClusterRole>]

  Provides a list of the AWS Identity and Access Management (IAM) roles
that are associated with the DB cluster. IAM roles that are associated
with a DB cluster grant permission for the DB cluster to access other
AWS services on your behalf.


=head2 AvailabilityZones => ArrayRef[Str|Undef]

  Provides the list of EC2 Availability Zones that instances in the DB
cluster can be created in.


=head2 BackupRetentionPeriod => Int

  Specifies the number of days for which automatic DB snapshots are
retained.


=head2 CharacterSetName => Str

  If present, specifies the name of the character set that this cluster
is associated with.


=head2 CloneGroupId => Str

  Identifies the clone group to which the DB cluster is associated.


=head2 ClusterCreateTime => Str

  Specifies the time when the DB cluster was created, in Universal
Coordinated Time (UTC).


=head2 DatabaseName => Str

  Contains the name of the initial database of this DB cluster that was
provided at create time, if one was specified when the DB cluster was
created. This same name is returned for the life of the DB cluster.


=head2 DBClusterArn => Str

  The Amazon Resource Name (ARN) for the DB cluster.


=head2 DBClusterIdentifier => Str

  Contains a user-supplied DB cluster identifier. This identifier is the
unique key that identifies a DB cluster.


=head2 DBClusterMembers => ArrayRef[L<Paws::Neptune::DBClusterMember>]

  Provides the list of instances that make up the DB cluster.


=head2 DBClusterOptionGroupMemberships => ArrayRef[L<Paws::Neptune::DBClusterOptionGroupStatus>]

  Provides the list of option group memberships for this DB cluster.


=head2 DBClusterParameterGroup => Str

  Specifies the name of the DB cluster parameter group for the DB
cluster.


=head2 DbClusterResourceId => Str

  The AWS Region-unique, immutable identifier for the DB cluster. This
identifier is found in AWS CloudTrail log entries whenever the AWS KMS
key for the DB cluster is accessed.


=head2 DBSubnetGroup => Str

  Specifies information on the subnet group associated with the DB
cluster, including the name, description, and subnets in the subnet
group.


=head2 EarliestRestorableTime => Str

  Specifies the earliest time to which a database can be restored with
point-in-time restore.


=head2 Endpoint => Str

  Specifies the connection endpoint for the primary instance of the DB
cluster.


=head2 Engine => Str

  Provides the name of the database engine to be used for this DB
cluster.


=head2 EngineVersion => Str

  Indicates the database engine version.


=head2 HostedZoneId => Str

  Specifies the ID that Amazon Route 53 assigns when you create a hosted
zone.


=head2 IAMDatabaseAuthenticationEnabled => Bool

  True if mapping of AWS Identity and Access Management (IAM) accounts to
database accounts is enabled, and otherwise false.


=head2 KmsKeyId => Str

  If C<StorageEncrypted> is true, the AWS KMS key identifier for the
encrypted DB cluster.


=head2 LatestRestorableTime => Str

  Specifies the latest time to which a database can be restored with
point-in-time restore.


=head2 MasterUsername => Str

  Contains the master username for the DB cluster.


=head2 MultiAZ => Bool

  Specifies whether the DB cluster has instances in multiple Availability
Zones.


=head2 PercentProgress => Str

  Specifies the progress of the operation as a percentage.


=head2 Port => Int

  Specifies the port that the database engine is listening on.


=head2 PreferredBackupWindow => Str

  Specifies the daily time range during which automated backups are
created if automated backups are enabled, as determined by the
C<BackupRetentionPeriod>.


=head2 PreferredMaintenanceWindow => Str

  Specifies the weekly time range during which system maintenance can
occur, in Universal Coordinated Time (UTC).


=head2 ReaderEndpoint => Str

  The reader endpoint for the DB cluster. The reader endpoint for a DB
cluster load-balances connections across the Read Replicas that are
available in a DB cluster. As clients request new connections to the
reader endpoint, Neptune distributes the connection requests among the
Read Replicas in the DB cluster. This functionality can help balance
your read workload across multiple Read Replicas in your DB cluster.

If a failover occurs, and the Read Replica that you are connected to is
promoted to be the primary instance, your connection is dropped. To
continue sending your read workload to other Read Replicas in the
cluster, you can then reconnect to the reader endpoint.


=head2 ReadReplicaIdentifiers => ArrayRef[Str|Undef]

  Contains one or more identifiers of the Read Replicas associated with
this DB cluster.


=head2 ReplicationSourceIdentifier => Str

  Contains the identifier of the source DB cluster if this DB cluster is
a Read Replica.


=head2 Status => Str

  Specifies the current state of this DB cluster.


=head2 StorageEncrypted => Bool

  Specifies whether the DB cluster is encrypted.


=head2 VpcSecurityGroups => ArrayRef[L<Paws::Neptune::VpcSecurityGroupMembership>]

  Provides a list of VPC security groups that the DB cluster belongs to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

