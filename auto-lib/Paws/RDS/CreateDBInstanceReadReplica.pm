
package Paws::RDS::CreateDBInstanceReadReplica;
  use Moose;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has Domain => (is => 'ro', isa => 'Str');
  has DomainIAMRoleName => (is => 'ro', isa => 'Str');
  has EnableCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has EnablePerformanceInsights => (is => 'ro', isa => 'Bool');
  has Iops => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MaxAllocatedStorage => (is => 'ro', isa => 'Int');
  has MonitoringInterval => (is => 'ro', isa => 'Int');
  has MonitoringRoleArn => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has PerformanceInsightsKMSKeyId => (is => 'ro', isa => 'Str');
  has PerformanceInsightsRetentionPeriod => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has PreSignedUrl => (is => 'ro', isa => 'Str');
  has ProcessorFeatures => (is => 'ro', isa => 'ArrayRef[Paws::RDS::ProcessorFeature]');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has ReplicaMode => (is => 'ro', isa => 'Str');
  has SourceDBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has UseDefaultProcessorFeatures => (is => 'ro', isa => 'Bool');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceReadReplica');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CreateDBInstanceReadReplicaResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceReadReplicaResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBInstanceReadReplica - Arguments for method CreateDBInstanceReadReplica on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBInstanceReadReplica on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CreateDBInstanceReadReplica.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBInstanceReadReplica.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To create a DB instance read replica.
    # This example creates a DB instance read replica.
    my $CreateDBInstanceReadReplicaResult = $rds->CreateDBInstanceReadReplica(
      'AvailabilityZone'           => 'us-east-1a',
      'CopyTagsToSnapshot'         => 1,
      'DBInstanceClass'            => 'db.t2.micro',
      'DBInstanceIdentifier'       => 'mydbreadreplica',
      'PubliclyAccessible'         => 1,
      'SourceDBInstanceIdentifier' => 'mymysqlinstance',
      'StorageType'                => 'gp2',
      'Tags'                       => [

        {
          'Key'   => 'mydbreadreplicakey',
          'Value' => 'mydbreadreplicavalue'
        }
      ]
    );

    # Results:
    my $DBInstance = $CreateDBInstanceReadReplicaResult->DBInstance;

    # Returns a L<Paws::RDS::CreateDBInstanceReadReplicaResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBInstanceReadReplica>

=head1 ATTRIBUTES


=head2 AutoMinorVersionUpgrade => Bool

A value that indicates whether minor engine upgrades are applied
automatically to the read replica during the maintenance window.

Default: Inherits from the source DB instance



=head2 AvailabilityZone => Str

The Availability Zone (AZ) where the read replica will be created.

Default: A random, system-chosen Availability Zone in the endpoint's
Amazon Web Services Region.

Example: C<us-east-1d>



=head2 CopyTagsToSnapshot => Bool

A value that indicates whether to copy all tags from the read replica
to snapshots of the read replica. By default, tags are not copied.



=head2 DBInstanceClass => Str

The compute and memory capacity of the read replica, for example,
C<db.m4.large>. Not all DB instance classes are available in all Amazon
Web Services Regions, or for all database engines. For the full list of
DB instance classes, and availability for your engine, see DB Instance
Class
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html)
in the I<Amazon RDS User Guide.>

Default: Inherits from the source DB instance.



=head2 B<REQUIRED> DBInstanceIdentifier => Str

The DB instance identifier of the read replica. This identifier is the
unique key that identifies a DB instance. This parameter is stored as a
lowercase string.



=head2 DBParameterGroupName => Str

The name of the DB parameter group to associate with this DB instance.

If you do not specify a value for C<DBParameterGroupName>, then Amazon
RDS uses the C<DBParameterGroup> of source DB instance for a same
region read replica, or the default C<DBParameterGroup> for the
specified DB engine for a cross region read replica.

Currently, specifying a parameter group for this operation is only
supported for Oracle DB instances.

Constraints:

=over

=item *

Must be 1 to 255 letters, numbers, or hyphens.

=item *

First character must be a letter

=item *

Can't end with a hyphen or contain two consecutive hyphens

=back




=head2 DBSubnetGroupName => Str

Specifies a DB subnet group for the DB instance. The new DB instance is
created in the VPC associated with the DB subnet group. If no DB subnet
group is specified, then the new DB instance isn't created in a VPC.

Constraints:

=over

=item *

Can only be specified if the source DB instance identifier specifies a
DB instance in another Amazon Web Services Region.

=item *

If supplied, must match the name of an existing DBSubnetGroup.

=item *

The specified DB subnet group must be in the same Amazon Web Services
Region in which the operation is running.

=item *

All read replicas in one Amazon Web Services Region that are created
from the same source DB instance must either:E<gt>

=over

=item *

Specify DB subnet groups from the same VPC. All these read replicas are
created in the same VPC.

=item *

Not specify a DB subnet group. All these read replicas are created
outside of any VPC.

=back

=back

Example: C<mySubnetgroup>



=head2 DeletionProtection => Bool

A value that indicates whether the DB instance has deletion protection
enabled. The database can't be deleted when deletion protection is
enabled. By default, deletion protection is disabled. For more
information, see Deleting a DB Instance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html).



=head2 Domain => Str

The Active Directory directory ID to create the DB instance in.
Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB
instances can be created in an Active Directory Domain.

For more information, see Kerberos Authentication
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html)
in the I<Amazon RDS User Guide>.



=head2 DomainIAMRoleName => Str

Specify the name of the IAM role to be used when making API calls to
the Directory Service.



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of logs that the new DB instance is to export to CloudWatch
Logs. The values in the list depend on the DB engine being used. For
more information, see Publishing Database Logs to Amazon CloudWatch
Logs
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
in the I<Amazon RDS User Guide>.



=head2 EnableIAMDatabaseAuthentication => Bool

A value that indicates whether to enable mapping of Amazon Web Services
Identity and Access Management (IAM) accounts to database accounts. By
default, mapping is disabled.

For more information about IAM database authentication, see IAM
Database Authentication for MySQL and PostgreSQL
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html)
in the I<Amazon RDS User Guide.>



=head2 EnablePerformanceInsights => Bool

A value that indicates whether to enable Performance Insights for the
read replica.

For more information, see Using Amazon Performance Insights
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html)
in the I<Amazon RDS User Guide>.



=head2 Iops => Int

The amount of Provisioned IOPS (input/output operations per second) to
be initially allocated for the DB instance.



=head2 KmsKeyId => Str

The Amazon Web Services KMS key identifier for an encrypted read
replica.

The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the Amazon Web Services KMS CMK.

If you create an encrypted read replica in the same Amazon Web Services
Region as the source DB instance, then do not specify a value for this
parameter. A read replica in the same Region is always encrypted with
the same Amazon Web Services KMS CMK as the source DB instance.

If you create an encrypted read replica in a different Amazon Web
Services Region, then you must specify a Amazon Web Services KMS key
identifier for the destination Amazon Web Services Region. Amazon Web
Services KMS CMKs are specific to the Amazon Web Services Region that
they are created in, and you can't use CMKs from one Amazon Web
Services Region in another Amazon Web Services Region.

You can't create an encrypted read replica from an unencrypted DB
instance.



=head2 MaxAllocatedStorage => Int

The upper limit to which Amazon RDS can automatically scale the storage
of the DB instance.

For more information about this setting, including limitations that
apply to it, see Managing capacity automatically with Amazon RDS
storage autoscaling
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling)
in the I<Amazon RDS User Guide>.



=head2 MonitoringInterval => Int

The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the read replica. To disable collecting
Enhanced Monitoring metrics, specify 0. The default is 0.

If C<MonitoringRoleArn> is specified, then you must also set
C<MonitoringInterval> to a value other than 0.

Valid Values: C<0, 1, 5, 10, 15, 30, 60>



=head2 MonitoringRoleArn => Str

The ARN for the IAM role that permits RDS to send enhanced monitoring
metrics to Amazon CloudWatch Logs. For example,
C<arn:aws:iam:123456789012:role/emaccess>. For information on creating
a monitoring role, go to To create an IAM role for Amazon RDS Enhanced
Monitoring
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole)
in the I<Amazon RDS User Guide>.

If C<MonitoringInterval> is set to a value other than 0, then you must
supply a C<MonitoringRoleArn> value.



=head2 MultiAZ => Bool

A value that indicates whether the read replica is in a Multi-AZ
deployment.

You can create a read replica as a Multi-AZ DB instance. RDS creates a
standby of your replica in another Availability Zone for failover
support for the replica. Creating your read replica as a Multi-AZ DB
instance is independent of whether the source database is a Multi-AZ DB
instance.



=head2 OptionGroupName => Str

The option group the DB instance is associated with. If omitted, the
option group associated with the source instance is used.

For SQL Server, you must use the option group associated with the
source instance.



=head2 PerformanceInsightsKMSKeyId => Str

The Amazon Web Services KMS key identifier for encryption of
Performance Insights data.

The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the Amazon Web Services KMS customer
master key (CMK).

If you do not specify a value for C<PerformanceInsightsKMSKeyId>, then
Amazon RDS uses your default CMK. There is a default CMK for your
Amazon Web Services account. Your Amazon Web Services account has a
different default CMK for each Amazon Web Services Region.



=head2 PerformanceInsightsRetentionPeriod => Int

The amount of time, in days, to retain Performance Insights data. Valid
values are 7 or 731 (2 years).



=head2 Port => Int

The port number that the DB instance uses for connections.

Default: Inherits from the source DB instance

Valid Values: C<1150-65535>



=head2 PreSignedUrl => Str

The URL that contains a Signature Version 4 signed request for the
C<CreateDBInstanceReadReplica> API action in the source Amazon Web
Services Region that contains the source DB instance.

You must specify this parameter when you create an encrypted read
replica from another Amazon Web Services Region by using the Amazon RDS
API. Don't specify C<PreSignedUrl> when you are creating an encrypted
read replica in the same Amazon Web Services Region.

The presigned URL must be a valid request for the
C<CreateDBInstanceReadReplica> API action that can be executed in the
source Amazon Web Services Region that contains the encrypted source DB
instance. The presigned URL request must contain the following
parameter values:

=over

=item *

C<DestinationRegion> - The Amazon Web Services Region that the
encrypted read replica is created in. This Amazon Web Services Region
is the same one where the C<CreateDBInstanceReadReplica> action is
called that contains this presigned URL.

For example, if you create an encrypted DB instance in the us-west-1
Amazon Web Services Region, from a source DB instance in the us-east-2
Amazon Web Services Region, then you call the
C<CreateDBInstanceReadReplica> action in the us-east-1 Amazon Web
Services Region and provide a presigned URL that contains a call to the
C<CreateDBInstanceReadReplica> action in the us-west-2 Amazon Web
Services Region. For this example, the C<DestinationRegion> in the
presigned URL must be set to the us-east-1 Amazon Web Services Region.

=item *

C<KmsKeyId> - The Amazon Web Services KMS key identifier for the key to
use to encrypt the read replica in the destination Amazon Web Services
Region. This is the same identifier for both the
C<CreateDBInstanceReadReplica> action that is called in the destination
Amazon Web Services Region, and the action contained in the presigned
URL.

=item *

C<SourceDBInstanceIdentifier> - The DB instance identifier for the
encrypted DB instance to be replicated. This identifier must be in the
Amazon Resource Name (ARN) format for the source Amazon Web Services
Region. For example, if you are creating an encrypted read replica from
a DB instance in the us-west-2 Amazon Web Services Region, then your
C<SourceDBInstanceIdentifier> looks like the following example:
C<arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-20161115>.

=back

To learn how to generate a Signature Version 4 signed request, see
Authenticating Requests: Using Query Parameters (Amazon Web Services
Signature Version 4)
(https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html)
and Signature Version 4 Signing Process
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

If you are using an Amazon Web Services SDK tool or the CLI, you can
specify C<SourceRegion> (or C<--source-region> for the CLI) instead of
specifying C<PreSignedUrl> manually. Specifying C<SourceRegion>
autogenerates a presigned URL that is a valid request for the operation
that can be executed in the source Amazon Web Services Region.

C<SourceRegion> isn't supported for SQL Server, because SQL Server on
Amazon RDS doesn't support cross-region read replicas.



=head2 ProcessorFeatures => ArrayRef[L<Paws::RDS::ProcessorFeature>]

The number of CPU cores and the number of threads per core for the DB
instance class of the DB instance.



=head2 PubliclyAccessible => Bool

A value that indicates whether the DB instance is publicly accessible.

When the DB instance is publicly accessible, its DNS endpoint resolves
to the private IP address from within the DB instance's VPC, and to the
public IP address from outside of the DB instance's VPC. Access to the
DB instance is ultimately controlled by the security group it uses, and
that public access is not permitted if the security group assigned to
the DB instance doesn't permit it.

When the DB instance isn't publicly accessible, it is an internal DB
instance with a DNS name that resolves to a private IP address.

For more information, see CreateDBInstance.



=head2 ReplicaMode => Str

The open mode of the replica database: mounted or read-only.

This parameter is only supported for Oracle DB instances.

Mounted DB replicas are included in Oracle Enterprise Edition. The main
use case for mounted replicas is cross-Region disaster recovery. The
primary database doesn't use Active Data Guard to transmit information
to the mounted replica. Because it doesn't accept user connections, a
mounted replica can't serve a read-only workload.

You can create a combination of mounted and read-only DB replicas for
the same primary DB instance. For more information, see Working with
Oracle Read Replicas for Amazon RDS
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html)
in the I<Amazon RDS User Guide>.

Valid values are: C<"open-read-only">, C<"mounted">

=head2 B<REQUIRED> SourceDBInstanceIdentifier => Str

The identifier of the DB instance that will act as the source for the
read replica. Each DB instance can have up to five read replicas.

Constraints:

=over

=item *

Must be the identifier of an existing MySQL, MariaDB, Oracle,
PostgreSQL, or SQL Server DB instance.

=item *

Can specify a DB instance that is a MySQL read replica only if the
source is running MySQL 5.6 or later.

=item *

For the limitations of Oracle read replicas, see Read Replica
Limitations with Oracle
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html)
in the I<Amazon RDS User Guide>.

=item *

For the limitations of SQL Server read replicas, see Read Replica
Limitations with Microsoft SQL Server
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/SQLServer.ReadReplicas.Limitations.html)
in the I<Amazon RDS User Guide>.

=item *

Can specify a PostgreSQL DB instance only if the source is running
PostgreSQL 9.3.5 or later (9.4.7 and higher for cross-region
replication).

=item *

The specified DB instance must have automatic backups enabled, that is,
its backup retention period must be greater than 0.

=item *

If the source DB instance is in the same Amazon Web Services Region as
the read replica, specify a valid DB instance identifier.

=item *

If the source DB instance is in a different Amazon Web Services Region
from the read replica, specify a valid DB instance ARN. For more
information, see Constructing an ARN for Amazon RDS
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing)
in the I<Amazon RDS User Guide>. This doesn't apply to SQL Server,
which doesn't support cross-region replicas.

=back




=head2 StorageType => Str

Specifies the storage type to be associated with the read replica.

Valid values: C<standard | gp2 | io1>

If you specify C<io1>, you must also include a value for the C<Iops>
parameter.

Default: C<io1> if the C<Iops> parameter is specified, otherwise C<gp2>



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 UseDefaultProcessorFeatures => Bool

A value that indicates whether the DB instance class of the DB instance
uses its default processor features.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with the read replica.

Default: The default EC2 VPC security group for the DB subnet group's
VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBInstanceReadReplica in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

