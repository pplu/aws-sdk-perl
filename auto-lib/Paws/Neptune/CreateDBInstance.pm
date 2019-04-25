
package Paws::Neptune::CreateDBInstance;
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
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PromotionTier => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::Tag]');
  has TdeCredentialArn => (is => 'ro', isa => 'Str');
  has TdeCredentialPassword => (is => 'ro', isa => 'Str');
  has Timezone => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::CreateDBInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::CreateDBInstance - Arguments for method CreateDBInstance on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBInstance on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method CreateDBInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBInstance.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $CreateDBInstanceResult = $rds->CreateDBInstance(
      DBInstanceClass                 => 'MyString',
      DBInstanceIdentifier            => 'MyString',
      Engine                          => 'MyString',
      AllocatedStorage                => 1,                      # OPTIONAL
      AutoMinorVersionUpgrade         => 1,                      # OPTIONAL
      AvailabilityZone                => 'MyString',             # OPTIONAL
      BackupRetentionPeriod           => 1,                      # OPTIONAL
      CharacterSetName                => 'MyString',             # OPTIONAL
      CopyTagsToSnapshot              => 1,                      # OPTIONAL
      DBClusterIdentifier             => 'MyString',             # OPTIONAL
      DBName                          => 'MyString',             # OPTIONAL
      DBParameterGroupName            => 'MyString',             # OPTIONAL
      DBSecurityGroups                => [ 'MyString', ... ],    # OPTIONAL
      DBSubnetGroupName               => 'MyString',             # OPTIONAL
      Domain                          => 'MyString',             # OPTIONAL
      DomainIAMRoleName               => 'MyString',             # OPTIONAL
      EnableCloudwatchLogsExports     => [ 'MyString', ... ],    # OPTIONAL
      EnableIAMDatabaseAuthentication => 1,                      # OPTIONAL
      EnablePerformanceInsights       => 1,                      # OPTIONAL
      EngineVersion                   => 'MyString',             # OPTIONAL
      Iops                            => 1,                      # OPTIONAL
      KmsKeyId                        => 'MyString',             # OPTIONAL
      LicenseModel                    => 'MyString',             # OPTIONAL
      MasterUserPassword              => 'MyString',             # OPTIONAL
      MasterUsername                  => 'MyString',             # OPTIONAL
      MonitoringInterval              => 1,                      # OPTIONAL
      MonitoringRoleArn               => 'MyString',             # OPTIONAL
      MultiAZ                         => 1,                      # OPTIONAL
      OptionGroupName                 => 'MyString',             # OPTIONAL
      PerformanceInsightsKMSKeyId     => 'MyString',             # OPTIONAL
      Port                            => 1,                      # OPTIONAL
      PreferredBackupWindow           => 'MyString',             # OPTIONAL
      PreferredMaintenanceWindow      => 'MyString',             # OPTIONAL
      PromotionTier                   => 1,                      # OPTIONAL
      PubliclyAccessible              => 1,                      # OPTIONAL
      StorageEncrypted                => 1,                      # OPTIONAL
      StorageType                     => 'MyString',             # OPTIONAL
      Tags                            => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                         # OPTIONAL
      TdeCredentialArn      => 'MyString',                       # OPTIONAL
      TdeCredentialPassword => 'MyString',                       # OPTIONAL
      Timezone              => 'MyString',                       # OPTIONAL
      VpcSecurityGroupIds   => [ 'MyString', ... ],              # OPTIONAL
    );

    # Results:
    my $DBInstance = $CreateDBInstanceResult->DBInstance;

    # Returns a L<Paws::Neptune::CreateDBInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBInstance>

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The amount of storage (in gibibytes) to allocate for the DB instance.

Type: Integer

Not applicable. Neptune cluster volumes automatically grow as the
amount of data in your database increases, though you are only charged
for the space that you use in a Neptune cluster volume.



=head2 AutoMinorVersionUpgrade => Bool

Indicates that minor engine upgrades are applied automatically to the
DB instance during the maintenance window.

Default: C<true>



=head2 AvailabilityZone => Str

The EC2 Availability Zone that the DB instance is created in.

Default: A random, system-chosen Availability Zone in the endpoint's
AWS Region.

Example: C<us-east-1d>

Constraint: The AvailabilityZone parameter can't be specified if the
MultiAZ parameter is set to C<true>. The specified Availability Zone
must be in the same AWS Region as the current endpoint.



=head2 BackupRetentionPeriod => Int

The number of days for which automated backups are retained.

Not applicable. The retention period for automated backups is managed
by the DB cluster. For more information, see CreateDBCluster.

Default: 1

Constraints:

=over

=item *

Must be a value from 0 to 35

=item *

Cannot be set to 0 if the DB instance is a source to Read Replicas

=back




=head2 CharacterSetName => Str

Indicates that the DB instance should be associated with the specified
CharacterSet.

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
Regions.



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

Cannot end with a hyphen or contain two consecutive hyphens.

=back

Example: C<mydbinstance>



=head2 DBName => Str

The database name.

Type: String



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

Cannot end with a hyphen or contain two consecutive hyphens

=back




=head2 DBSecurityGroups => ArrayRef[Str|Undef]

A list of DB security groups to associate with this DB instance.

Default: The default DB security group for the database engine.



=head2 DBSubnetGroupName => Str

A DB subnet group to associate with this DB instance.

If there is no DB subnet group, then it is a non-VPC DB instance.



=head2 Domain => Str

Specify the Active Directory Domain to create the instance in.



=head2 DomainIAMRoleName => Str

Specify the name of the IAM role to be used when making API calls to
the Directory Service.



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of log types that need to be enabled for exporting to
CloudWatch Logs.



=head2 EnableIAMDatabaseAuthentication => Bool

True to enable AWS Identity and Access Management (IAM) authentication
for Neptune.

Default: C<false>



=head2 EnablePerformanceInsights => Bool

True to enable Performance Insights for the DB instance, and otherwise
false.



=head2 B<REQUIRED> Engine => Str

The name of the database engine to be used for this instance.

Valid Values: C<neptune>



=head2 EngineVersion => Str

The version number of the database engine to use.



=head2 Iops => Int

The amount of Provisioned IOPS (input/output operations per second) to
be initially allocated for the DB instance.



=head2 KmsKeyId => Str

The AWS KMS key identifier for an encrypted DB instance.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are creating a DB instance with the same AWS
account that owns the KMS encryption key used to encrypt the new DB
instance, then you can use the KMS key alias instead of the ARN for the
KM encryption key.

Not applicable. The KMS key identifier is managed by the DB cluster.
For more information, see CreateDBCluster.

If the C<StorageEncrypted> parameter is true, and you do not specify a
value for the C<KmsKeyId> parameter, then Amazon Neptune will use your
default encryption key. AWS KMS creates the default encryption key for
your AWS account. Your AWS account has a different default encryption
key for each AWS Region.



=head2 LicenseModel => Str

License model information for this DB instance.

Valid values: C<license-included> | C<bring-your-own-license> |
C<general-public-license>



=head2 MasterUsername => Str

The name for the master user. Not used.



=head2 MasterUserPassword => Str

The password for the master user. The password can include any
printable ASCII character except "/", """, or "@".

Not used.



=head2 MonitoringInterval => Int

The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the DB instance. To disable collecting
Enhanced Monitoring metrics, specify 0. The default is 0.

If C<MonitoringRoleArn> is specified, then you must also set
C<MonitoringInterval> to a value other than 0.

Valid Values: C<0, 1, 5, 10, 15, 30, 60>



=head2 MonitoringRoleArn => Str

The ARN for the IAM role that permits Neptune to send enhanced
monitoring metrics to Amazon CloudWatch Logs. For example,
C<arn:aws:iam:123456789012:role/emaccess>.

If C<MonitoringInterval> is set to a value other than 0, then you must
supply a C<MonitoringRoleArn> value.



=head2 MultiAZ => Bool

Specifies if the DB instance is a Multi-AZ deployment. You can't set
the AvailabilityZone parameter if the MultiAZ parameter is set to true.



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



=head2 Port => Int

The port number on which the database accepts connections.

Not applicable. The port is managed by the DB cluster. For more
information, see CreateDBCluster.

Default: C<8182>

Type: Integer



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created.

Not applicable. The daily time range for creating automated backups is
managed by the DB cluster. For more information, see CreateDBCluster.



=head2 PreferredMaintenanceWindow => Str

The time range each week during which system maintenance can occur, in
Universal Coordinated Time (UTC).

Format: C<ddd:hh24:mi-ddd:hh24:mi>

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region, occurring on a random day of the
week.

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

Constraints: Minimum 30-minute window.



=head2 PromotionTier => Int

A value that specifies the order in which an Read Replica is promoted
to the primary instance after a failure of the existing primary
instance.

Default: 1

Valid Values: 0 - 15



=head2 PubliclyAccessible => Bool

This parameter is not supported.



=head2 StorageEncrypted => Bool

Specifies whether the DB instance is encrypted.

Not applicable. The encryption for DB instances is managed by the DB
cluster. For more information, see CreateDBCluster.

Default: false



=head2 StorageType => Str

Specifies the storage type to be associated with the DB instance.

Not applicable. Storage is managed by the DB Cluster.



=head2 Tags => ArrayRef[L<Paws::Neptune::Tag>]





=head2 TdeCredentialArn => Str

The ARN from the key store with which to associate the instance for TDE
encryption.



=head2 TdeCredentialPassword => Str

The password for the given ARN from the key store in order to access
the device.



=head2 Timezone => Str

The time zone of the DB instance.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with this DB instance.

Not applicable. The associated list of EC2 VPC security groups is
managed by the DB cluster. For more information, see CreateDBCluster.

Default: The default EC2 VPC security group for the DB subnet group's
VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBInstance in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

