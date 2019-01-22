package Paws::DocDB::DBInstance;
  use Moose;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has DBInstanceArn => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DBInstanceStatus => (is => 'ro', isa => 'Str');
  has DbiResourceId => (is => 'ro', isa => 'Str');
  has DBSubnetGroup => (is => 'ro', isa => 'Paws::DocDB::DBSubnetGroup');
  has EnabledCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Endpoint => (is => 'ro', isa => 'Paws::DocDB::Endpoint');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has InstanceCreateTime => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LatestRestorableTime => (is => 'ro', isa => 'Str');
  has PendingModifiedValues => (is => 'ro', isa => 'Paws::DocDB::PendingModifiedValues');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PromotionTier => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has StatusInfos => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::DBInstanceStatusInfo]', request_name => 'DBInstanceStatusInfo', traits => ['NameInRequest']);
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
  has VpcSecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::VpcSecurityGroupMembership]', request_name => 'VpcSecurityGroupMembership', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DBInstance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DocDB::DBInstance object:

  $service_obj->Method(Att1 => { AutoMinorVersionUpgrade => $value, ..., VpcSecurityGroups => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DocDB::DBInstance object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoMinorVersionUpgrade

=head1 DESCRIPTION

Detailed information about a DB instance.

=head1 ATTRIBUTES


=head2 AutoMinorVersionUpgrade => Bool

  Indicates that minor version patches are applied automatically.


=head2 AvailabilityZone => Str

  Specifies the name of the Availability Zone that the DB instance is
located in.


=head2 BackupRetentionPeriod => Int

  Specifies the number of days for which automatic DB snapshots are
retained.


=head2 DBClusterIdentifier => Str

  Contains the name of the DB cluster that the DB instance is a member of
if the DB instance is a member of a DB cluster.


=head2 DBInstanceArn => Str

  The Amazon Resource Name (ARN) for the DB instance.


=head2 DBInstanceClass => Str

  Contains the name of the compute and memory capacity class of the DB
instance.


=head2 DBInstanceIdentifier => Str

  Contains a user-provided database identifier. This identifier is the
unique key that identifies a DB instance.


=head2 DBInstanceStatus => Str

  Specifies the current state of this database.


=head2 DbiResourceId => Str

  The AWS Region-unique, immutable identifier for the DB instance. This
identifier is found in AWS CloudTrail log entries whenever the AWS KMS
key for the DB instance is accessed.


=head2 DBSubnetGroup => L<Paws::DocDB::DBSubnetGroup>

  Specifies information on the subnet group that is associated with the
DB instance, including the name, description, and subnets in the subnet
group.


=head2 EnabledCloudwatchLogsExports => ArrayRef[Str|Undef]

  A list of log types that this DB instance is configured to export to
Amazon CloudWatch Logs.


=head2 Endpoint => L<Paws::DocDB::Endpoint>

  Specifies the connection endpoint.


=head2 Engine => Str

  Provides the name of the database engine to be used for this DB
instance.


=head2 EngineVersion => Str

  Indicates the database engine version.


=head2 InstanceCreateTime => Str

  Provides the date and time that the DB instance was created.


=head2 KmsKeyId => Str

  If C<StorageEncrypted> is C<true>, the AWS KMS key identifier for the
encrypted DB instance.


=head2 LatestRestorableTime => Str

  Specifies the latest time to which a database can be restored with
point-in-time restore.


=head2 PendingModifiedValues => L<Paws::DocDB::PendingModifiedValues>

  Specifies that changes to the DB instance are pending. This element is
included only when changes are pending. Specific changes are identified
by subelements.


=head2 PreferredBackupWindow => Str

  Specifies the daily time range during which automated backups are
created if automated backups are enabled, as determined by the
C<BackupRetentionPeriod>.


=head2 PreferredMaintenanceWindow => Str

  Specifies the weekly time range during which system maintenance can
occur, in Universal Coordinated Time (UTC).


=head2 PromotionTier => Int

  A value that specifies the order in which an Amazon DocumentDB replica
is promoted to the primary instance after a failure of the existing
primary instance.


=head2 PubliclyAccessible => Bool

  Specifies the availability options for the DB instance. A value of
C<true> specifies an internet-facing instance with a publicly
resolvable DNS name, which resolves to a public IP address. A value of
C<false> specifies an internal instance with a DNS name that resolves
to a private IP address.


=head2 StatusInfos => ArrayRef[L<Paws::DocDB::DBInstanceStatusInfo>]

  The status of a read replica. If the instance is not a read replica,
this is blank.


=head2 StorageEncrypted => Bool

  Specifies whether the DB instance is encrypted.


=head2 VpcSecurityGroups => ArrayRef[L<Paws::DocDB::VpcSecurityGroupMembership>]

  Provides a list of VPC security group elements that the DB instance
belongs to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

