package Paws::RDS::DBInstance;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CACertificateIdentifier => (is => 'ro', isa => 'Str');
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has DBInstanceArn => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DbInstancePort => (is => 'ro', isa => 'Int');
  has DBInstanceStatus => (is => 'ro', isa => 'Str');
  has DbiResourceId => (is => 'ro', isa => 'Str');
  has DBName => (is => 'ro', isa => 'Str');
  has DBParameterGroups => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBParameterGroupStatus]', request_name => 'DBParameterGroup', traits => ['NameInRequest']);
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBSecurityGroupMembership]', request_name => 'DBSecurityGroup', traits => ['NameInRequest']);
  has DBSubnetGroup => (is => 'ro', isa => 'Paws::RDS::DBSubnetGroup');
  has DomainMemberships => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DomainMembership]', request_name => 'DomainMembership', traits => ['NameInRequest']);
  has Endpoint => (is => 'ro', isa => 'Paws::RDS::Endpoint');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has EnhancedMonitoringResourceArn => (is => 'ro', isa => 'Str');
  has InstanceCreateTime => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LatestRestorableTime => (is => 'ro', isa => 'Str');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has MonitoringInterval => (is => 'ro', isa => 'Int');
  has MonitoringRoleArn => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has OptionGroupMemberships => (is => 'ro', isa => 'ArrayRef[Paws::RDS::OptionGroupMembership]', request_name => 'OptionGroupMembership', traits => ['NameInRequest']);
  has PendingModifiedValues => (is => 'ro', isa => 'Paws::RDS::PendingModifiedValues');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PromotionTier => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has ReadReplicaDBClusterIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ReadReplicaDBClusterIdentifier', traits => ['NameInRequest']);
  has ReadReplicaDBInstanceIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ReadReplicaDBInstanceIdentifier', traits => ['NameInRequest']);
  has ReadReplicaSourceDBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has SecondaryAvailabilityZone => (is => 'ro', isa => 'Str');
  has StatusInfos => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBInstanceStatusInfo]', request_name => 'DBInstanceStatusInfo', traits => ['NameInRequest']);
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
  has StorageType => (is => 'ro', isa => 'Str');
  has TdeCredentialArn => (is => 'ro', isa => 'Str');
  has Timezone => (is => 'ro', isa => 'Str');
  has VpcSecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::RDS::VpcSecurityGroupMembership]', request_name => 'VpcSecurityGroupMembership', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBInstance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DBInstance object:

  $service_obj->Method(Att1 => { AllocatedStorage => $value, ..., VpcSecurityGroups => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DBInstance object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocatedStorage

=head1 DESCRIPTION

Contains the result of a successful invocation of the following
actions:

=over

=item *

CreateDBInstance

=item *

DeleteDBInstance

=item *

ModifyDBInstance

=back

This data type is used as a response element in the DescribeDBInstances
action.

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

  Specifies the allocated storage size specified in gigabytes.


=head2 AutoMinorVersionUpgrade => Bool

  Indicates that minor version patches are applied automatically.


=head2 AvailabilityZone => Str

  Specifies the name of the Availability Zone the DB instance is located
in.


=head2 BackupRetentionPeriod => Int

  Specifies the number of days for which automatic DB snapshots are
retained.


=head2 CACertificateIdentifier => Str

  The identifier of the CA certificate for this DB instance.


=head2 CharacterSetName => Str

  If present, specifies the name of the character set that this instance
is associated with.


=head2 CopyTagsToSnapshot => Bool

  Specifies whether tags are copied from the DB instance to snapshots of
the DB instance.


=head2 DBClusterIdentifier => Str

  If the DB instance is a member of a DB cluster, contains the name of
the DB cluster that the DB instance is a member of.


=head2 DBInstanceArn => Str

  The Amazon Resource Name (ARN) for the DB instance.


=head2 DBInstanceClass => Str

  Contains the name of the compute and memory capacity class of the DB
instance.


=head2 DBInstanceIdentifier => Str

  Contains a user-supplied database identifier. This identifier is the
unique key that identifies a DB instance.


=head2 DbInstancePort => Int

  Specifies the port that the DB instance listens on. If the DB instance
is part of a DB cluster, this can be a different port than the DB
cluster port.


=head2 DBInstanceStatus => Str

  Specifies the current state of this database.


=head2 DbiResourceId => Str

  The region-unique, immutable identifier for the DB instance. This
identifier is found in AWS CloudTrail log entries whenever the KMS key
for the DB instance is accessed.


=head2 DBName => Str

  The meaning of this parameter differs according to the database engine
you use. For example, this value returns MySQL, MariaDB, or PostgreSQL
information when returning values from CreateDBInstanceReadReplica
since Read Replicas are only supported for these engines.

B<MySQL, MariaDB, SQL Server, PostgreSQL, Amazon Aurora>

Contains the name of the initial database of this instance that was
provided at create time, if one was specified when the DB instance was
created. This same name is returned for the life of the DB instance.

Type: String

B<Oracle>

Contains the Oracle System ID (SID) of the created DB instance. Not
shown when the returned parameters do not apply to an Oracle DB
instance.


=head2 DBParameterGroups => ArrayRef[L<Paws::RDS::DBParameterGroupStatus>]

  Provides the list of DB parameter groups applied to this DB instance.


=head2 DBSecurityGroups => ArrayRef[L<Paws::RDS::DBSecurityGroupMembership>]

  Provides List of DB security group elements containing only
C<DBSecurityGroup.Name> and C<DBSecurityGroup.Status> subelements.


=head2 DBSubnetGroup => L<Paws::RDS::DBSubnetGroup>

  Specifies information on the subnet group associated with the DB
instance, including the name, description, and subnets in the subnet
group.


=head2 DomainMemberships => ArrayRef[L<Paws::RDS::DomainMembership>]

  The Active Directory Domain membership records associated with the DB
instance.


=head2 Endpoint => L<Paws::RDS::Endpoint>

  Specifies the connection endpoint.


=head2 Engine => Str

  Provides the name of the database engine to be used for this DB
instance.


=head2 EngineVersion => Str

  Indicates the database engine version.


=head2 EnhancedMonitoringResourceArn => Str

  The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log stream
that receives the Enhanced Monitoring metrics data for the DB instance.


=head2 InstanceCreateTime => Str

  Provides the date and time the DB instance was created.


=head2 Iops => Int

  Specifies the Provisioned IOPS (I/O operations per second) value.


=head2 KmsKeyId => Str

  If C<StorageEncrypted> is true, the KMS key identifier for the
encrypted DB instance.


=head2 LatestRestorableTime => Str

  Specifies the latest time to which a database can be restored with
point-in-time restore.


=head2 LicenseModel => Str

  License model information for this DB instance.


=head2 MasterUsername => Str

  Contains the master username for the DB instance.


=head2 MonitoringInterval => Int

  The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the DB instance.


=head2 MonitoringRoleArn => Str

  The ARN for the IAM role that permits RDS to send Enhanced Monitoring
metrics to CloudWatch Logs.


=head2 MultiAZ => Bool

  Specifies if the DB instance is a Multi-AZ deployment.


=head2 OptionGroupMemberships => ArrayRef[L<Paws::RDS::OptionGroupMembership>]

  Provides the list of option group memberships for this DB instance.


=head2 PendingModifiedValues => L<Paws::RDS::PendingModifiedValues>

  Specifies that changes to the DB instance are pending. This element is
only included when changes are pending. Specific changes are identified
by subelements.


=head2 PreferredBackupWindow => Str

  Specifies the daily time range during which automated backups are
created if automated backups are enabled, as determined by the
C<BackupRetentionPeriod>.


=head2 PreferredMaintenanceWindow => Str

  Specifies the weekly time range during which system maintenance can
occur, in Universal Coordinated Time (UTC).


=head2 PromotionTier => Int

  A value that specifies the order in which an Aurora Replica is promoted
to the primary instance after a failure of the existing primary
instance. For more information, see Fault Tolerance for an Aurora DB
Cluster.


=head2 PubliclyAccessible => Bool

  Specifies the accessibility options for the DB instance. A value of
true specifies an Internet-facing instance with a publicly resolvable
DNS name, which resolves to a public IP address. A value of false
specifies an internal instance with a DNS name that resolves to a
private IP address.

Default: The default behavior varies depending on whether a VPC has
been requested or not. The following list shows the default behavior in
each case.

=over

=item *

B<Default VPC:>true

=item *

B<VPC:>false

=back

If no DB subnet group has been specified as part of the request and the
PubliclyAccessible value has not been set, the DB instance will be
publicly accessible. If a specific DB subnet group has been specified
as part of the request and the PubliclyAccessible value has not been
set, the DB instance will be private.


=head2 ReadReplicaDBClusterIdentifiers => ArrayRef[Str|Undef]

  Contains one or more identifiers of Aurora DB clusters that are Read
Replicas of this DB instance.


=head2 ReadReplicaDBInstanceIdentifiers => ArrayRef[Str|Undef]

  Contains one or more identifiers of the Read Replicas associated with
this DB instance.


=head2 ReadReplicaSourceDBInstanceIdentifier => Str

  Contains the identifier of the source DB instance if this DB instance
is a Read Replica.


=head2 SecondaryAvailabilityZone => Str

  If present, specifies the name of the secondary Availability Zone for a
DB instance with multi-AZ support.


=head2 StatusInfos => ArrayRef[L<Paws::RDS::DBInstanceStatusInfo>]

  The status of a Read Replica. If the instance is not a Read Replica,
this will be blank.


=head2 StorageEncrypted => Bool

  Specifies whether the DB instance is encrypted.


=head2 StorageType => Str

  Specifies the storage type associated with DB instance.


=head2 TdeCredentialArn => Str

  The ARN from the key store with which the instance is associated for
TDE encryption.


=head2 Timezone => Str

  The time zone of the DB instance. In most cases, the C<Timezone>
element is empty. C<Timezone> content appears only for Microsoft SQL
Server DB instances that were created with a time zone specified.


=head2 VpcSecurityGroups => ArrayRef[L<Paws::RDS::VpcSecurityGroupMembership>]

  Provides a list of VPC security group elements that the DB instance
belongs to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

