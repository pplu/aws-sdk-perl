package Paws::RDS::DBCluster;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DBClusterArn => (is => 'ro', isa => 'Str');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has DBClusterMembers => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBClusterMember]');
  has DBClusterOptionGroupMemberships => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBClusterOptionGroupStatus]');
  has DBClusterParameterGroup => (is => 'ro', isa => 'Str');
  has DbClusterResourceId => (is => 'ro', isa => 'Str');
  has DBSubnetGroup => (is => 'ro', isa => 'Str');
  has EarliestRestorableTime => (is => 'ro', isa => 'Str');
  has Endpoint => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has HostedZoneId => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LatestRestorableTime => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has PercentProgress => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ReaderEndpoint => (is => 'ro', isa => 'Str');
  has ReadReplicaIdentifiers => (is => 'ro', isa => 'ArrayRef[Str]');
  has ReplicationSourceIdentifier => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
  has VpcSecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::RDS::VpcSecurityGroupMembership]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBCluster

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DBCluster object:

  $service_obj->Method(Att1 => { AllocatedStorage => $value, ..., VpcSecurityGroups => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DBCluster object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocatedStorage

=head1 DESCRIPTION

Contains the result of a successful invocation of the following
actions:

=over

=item *

CreateDBCluster

=item *

DeleteDBCluster

=item *

FailoverDBCluster

=item *

ModifyDBCluster

=item *

RestoreDBClusterFromSnapshot

=item *

RestoreDBClusterToPointInTime

=back

This data type is used as a response element in the DescribeDBClusters
action.

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

  Specifies the allocated storage size in gigabytes (GB).


=head2 AvailabilityZones => ArrayRef[Str]

  Provides the list of EC2 Availability Zones that instances in the DB
cluster can be created in.


=head2 BackupRetentionPeriod => Int

  Specifies the number of days for which automatic DB snapshots are
retained.


=head2 CharacterSetName => Str

  If present, specifies the name of the character set that this cluster
is associated with.


=head2 DatabaseName => Str

  Contains the name of the initial database of this DB cluster that was
provided at create time, if one was specified when the DB cluster was
created. This same name is returned for the life of the DB cluster.


=head2 DBClusterArn => Str

  The Amazon Resource Name (ARN) for the DB cluster.


=head2 DBClusterIdentifier => Str

  Contains a user-supplied DB cluster identifier. This identifier is the
unique key that identifies a DB cluster.


=head2 DBClusterMembers => ArrayRef[L<Paws::RDS::DBClusterMember>]

  Provides the list of instances that make up the DB cluster.


=head2 DBClusterOptionGroupMemberships => ArrayRef[L<Paws::RDS::DBClusterOptionGroupStatus>]

  Provides the list of option group memberships for this DB cluster.


=head2 DBClusterParameterGroup => Str

  Specifies the name of the DB cluster parameter group for the DB
cluster.


=head2 DbClusterResourceId => Str

  The region-unique, immutable identifier for the DB cluster. This
identifier is found in AWS CloudTrail log entries whenever the KMS key
for the DB cluster is accessed.


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


=head2 KmsKeyId => Str

  If C<StorageEncrypted> is true, the KMS key identifier for the
encrypted DB cluster.


=head2 LatestRestorableTime => Str

  Specifies the latest time to which a database can be restored with
point-in-time restore.


=head2 MasterUsername => Str

  Contains the master username for the DB cluster.


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
cluster load-balances connections across the Aurora Replicas that are
available in a DB cluster. As clients request new connections to the
reader endpoint, Aurora distributes the connection requests among the
Aurora Replicas in the DB cluster. This functionality can help balance
your read workload across multiple Aurora Replicas in your DB cluster.

If a failover occurs, and the Aurora Replica that you are connected to
is promoted to be the primary instance, your connection will be
dropped. To continue sending your read workload to other Aurora
Replicas in the cluster, you can then recoonect to the reader endpoint.


=head2 ReadReplicaIdentifiers => ArrayRef[Str]

  Contains one or more identifiers of the Read Replicas associated with
this DB cluster.


=head2 ReplicationSourceIdentifier => Str

  Contains the identifier of the source DB cluster if this DB cluster is
a Read Replica.


=head2 Status => Str

  Specifies the current state of this DB cluster.


=head2 StorageEncrypted => Bool

  Specifies whether the DB cluster is encrypted.


=head2 VpcSecurityGroups => ArrayRef[L<Paws::RDS::VpcSecurityGroupMembership>]

  Provides a list of VPC security groups that the DB cluster belongs to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

