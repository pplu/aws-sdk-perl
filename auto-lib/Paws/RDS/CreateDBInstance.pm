
package Paws::RDS::CreateDBInstance;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str', required => 1);
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBName => (is => 'ro', isa => 'Str');
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has Domain => (is => 'ro', isa => 'Str');
  has DomainIAMRoleName => (is => 'ro', isa => 'Str');
  has EnableCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has EnablePerformanceInsights => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has MonitoringInterval => (is => 'ro', isa => 'Int');
  has MonitoringRoleArn => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has PerformanceInsightsKMSKeyId => (is => 'ro', isa => 'Str');
  has PerformanceInsightsRetentionPeriod => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ProcessorFeatures => (is => 'ro', isa => 'ArrayRef[Paws::RDS::ProcessorFeature]');
  has PromotionTier => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TdeCredentialArn => (is => 'ro', isa => 'Str');
  has TdeCredentialPassword => (is => 'ro', isa => 'Str');
  has Timezone => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CreateDBInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBInstance - Arguments for method CreateDBInstance on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBInstance on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CreateDBInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBInstance.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To create a DB instance.
    # This example creates a DB instance.
    my $CreateDBInstanceResult = $rds->CreateDBInstance(
      {
        'AllocatedStorage'     => 5,
        'DBInstanceClass'      => 'db.t2.micro',
        'DBInstanceIdentifier' => 'mymysqlinstance',
        'Engine'               => 'MySQL',
        'MasterUserPassword'   => 'MyPassword',
        'MasterUsername'       => 'MyUser'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBInstance>

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The amount of storage (in gibibytes) to allocate for the DB instance.

Type: Integer

B<Amazon Aurora>

Not applicable. Aurora cluster volumes automatically grow as the amount
of data in your database increases, though you are only charged for the
space that you use in an Aurora cluster volume.

B<MySQL>

Constraints to the amount of storage for each storage type are the
following:

=over

=item *

General Purpose (SSD) storage (gp2): Must be an integer from 20 to
16384.

=item *

Provisioned IOPS storage (io1): Must be an integer from 100 to 16384.

=item *

Magnetic storage (standard): Must be an integer from 5 to 3072.

=back

B<MariaDB>

Constraints to the amount of storage for each storage type are the
following:

=over

=item *

General Purpose (SSD) storage (gp2): Must be an integer from 20 to
16384.

=item *

Provisioned IOPS storage (io1): Must be an integer from 100 to 16384.

=item *

Magnetic storage (standard): Must be an integer from 5 to 3072.

=back

B<PostgreSQL>

Constraints to the amount of storage for each storage type are the
following:

=over

=item *

General Purpose (SSD) storage (gp2): Must be an integer from 20 to
16384.

=item *

Provisioned IOPS storage (io1): Must be an integer from 100 to 16384.

=item *

Magnetic storage (standard): Must be an integer from 5 to 3072.

=back

B<Oracle>

Constraints to the amount of storage for each storage type are the
following:

=over

=item *

General Purpose (SSD) storage (gp2): Must be an integer from 20 to
32768.

=item *

Provisioned IOPS storage (io1): Must be an integer from 100 to 32768.

=item *

Magnetic storage (standard): Must be an integer from 10 to 3072.

=back

B<SQL Server>

Constraints to the amount of storage for each storage type are the
following:

=over

=item *

General Purpose (SSD) storage (gp2):

=over

=item *

Enterprise and Standard editions: Must be an integer from 200 to 16384.

=item *

Web and Express editions: Must be an integer from 20 to 16384.

=back

=item *

Provisioned IOPS storage (io1):

=over

=item *

Enterprise and Standard editions: Must be an integer from 200 to 16384.

=item *

Web and Express editions: Must be an integer from 100 to 16384.

=back

=item *

Magnetic storage (standard):

=over

=item *

Enterprise and Standard editions: Must be an integer from 200 to 1024.

=item *

Web and Express editions: Must be an integer from 20 to 1024.

=back

=back




=head2 AutoMinorVersionUpgrade => Bool

Indicates that minor engine upgrades are applied automatically to the
DB instance during the maintenance window.

Default: C<true>



=head2 AvailabilityZone => Str

The EC2 Availability Zone that the DB instance is created in. For
information on AWS Regions and Availability Zones, see Regions and
Availability Zones
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html).

Default: A random, system-chosen Availability Zone in the endpoint's
AWS Region.

Example: C<us-east-1d>

Constraint: The AvailabilityZone parameter can't be specified if the
MultiAZ parameter is set to C<true>. The specified Availability Zone
must be in the same AWS Region as the current endpoint.



=head2 BackupRetentionPeriod => Int

The number of days for which automated backups are retained. Setting
this parameter to a positive number enables backups. Setting this
parameter to 0 disables automated backups.

B<Amazon Aurora>

Not applicable. The retention period for automated backups is managed
by the DB cluster. For more information, see CreateDBCluster.

Default: 1

Constraints:

=over

=item *

Must be a value from 0 to 35

=item *

Can't be set to 0 if the DB instance is a source to Read Replicas

=back




=head2 CharacterSetName => Str

For supported engines, indicates that the DB instance should be
associated with the specified CharacterSet.

B<Amazon Aurora>

Not applicable. The character set is managed by the DB cluster. For
more information, see CreateDBCluster.



=head2 CopyTagsToSnapshot => Bool

True to copy all tags from the DB instance to snapshots of the DB
instance, and otherwise false. The default is false.



=head2 DBClusterIdentifier => Str

The identifier of the DB cluster that the instance will belong to.

For information on creating a DB cluster, see CreateDBCluster.

Type: String



=head2 B<REQUIRED> DBInstanceClass => Str

The compute and memory capacity of the DB instance, for example,
C<db.m4.large>. Not all DB instance classes are available in all AWS
Regions, or for all database engines. For the full list of DB instance
classes, and availability for your engine, see DB Instance Class
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html)
in the I<Amazon RDS User Guide.>



=head2 B<REQUIRED> DBInstanceIdentifier => Str

The DB instance identifier. This parameter is stored as a lowercase
string.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

First character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back

Example: C<mydbinstance>



=head2 DBName => Str

The meaning of this parameter differs according to the database engine
you use.

Type: String

B<MySQL>

The name of the database to create when the DB instance is created. If
this parameter is not specified, no database is created in the DB
instance.

Constraints:

=over

=item *

Must contain 1 to 64 letters or numbers.

=item *

Can't be a word reserved by the specified database engine

=back

B<MariaDB>

The name of the database to create when the DB instance is created. If
this parameter is not specified, no database is created in the DB
instance.

Constraints:

=over

=item *

Must contain 1 to 64 letters or numbers.

=item *

Can't be a word reserved by the specified database engine

=back

B<PostgreSQL>

The name of the database to create when the DB instance is created. If
this parameter is not specified, the default "postgres" database is
created in the DB instance.

Constraints:

=over

=item *

Must contain 1 to 63 letters, numbers, or underscores.

=item *

Must begin with a letter or an underscore. Subsequent characters can be
letters, underscores, or digits (0-9).

=item *

Can't be a word reserved by the specified database engine

=back

B<Oracle>

The Oracle System ID (SID) of the created DB instance. If you specify
C<null>, the default value C<ORCL> is used. You can't specify the
string NULL, or any other reserved word, for C<DBName>.

Default: C<ORCL>

Constraints:

=over

=item *

Can't be longer than 8 characters

=back

B<SQL Server>

Not applicable. Must be null.

B<Amazon Aurora>

The name of the database to create when the primary instance of the DB
cluster is created. If this parameter is not specified, no database is
created in the DB instance.

Constraints:

=over

=item *

Must contain 1 to 64 letters or numbers.

=item *

Can't be a word reserved by the specified database engine

=back




=head2 DBParameterGroupName => Str

The name of the DB parameter group to associate with this DB instance.
If this argument is omitted, the default DBParameterGroup for the
specified engine is used.

Constraints:

=over

=item *

Must be 1 to 255 letters, numbers, or hyphens.

=item *

First character must be a letter

=item *

Can't end with a hyphen or contain two consecutive hyphens

=back




=head2 DBSecurityGroups => ArrayRef[Str|Undef]

A list of DB security groups to associate with this DB instance.

Default: The default DB security group for the database engine.



=head2 DBSubnetGroupName => Str

A DB subnet group to associate with this DB instance.

If there is no DB subnet group, then it is a non-VPC DB instance.



=head2 DeletionProtection => Bool

Indicates if the DB instance should have deletion protection enabled.
The database can't be deleted when this value is set to true. The
default is false. For more information, see Deleting a DB Instance
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html).



=head2 Domain => Str

Specify the Active Directory Domain to create the instance in.



=head2 DomainIAMRoleName => Str

Specify the name of the IAM role to be used when making API calls to
the Directory Service.



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of log types that need to be enabled for exporting to
CloudWatch Logs. The values in the list depend on the DB engine being
used. For more information, see Publishing Database Logs to Amazon
CloudWatch Logs
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
in the I<Amazon Relational Database Service User Guide>.



=head2 EnableIAMDatabaseAuthentication => Bool

True to enable mapping of AWS Identity and Access Management (IAM)
accounts to database accounts, and otherwise false.

You can enable IAM database authentication for the following database
engines:

B<Amazon Aurora>

Not applicable. Mapping AWS IAM accounts to database accounts is
managed by the DB cluster. For more information, see CreateDBCluster.

B<MySQL>

=over

=item *

For MySQL 5.6, minor version 5.6.34 or higher

=item *

For MySQL 5.7, minor version 5.7.16 or higher

=back

Default: C<false>



=head2 EnablePerformanceInsights => Bool

True to enable Performance Insights for the DB instance, and otherwise
false.

For more information, see Using Amazon Performance Insights
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html)
in the I<Amazon Relational Database Service User Guide>.



=head2 B<REQUIRED> Engine => Str

The name of the database engine to be used for this instance.

Not every database engine is available for every AWS Region.

Valid Values:

=over

=item *

C<aurora> (for MySQL 5.6-compatible Aurora)

=item *

C<aurora-mysql> (for MySQL 5.7-compatible Aurora)

=item *

C<aurora-postgresql>

=item *

C<mariadb>

=item *

C<mysql>

=item *

C<oracle-ee>

=item *

C<oracle-se2>

=item *

C<oracle-se1>

=item *

C<oracle-se>

=item *

C<postgres>

=item *

C<sqlserver-ee>

=item *

C<sqlserver-se>

=item *

C<sqlserver-ex>

=item *

C<sqlserver-web>

=back




=head2 EngineVersion => Str

The version number of the database engine to use.

For a list of valid engine versions, call DescribeDBEngineVersions.

The following are the database engines and links to information about
the major and minor versions that are available with Amazon RDS. Not
every database engine is available for every AWS Region.

B<Amazon Aurora>

Not applicable. The version number of the database engine to be used by
the DB instance is managed by the DB cluster. For more information, see
CreateDBCluster.

B<MariaDB>

See MariaDB on Amazon RDS Versions
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MariaDB.html#MariaDB.Concepts.VersionMgmt)
in the I<Amazon RDS User Guide.>

B<Microsoft SQL Server>

See Version and Feature Support on Amazon RDS
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.FeatureSupport)
in the I<Amazon RDS User Guide.>

B<MySQL>

See MySQL on Amazon RDS Versions
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt)
in the I<Amazon RDS User Guide.>

B<Oracle>

See Oracle Database Engine Release Notes
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.Oracle.PatchComposition.html)
in the I<Amazon RDS User Guide.>

B<PostgreSQL>

See Supported PostgreSQL Database Versions
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts.General.DBVersions)
in the I<Amazon RDS User Guide.>



=head2 Iops => Int

The amount of Provisioned IOPS (input/output operations per second) to
be initially allocated for the DB instance. For information about valid
Iops values, see see Amazon RDS Provisioned IOPS Storage to Improve
Performance
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS)
in the I<Amazon RDS User Guide>.

Constraints: Must be a multiple between 1 and 50 of the storage amount
for the DB instance.



=head2 KmsKeyId => Str

The AWS KMS key identifier for an encrypted DB instance.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are creating a DB instance with the same AWS
account that owns the KMS encryption key used to encrypt the new DB
instance, then you can use the KMS key alias instead of the ARN for the
KM encryption key.

B<Amazon Aurora>

Not applicable. The KMS key identifier is managed by the DB cluster.
For more information, see CreateDBCluster.

If the C<StorageEncrypted> parameter is true, and you do not specify a
value for the C<KmsKeyId> parameter, then Amazon RDS will use your
default encryption key. AWS KMS creates the default encryption key for
your AWS account. Your AWS account has a different default encryption
key for each AWS Region.



=head2 LicenseModel => Str

License model information for this DB instance.

Valid values: C<license-included> | C<bring-your-own-license> |
C<general-public-license>



=head2 MasterUsername => Str

The name for the master user.

B<Amazon Aurora>

Not applicable. The name for the master user is managed by the DB
cluster. For more information, see CreateDBCluster.

B<MariaDB>

Constraints:

=over

=item *

Required for MariaDB.

=item *

Must be 1 to 16 letters or numbers.

=item *

Can't be a reserved word for the chosen database engine.

=back

B<Microsoft SQL Server>

Constraints:

=over

=item *

Required for SQL Server.

=item *

Must be 1 to 128 letters or numbers.

=item *

The first character must be a letter.

=item *

Can't be a reserved word for the chosen database engine.

=back

B<MySQL>

Constraints:

=over

=item *

Required for MySQL.

=item *

Must be 1 to 16 letters or numbers.

=item *

First character must be a letter.

=item *

Can't be a reserved word for the chosen database engine.

=back

B<Oracle>

Constraints:

=over

=item *

Required for Oracle.

=item *

Must be 1 to 30 letters or numbers.

=item *

First character must be a letter.

=item *

Can't be a reserved word for the chosen database engine.

=back

B<PostgreSQL>

Constraints:

=over

=item *

Required for PostgreSQL.

=item *

Must be 1 to 63 letters or numbers.

=item *

First character must be a letter.

=item *

Can't be a reserved word for the chosen database engine.

=back




=head2 MasterUserPassword => Str

The password for the master user. The password can include any
printable ASCII character except "/", """, or "@".

B<Amazon Aurora>

Not applicable. The password for the master user is managed by the DB
cluster. For more information, see CreateDBCluster.

B<MariaDB>

Constraints: Must contain from 8 to 41 characters.

B<Microsoft SQL Server>

Constraints: Must contain from 8 to 128 characters.

B<MySQL>

Constraints: Must contain from 8 to 41 characters.

B<Oracle>

Constraints: Must contain from 8 to 30 characters.

B<PostgreSQL>

Constraints: Must contain from 8 to 128 characters.



=head2 MonitoringInterval => Int

The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the DB instance. To disable collecting
Enhanced Monitoring metrics, specify 0. The default is 0.

If C<MonitoringRoleArn> is specified, then you must also set
C<MonitoringInterval> to a value other than 0.

Valid Values: C<0, 1, 5, 10, 15, 30, 60>



=head2 MonitoringRoleArn => Str

The ARN for the IAM role that permits RDS to send enhanced monitoring
metrics to Amazon CloudWatch Logs. For example,
C<arn:aws:iam:123456789012:role/emaccess>. For information on creating
a monitoring role, go to Setting Up and Enabling Enhanced Monitoring
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling)
in the I<Amazon RDS User Guide>.

If C<MonitoringInterval> is set to a value other than 0, then you must
supply a C<MonitoringRoleArn> value.



=head2 MultiAZ => Bool

A value that specifies whether the DB instance is a Multi-AZ
deployment. You can't set the AvailabilityZone parameter if the MultiAZ
parameter is set to true.



=head2 OptionGroupName => Str

Indicates that the DB instance should be associated with the specified
option group.

Permanent options, such as the TDE option for Oracle Advanced Security
TDE, can't be removed from an option group, and that option group can't
be removed from a DB instance once it is associated with a DB instance



=head2 PerformanceInsightsKMSKeyId => Str

The AWS KMS key identifier for encryption of Performance Insights data.
The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier,
or the KMS key alias for the KMS encryption key.



=head2 PerformanceInsightsRetentionPeriod => Int

The amount of time, in days, to retain Performance Insights data. Valid
values are 7 or 731 (2 years).



=head2 Port => Int

The port number on which the database accepts connections.

B<MySQL>

Default: C<3306>

Valid Values: C<1150-65535>

Type: Integer

B<MariaDB>

Default: C<3306>

Valid Values: C<1150-65535>

Type: Integer

B<PostgreSQL>

Default: C<5432>

Valid Values: C<1150-65535>

Type: Integer

B<Oracle>

Default: C<1521>

Valid Values: C<1150-65535>

B<SQL Server>

Default: C<1433>

Valid Values: C<1150-65535> except for C<1434>, C<3389>, C<47001>,
C<49152>, and C<49152> through C<49156>.

B<Amazon Aurora>

Default: C<3306>

Valid Values: C<1150-65535>

Type: Integer



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled, using the C<BackupRetentionPeriod>
parameter. For more information, see The Backup Window
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow)
in the I<Amazon RDS User Guide>.

B<Amazon Aurora>

Not applicable. The daily time range for creating automated backups is
managed by the DB cluster. For more information, see CreateDBCluster.

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region. To see the time blocks available,
see Adjusting the Preferred DB Instance Maintenance Window
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow)
in the I<Amazon RDS User Guide>.

Constraints:

=over

=item *

Must be in the format C<hh24:mi-hh24:mi>.

=item *

Must be in Universal Coordinated Time (UTC).

=item *

Must not conflict with the preferred maintenance window.

=item *

Must be at least 30 minutes.

=back




=head2 PreferredMaintenanceWindow => Str

The time range each week during which system maintenance can occur, in
Universal Coordinated Time (UTC). For more information, see Amazon RDS
Maintenance Window
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance).

Format: C<ddd:hh24:mi-ddd:hh24:mi>

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region, occurring on a random day of the
week.

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

Constraints: Minimum 30-minute window.



=head2 ProcessorFeatures => ArrayRef[L<Paws::RDS::ProcessorFeature>]

The number of CPU cores and the number of threads per core for the DB
instance class of the DB instance.



=head2 PromotionTier => Int

A value that specifies the order in which an Aurora Replica is promoted
to the primary instance after a failure of the existing primary
instance. For more information, see Fault Tolerance for an Aurora DB
Cluster
(http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance)
in the I<Amazon Aurora User Guide>.

Default: 1

Valid Values: 0 - 15



=head2 PubliclyAccessible => Bool

Specifies the accessibility options for the DB instance. A value of
true specifies an Internet-facing instance with a publicly resolvable
DNS name, which resolves to a public IP address. A value of false
specifies an internal instance with a DNS name that resolves to a
private IP address.

Default: The default behavior varies depending on whether
C<DBSubnetGroupName> is specified.

If C<DBSubnetGroupName> is not specified, and C<PubliclyAccessible> is
not specified, the following applies:

=over

=item *

If the default VPC in the target region doesnE<rsquo>t have an Internet
gateway attached to it, the DB instance is private.

=item *

If the default VPC in the target region has an Internet gateway
attached to it, the DB instance is public.

=back

If C<DBSubnetGroupName> is specified, and C<PubliclyAccessible> is not
specified, the following applies:

=over

=item *

If the subnets are part of a VPC that doesnE<rsquo>t have an Internet
gateway attached to it, the DB instance is private.

=item *

If the subnets are part of a VPC that has an Internet gateway attached
to it, the DB instance is public.

=back




=head2 StorageEncrypted => Bool

Specifies whether the DB instance is encrypted.

B<Amazon Aurora>

Not applicable. The encryption for DB instances is managed by the DB
cluster. For more information, see CreateDBCluster.

Default: false



=head2 StorageType => Str

Specifies the storage type to be associated with the DB instance.

Valid values: C<standard | gp2 | io1>

If you specify C<io1>, you must also include a value for the C<Iops>
parameter.

Default: C<io1> if the C<Iops> parameter is specified, otherwise
C<standard>



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 TdeCredentialArn => Str

The ARN from the key store with which to associate the instance for TDE
encryption.



=head2 TdeCredentialPassword => Str

The password for the given ARN from the key store in order to access
the device.



=head2 Timezone => Str

The time zone of the DB instance. The time zone parameter is currently
supported only by Microsoft SQL Server
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone).



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of Amazon EC2 VPC security groups to associate with this DB
instance.

B<Amazon Aurora>

Not applicable. The associated list of EC2 VPC security groups is
managed by the DB cluster. For more information, see CreateDBCluster.

Default: The default EC2 VPC security group for the DB subnet group's
VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBInstance in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

