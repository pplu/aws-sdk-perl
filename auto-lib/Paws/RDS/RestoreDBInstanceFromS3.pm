
package Paws::RDS::RestoreDBInstanceFromS3;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DBInstanceClass => (is => 'ro', isa => 'Str', required => 1);
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBName => (is => 'ro', isa => 'Str');
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
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
  has MaxAllocatedStorage => (is => 'ro', isa => 'Int');
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
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has S3BucketName => (is => 'ro', isa => 'Str', required => 1);
  has S3IngestionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has S3Prefix => (is => 'ro', isa => 'Str');
  has SourceEngine => (is => 'ro', isa => 'Str', required => 1);
  has SourceEngineVersion => (is => 'ro', isa => 'Str', required => 1);
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has UseDefaultProcessorFeatures => (is => 'ro', isa => 'Bool');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceFromS3');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::RestoreDBInstanceFromS3Result');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceFromS3Result');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RestoreDBInstanceFromS3 - Arguments for method RestoreDBInstanceFromS3 on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreDBInstanceFromS3 on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method RestoreDBInstanceFromS3.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreDBInstanceFromS3.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $RestoreDBInstanceFromS3Result = $rds->RestoreDBInstanceFromS3(
      DBInstanceClass                    => 'MyString',
      DBInstanceIdentifier               => 'MyString',
      Engine                             => 'MyString',
      S3BucketName                       => 'MyString',
      S3IngestionRoleArn                 => 'MyString',
      SourceEngine                       => 'MyString',
      SourceEngineVersion                => 'MyString',
      AllocatedStorage                   => 1,                      # OPTIONAL
      AutoMinorVersionUpgrade            => 1,                      # OPTIONAL
      AvailabilityZone                   => 'MyString',             # OPTIONAL
      BackupRetentionPeriod              => 1,                      # OPTIONAL
      CopyTagsToSnapshot                 => 1,                      # OPTIONAL
      DBName                             => 'MyString',             # OPTIONAL
      DBParameterGroupName               => 'MyString',             # OPTIONAL
      DBSecurityGroups                   => [ 'MyString', ... ],    # OPTIONAL
      DBSubnetGroupName                  => 'MyString',             # OPTIONAL
      DeletionProtection                 => 1,                      # OPTIONAL
      EnableCloudwatchLogsExports        => [ 'MyString', ... ],    # OPTIONAL
      EnableIAMDatabaseAuthentication    => 1,                      # OPTIONAL
      EnablePerformanceInsights          => 1,                      # OPTIONAL
      EngineVersion                      => 'MyString',             # OPTIONAL
      Iops                               => 1,                      # OPTIONAL
      KmsKeyId                           => 'MyString',             # OPTIONAL
      LicenseModel                       => 'MyString',             # OPTIONAL
      MasterUserPassword                 => 'MyString',             # OPTIONAL
      MasterUsername                     => 'MyString',             # OPTIONAL
      MaxAllocatedStorage                => 1,                      # OPTIONAL
      MonitoringInterval                 => 1,                      # OPTIONAL
      MonitoringRoleArn                  => 'MyString',             # OPTIONAL
      MultiAZ                            => 1,                      # OPTIONAL
      OptionGroupName                    => 'MyString',             # OPTIONAL
      PerformanceInsightsKMSKeyId        => 'MyString',             # OPTIONAL
      PerformanceInsightsRetentionPeriod => 1,                      # OPTIONAL
      Port                               => 1,                      # OPTIONAL
      PreferredBackupWindow              => 'MyString',             # OPTIONAL
      PreferredMaintenanceWindow         => 'MyString',             # OPTIONAL
      ProcessorFeatures                  => [
        {
          Name  => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                            # OPTIONAL
      PubliclyAccessible => 1,                                      # OPTIONAL
      S3Prefix           => 'MyString',                             # OPTIONAL
      StorageEncrypted   => 1,                                      # OPTIONAL
      StorageType        => 'MyString',                             # OPTIONAL
      Tags               => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                            # OPTIONAL
      UseDefaultProcessorFeatures => 1,                             # OPTIONAL
      VpcSecurityGroupIds         => [ 'MyString', ... ],           # OPTIONAL
    );

    # Results:
    my $DBInstance = $RestoreDBInstanceFromS3Result->DBInstance;

    # Returns a L<Paws::RDS::RestoreDBInstanceFromS3Result> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RestoreDBInstanceFromS3>

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The amount of storage (in gigabytes) to allocate initially for the DB
instance. Follow the allocation rules specified in C<CreateDBInstance>.

Be sure to allocate enough memory for your new DB instance so that the
restore operation can succeed. You can also allocate additional memory
for future growth.



=head2 AutoMinorVersionUpgrade => Bool

A value that indicates whether minor engine upgrades are applied
automatically to the DB instance during the maintenance window. By
default, minor engine upgrades are not applied automatically.



=head2 AvailabilityZone => Str

The Availability Zone that the DB instance is created in. For
information about AWS Regions and Availability Zones, see Regions and
Availability Zones
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html)
in the I<Amazon RDS User Guide.>

Default: A random, system-chosen Availability Zone in the endpoint's
AWS Region.

Example: C<us-east-1d>

Constraint: The C<AvailabilityZone> parameter can't be specified if the
DB instance is a Multi-AZ deployment. The specified Availability Zone
must be in the same AWS Region as the current endpoint.



=head2 BackupRetentionPeriod => Int

The number of days for which automated backups are retained. Setting
this parameter to a positive number enables backups. For more
information, see C<CreateDBInstance>.



=head2 CopyTagsToSnapshot => Bool

A value that indicates whether to copy all tags from the DB instance to
snapshots of the DB instance. By default, tags are not copied.



=head2 B<REQUIRED> DBInstanceClass => Str

The compute and memory capacity of the DB instance, for example,
C<db.m4.large>. Not all DB instance classes are available in all AWS
Regions, or for all database engines. For the full list of DB instance
classes, and availability for your engine, see DB Instance Class
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html)
in the I<Amazon RDS User Guide.>

Importing from Amazon S3 isn't supported on the db.t2.micro DB instance
class.



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

The name of the database to create when the DB instance is created.
Follow the naming rules specified in C<CreateDBInstance>.



=head2 DBParameterGroupName => Str

The name of the DB parameter group to associate with this DB instance.

If you do not specify a value for C<DBParameterGroupName>, then the
default C<DBParameterGroup> for the specified DB engine is used.



=head2 DBSecurityGroups => ArrayRef[Str|Undef]

A list of DB security groups to associate with this DB instance.

Default: The default DB security group for the database engine.



=head2 DBSubnetGroupName => Str

A DB subnet group to associate with this DB instance.



=head2 DeletionProtection => Bool

A value that indicates whether the DB instance has deletion protection
enabled. The database can't be deleted when deletion protection is
enabled. By default, deletion protection is disabled. For more
information, see Deleting a DB Instance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html).



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of logs that the restored DB instance is to export to
CloudWatch Logs. The values in the list depend on the DB engine being
used. For more information, see Publishing Database Logs to Amazon
CloudWatch Logs
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
in the I<Amazon RDS User Guide>.



=head2 EnableIAMDatabaseAuthentication => Bool

A value that indicates whether to enable mapping of AWS Identity and
Access Management (IAM) accounts to database accounts. By default,
mapping is disabled.

For more information about IAM database authentication, see IAM
Database Authentication for MySQL and PostgreSQL
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html)
in the I<Amazon RDS User Guide.>



=head2 EnablePerformanceInsights => Bool

A value that indicates whether to enable Performance Insights for the
DB instance.

For more information, see Using Amazon Performance Insights
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html)
in the I<Amazon Relational Database Service User Guide>.



=head2 B<REQUIRED> Engine => Str

The name of the database engine to be used for this instance.

Valid Values: C<mysql>



=head2 EngineVersion => Str

The version number of the database engine to use. Choose the latest
minor version of your database engine. For information about engine
versions, see C<CreateDBInstance>, or call C<DescribeDBEngineVersions>.



=head2 Iops => Int

The amount of Provisioned IOPS (input/output operations per second) to
allocate initially for the DB instance. For information about valid
Iops values, see Amazon RDS Provisioned IOPS Storage to Improve
Performance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS)
in the I<Amazon RDS User Guide.>



=head2 KmsKeyId => Str

The AWS KMS key identifier for an encrypted DB instance.

The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
name for the AWS KMS customer master key (CMK). To use a CMK in a
different AWS account, specify the key ARN or alias ARN.

If the C<StorageEncrypted> parameter is enabled, and you do not specify
a value for the C<KmsKeyId> parameter, then Amazon RDS will use your
default CMK. There is a default CMK for your AWS account. Your AWS
account has a different default CMK for each AWS Region.



=head2 LicenseModel => Str

The license model for this DB instance. Use C<general-public-license>.



=head2 MasterUsername => Str

The name for the master user.

Constraints:

=over

=item *

Must be 1 to 16 letters or numbers.

=item *

First character must be a letter.

=item *

Can't be a reserved word for the chosen database engine.

=back




=head2 MasterUserPassword => Str

The password for the master user. The password can include any
printable ASCII character except "/", """, or "@".

Constraints: Must contain from 8 to 41 characters.



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
metrics are collected for the DB instance. To disable collecting
Enhanced Monitoring metrics, specify 0.

If C<MonitoringRoleArn> is specified, then you must also set
C<MonitoringInterval> to a value other than 0.

Valid Values: 0, 1, 5, 10, 15, 30, 60

Default: C<0>



=head2 MonitoringRoleArn => Str

The ARN for the IAM role that permits RDS to send enhanced monitoring
metrics to Amazon CloudWatch Logs. For example,
C<arn:aws:iam:123456789012:role/emaccess>. For information on creating
a monitoring role, see Setting Up and Enabling Enhanced Monitoring
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling)
in the I<Amazon RDS User Guide.>

If C<MonitoringInterval> is set to a value other than 0, then you must
supply a C<MonitoringRoleArn> value.



=head2 MultiAZ => Bool

A value that indicates whether the DB instance is a Multi-AZ
deployment. If the DB instance is a Multi-AZ deployment, you can't set
the C<AvailabilityZone> parameter.



=head2 OptionGroupName => Str

The name of the option group to associate with this DB instance. If
this argument is omitted, the default option group for the specified
engine is used.



=head2 PerformanceInsightsKMSKeyId => Str

The AWS KMS key identifier for encryption of Performance Insights data.

The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
name for the AWS KMS customer master key (CMK).

If you do not specify a value for C<PerformanceInsightsKMSKeyId>, then
Amazon RDS uses your default CMK. There is a default CMK for your AWS
account. Your AWS account has a different default CMK for each AWS
Region.



=head2 PerformanceInsightsRetentionPeriod => Int

The amount of time, in days, to retain Performance Insights data. Valid
values are 7 or 731 (2 years).



=head2 Port => Int

The port number on which the database accepts connections.

Type: Integer

Valid Values: C<1150>-C<65535>

Default: C<3306>



=head2 PreferredBackupWindow => Str

The time range each day during which automated backups are created if
automated backups are enabled. For more information, see Backup window
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow)
in the I<Amazon RDS User Guide.>

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
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance)
in the I<Amazon RDS User Guide.>

Constraints:

=over

=item *

Must be in the format C<ddd:hh24:mi-ddd:hh24:mi>.

=item *

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

=item *

Must be in Universal Coordinated Time (UTC).

=item *

Must not conflict with the preferred backup window.

=item *

Must be at least 30 minutes.

=back




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



=head2 B<REQUIRED> S3BucketName => Str

The name of your Amazon S3 bucket that contains your database backup
file.



=head2 B<REQUIRED> S3IngestionRoleArn => Str

An AWS Identity and Access Management (IAM) role to allow Amazon RDS to
access your Amazon S3 bucket.



=head2 S3Prefix => Str

The prefix of your Amazon S3 bucket.



=head2 B<REQUIRED> SourceEngine => Str

The name of the engine of your source database.

Valid Values: C<mysql>



=head2 B<REQUIRED> SourceEngineVersion => Str

The version of the database that the backup files were created from.

MySQL versions 5.6 and 5.7 are supported.

Example: C<5.6.40>



=head2 StorageEncrypted => Bool

A value that indicates whether the new DB instance is encrypted or not.



=head2 StorageType => Str

Specifies the storage type to be associated with the DB instance.

Valid values: C<standard> | C<gp2> | C<io1>

If you specify C<io1>, you must also include a value for the C<Iops>
parameter.

Default: C<io1> if the C<Iops> parameter is specified; otherwise C<gp2>



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]

A list of tags to associate with this DB instance. For more
information, see Tagging Amazon RDS Resources
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html)
in the I<Amazon RDS User Guide.>



=head2 UseDefaultProcessorFeatures => Bool

A value that indicates whether the DB instance class of the DB instance
uses its default processor features.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of VPC security groups to associate with this DB instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreDBInstanceFromS3 in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

