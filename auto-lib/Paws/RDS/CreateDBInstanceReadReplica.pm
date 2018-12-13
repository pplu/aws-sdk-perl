
package Paws::RDS::CreateDBInstanceReadReplica;
  use Moose;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has EnableCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has EnablePerformanceInsights => (is => 'ro', isa => 'Bool');
  has Iops => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
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
      {
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
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBInstanceReadReplica>

=head1 ATTRIBUTES


=head2 AutoMinorVersionUpgrade => Bool

Indicates that minor engine upgrades are applied automatically to the
Read Replica during the maintenance window.

Default: Inherits from the source DB instance



=head2 AvailabilityZone => Str

The Amazon EC2 Availability Zone that the Read Replica is created in.

Default: A random, system-chosen Availability Zone in the endpoint's
AWS Region.

Example: C<us-east-1d>



=head2 CopyTagsToSnapshot => Bool

True to copy all tags from the Read Replica to snapshots of the Read
Replica, and otherwise false. The default is false.



=head2 DBInstanceClass => Str

The compute and memory capacity of the Read Replica, for example,
C<db.m4.large>. Not all DB instance classes are available in all AWS
Regions, or for all database engines. For the full list of DB instance
classes, and availability for your engine, see DB Instance Class
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html)
in the I<Amazon RDS User Guide.>

Default: Inherits from the source DB instance.



=head2 B<REQUIRED> DBInstanceIdentifier => Str

The DB instance identifier of the Read Replica. This identifier is the
unique key that identifies a DB instance. This parameter is stored as a
lowercase string.



=head2 DBSubnetGroupName => Str

Specifies a DB subnet group for the DB instance. The new DB instance is
created in the VPC associated with the DB subnet group. If no DB subnet
group is specified, then the new DB instance is not created in a VPC.

Constraints:

=over

=item *

Can only be specified if the source DB instance identifier specifies a
DB instance in another AWS Region.

=item *

If supplied, must match the name of an existing DBSubnetGroup.

=item *

The specified DB subnet group must be in the same AWS Region in which
the operation is running.

=item *

All Read Replicas in one AWS Region that are created from the same
source DB instance must either:E<gt>

=over

=item *

Specify DB subnet groups from the same VPC. All these Read Replicas are
created in the same VPC.

=item *

Not specify a DB subnet group. All these Read Replicas are created
outside of any VPC.

=back

=back

Example: C<mySubnetgroup>



=head2 DeletionProtection => Bool

Indicates if the DB instance should have deletion protection enabled.
The database can't be deleted when this value is set to true. The
default is false. For more information, see Deleting a DB Instance
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html).



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of logs that the new DB instance is to export to CloudWatch
Logs. The values in the list depend on the DB engine being used. For
more information, see Publishing Database Logs to Amazon CloudWatch
Logs
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
in the I<Amazon RDS User Guide>.



=head2 EnableIAMDatabaseAuthentication => Bool

True to enable mapping of AWS Identity and Access Management (IAM)
accounts to database accounts, and otherwise false.

You can enable IAM database authentication for the following database
engines

=over

=item *

For MySQL 5.6, minor version 5.6.34 or higher

=item *

For MySQL 5.7, minor version 5.7.16 or higher

=item *

Aurora MySQL 5.6 or higher

=back

Default: C<false>



=head2 EnablePerformanceInsights => Bool

True to enable Performance Insights for the read replica, and otherwise
false.

For more information, see Using Amazon Performance Insights
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html)
in the I<Amazon RDS User Guide>.



=head2 Iops => Int

The amount of Provisioned IOPS (input/output operations per second) to
be initially allocated for the DB instance.



=head2 KmsKeyId => Str

The AWS KMS key ID for an encrypted Read Replica. The KMS key ID is the
Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias
for the KMS encryption key.

If you create an encrypted Read Replica in the same AWS Region as the
source DB instance, then you do not have to specify a value for this
parameter. The Read Replica is encrypted with the same KMS key as the
source DB instance.

If you create an encrypted Read Replica in a different AWS Region, then
you must specify a KMS key for the destination AWS Region. KMS
encryption keys are specific to the AWS Region that they are created
in, and you can't use encryption keys from one AWS Region in another
AWS Region.

You can't create an encrypted Read Replica from an unencrypted DB
instance.



=head2 MonitoringInterval => Int

The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the Read Replica. To disable collecting
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
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole)
in the I<Amazon RDS User Guide>.

If C<MonitoringInterval> is set to a value other than 0, then you must
supply a C<MonitoringRoleArn> value.



=head2 MultiAZ => Bool

Specifies whether the Read Replica is in a Multi-AZ deployment.

You can create a Read Replica as a Multi-AZ DB instance. RDS creates a
standby of your replica in another Availability Zone for failover
support for the replica. Creating your Read Replica as a Multi-AZ DB
instance is independent of whether the source database is a Multi-AZ DB
instance.



=head2 OptionGroupName => Str

The option group the DB instance is associated with. If omitted, the
default option group for the engine specified is used.



=head2 PerformanceInsightsKMSKeyId => Str

The AWS KMS key identifier for encryption of Performance Insights data.
The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier,
or the KMS key alias for the KMS encryption key.



=head2 PerformanceInsightsRetentionPeriod => Int

The amount of time, in days, to retain Performance Insights data. Valid
values are 7 or 731 (2 years).



=head2 Port => Int

The port number that the DB instance uses for connections.

Default: Inherits from the source DB instance

Valid Values: C<1150-65535>



=head2 PreSignedUrl => Str

The URL that contains a Signature Version 4 signed request for the
C<CreateDBInstanceReadReplica> API action in the source AWS Region that
contains the source DB instance.

You must specify this parameter when you create an encrypted Read
Replica from another AWS Region by using the Amazon RDS API. You can
specify the C<--source-region> option instead of this parameter when
you create an encrypted Read Replica from another AWS Region by using
the AWS CLI.

The presigned URL must be a valid request for the
C<CreateDBInstanceReadReplica> API action that can be executed in the
source AWS Region that contains the encrypted source DB instance. The
presigned URL request must contain the following parameter values:

=over

=item *

C<DestinationRegion> - The AWS Region that the encrypted Read Replica
is created in. This AWS Region is the same one where the
C<CreateDBInstanceReadReplica> action is called that contains this
presigned URL.

For example, if you create an encrypted DB instance in the us-west-1
AWS Region, from a source DB instance in the us-east-2 AWS Region, then
you call the C<CreateDBInstanceReadReplica> action in the us-east-1 AWS
Region and provide a presigned URL that contains a call to the
C<CreateDBInstanceReadReplica> action in the us-west-2 AWS Region. For
this example, the C<DestinationRegion> in the presigned URL must be set
to the us-east-1 AWS Region.

=item *

C<KmsKeyId> - The AWS KMS key identifier for the key to use to encrypt
the Read Replica in the destination AWS Region. This is the same
identifier for both the C<CreateDBInstanceReadReplica> action that is
called in the destination AWS Region, and the action contained in the
presigned URL.

=item *

C<SourceDBInstanceIdentifier> - The DB instance identifier for the
encrypted DB instance to be replicated. This identifier must be in the
Amazon Resource Name (ARN) format for the source AWS Region. For
example, if you are creating an encrypted Read Replica from a DB
instance in the us-west-2 AWS Region, then your
C<SourceDBInstanceIdentifier> looks like the following example:
C<arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-20161115>.

=back

To learn how to generate a Signature Version 4 signed request, see
Authenticating Requests: Using Query Parameters (AWS Signature Version
4)
(http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html)
and Signature Version 4 Signing Process
(http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).



=head2 ProcessorFeatures => ArrayRef[L<Paws::RDS::ProcessorFeature>]

The number of CPU cores and the number of threads per core for the DB
instance class of the DB instance.



=head2 PubliclyAccessible => Bool

Specifies the accessibility options for the DB instance. A value of
true specifies an Internet-facing instance with a publicly resolvable
DNS name, which resolves to a public IP address. A value of false
specifies an internal instance with a DNS name that resolves to a
private IP address. For more information, see CreateDBInstance.



=head2 B<REQUIRED> SourceDBInstanceIdentifier => Str

The identifier of the DB instance that will act as the source for the
Read Replica. Each DB instance can have up to five Read Replicas.

Constraints:

=over

=item *

Must be the identifier of an existing MySQL, MariaDB, or PostgreSQL DB
instance.

=item *

Can specify a DB instance that is a MySQL Read Replica only if the
source is running MySQL 5.6 or later.

=item *

Can specify a DB instance that is a PostgreSQL DB instance only if the
source is running PostgreSQL 9.3.5 or later (9.4.7 and higher for
cross-region replication).

=item *

The specified DB instance must have automatic backups enabled, its
backup retention period must be greater than 0.

=item *

If the source DB instance is in the same AWS Region as the Read
Replica, specify a valid DB instance identifier.

=item *

If the source DB instance is in a different AWS Region than the Read
Replica, specify a valid DB instance ARN. For more information, go to
Constructing an ARN for Amazon RDS
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing)
in the I<Amazon RDS User Guide>.

=back




=head2 StorageType => Str

Specifies the storage type to be associated with the Read Replica.

Valid values: C<standard | gp2 | io1>

If you specify C<io1>, you must also include a value for the C<Iops>
parameter.

Default: C<io1> if the C<Iops> parameter is specified, otherwise
C<standard>



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 UseDefaultProcessorFeatures => Bool

A value that specifies that the DB instance class of the DB instance
uses its default processor features.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with the Read Replica.

Default: The default EC2 VPC security group for the DB subnet group's
VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBInstanceReadReplica in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

