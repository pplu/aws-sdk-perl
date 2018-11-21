
package Paws::RDS::RestoreDBInstanceToPointInTime;
  use Moose;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBName => (is => 'ro', isa => 'Str');
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has Domain => (is => 'ro', isa => 'Str');
  has DomainIAMRoleName => (is => 'ro', isa => 'Str');
  has EnableCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has ProcessorFeatures => (is => 'ro', isa => 'ArrayRef[Paws::RDS::ProcessorFeature]');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has RestoreTime => (is => 'ro', isa => 'Str');
  has SourceDBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has SourceDbiResourceId => (is => 'ro', isa => 'Str');
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TargetDBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has TdeCredentialArn => (is => 'ro', isa => 'Str');
  has TdeCredentialPassword => (is => 'ro', isa => 'Str');
  has UseDefaultProcessorFeatures => (is => 'ro', isa => 'Bool');
  has UseLatestRestorableTime => (is => 'ro', isa => 'Bool');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceToPointInTime');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::RestoreDBInstanceToPointInTimeResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceToPointInTimeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RestoreDBInstanceToPointInTime - Arguments for method RestoreDBInstanceToPointInTime on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreDBInstanceToPointInTime on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method RestoreDBInstanceToPointInTime.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreDBInstanceToPointInTime.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $RestoreDBInstanceToPointInTimeResult =
      $rds->RestoreDBInstanceToPointInTime(
      TargetDBInstanceIdentifier      => 'MyString',
      AutoMinorVersionUpgrade         => 1,                      # OPTIONAL
      AvailabilityZone                => 'MyString',             # OPTIONAL
      CopyTagsToSnapshot              => 1,                      # OPTIONAL
      DBInstanceClass                 => 'MyString',             # OPTIONAL
      DBName                          => 'MyString',             # OPTIONAL
      DBParameterGroupName            => 'MyString',             # OPTIONAL
      DBSubnetGroupName               => 'MyString',             # OPTIONAL
      DeletionProtection              => 1,                      # OPTIONAL
      Domain                          => 'MyString',             # OPTIONAL
      DomainIAMRoleName               => 'MyString',             # OPTIONAL
      EnableCloudwatchLogsExports     => [ 'MyString', ... ],    # OPTIONAL
      EnableIAMDatabaseAuthentication => 1,                      # OPTIONAL
      Engine                          => 'MyString',             # OPTIONAL
      Iops                            => 1,                      # OPTIONAL
      LicenseModel                    => 'MyString',             # OPTIONAL
      MultiAZ                         => 1,                      # OPTIONAL
      OptionGroupName                 => 'MyString',             # OPTIONAL
      Port                            => 1,                      # OPTIONAL
      ProcessorFeatures               => [
        {
          Name  => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                         # OPTIONAL
      PubliclyAccessible         => 1,                           # OPTIONAL
      RestoreTime                => '1970-01-01T01:00:00',       # OPTIONAL
      SourceDBInstanceIdentifier => 'MyString',                  # OPTIONAL
      SourceDbiResourceId        => 'MyString',                  # OPTIONAL
      StorageType                => 'MyString',                  # OPTIONAL
      Tags                       => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                         # OPTIONAL
      TdeCredentialArn            => 'MyString',                 # OPTIONAL
      TdeCredentialPassword       => 'MyString',                 # OPTIONAL
      UseDefaultProcessorFeatures => 1,                          # OPTIONAL
      UseLatestRestorableTime     => 1,                          # OPTIONAL
      VpcSecurityGroupIds         => [ 'MyString', ... ],        # OPTIONAL
      );

    # Results:
    my $DBInstance = $RestoreDBInstanceToPointInTimeResult->DBInstance;

    # Returns a L<Paws::RDS::RestoreDBInstanceToPointInTimeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RestoreDBInstanceToPointInTime>

=head1 ATTRIBUTES


=head2 AutoMinorVersionUpgrade => Bool

Indicates that minor version upgrades are applied automatically to the
DB instance during the maintenance window.



=head2 AvailabilityZone => Str

The EC2 Availability Zone that the DB instance is created in.

Default: A random, system-chosen Availability Zone.

Constraint: You can't specify the AvailabilityZone parameter if the
MultiAZ parameter is set to true.

Example: C<us-east-1a>



=head2 CopyTagsToSnapshot => Bool

True to copy all tags from the restored DB instance to snapshots of the
DB instance, and otherwise false. The default is false.



=head2 DBInstanceClass => Str

The compute and memory capacity of the Amazon RDS DB instance, for
example, C<db.m4.large>. Not all DB instance classes are available in
all AWS Regions, or for all database engines. For the full list of DB
instance classes, and availability for your engine, see DB Instance
Class
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html)
in the I<Amazon RDS User Guide.>

Default: The same DBInstanceClass as the original DB instance.



=head2 DBName => Str

The database name for the restored DB instance.

This parameter is not used for the MySQL or MariaDB engines.



=head2 DBParameterGroupName => Str

The name of the DB parameter group to associate with this DB instance.
If this argument is omitted, the default DBParameterGroup for the
specified engine is used.

Constraints:

=over

=item *

If supplied, must match the name of an existing DBParameterGroup.

=item *

Must be 1 to 255 letters, numbers, or hyphens.

=item *

First character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back




=head2 DBSubnetGroupName => Str

The DB subnet group name to use for the new instance.

Constraints: If supplied, must match the name of an existing
DBSubnetGroup.

Example: C<mySubnetgroup>



=head2 DeletionProtection => Bool

Indicates if the DB instance should have deletion protection enabled.
The database can't be deleted when this value is set to true. The
default is false. For more information, see Deleting a DB Instance
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html).



=head2 Domain => Str

Specify the Active Directory Domain to restore the instance in.



=head2 DomainIAMRoleName => Str

Specify the name of the IAM role to be used when making API calls to
the Directory Service.



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of logs that the restored DB instance is to export to
CloudWatch Logs. The values in the list depend on the DB engine being
used. For more information, see Publishing Database Logs to Amazon
CloudWatch Logs
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

=back

Default: C<false>



=head2 Engine => Str

The database engine to use for the new instance.

Default: The same as source

Constraint: Must be compatible with the engine of the source

Valid Values:

=over

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




=head2 Iops => Int

The amount of Provisioned IOPS (input/output operations per second) to
be initially allocated for the DB instance.

Constraints: Must be an integer greater than 1000.

B<SQL Server>

Setting the IOPS value for the SQL Server database engine is not
supported.



=head2 LicenseModel => Str

License model information for the restored DB instance.

Default: Same as source.

Valid values: C<license-included> | C<bring-your-own-license> |
C<general-public-license>



=head2 MultiAZ => Bool

Specifies if the DB instance is a Multi-AZ deployment.

Constraint: You can't specify the AvailabilityZone parameter if the
MultiAZ parameter is set to C<true>.



=head2 OptionGroupName => Str

The name of the option group to be used for the restored DB instance.

Permanent options, such as the TDE option for Oracle Advanced Security
TDE, can't be removed from an option group, and that option group can't
be removed from a DB instance once it is associated with a DB instance



=head2 Port => Int

The port number on which the database accepts connections.

Constraints: Value must be C<1150-65535>

Default: The same port as the original DB instance.



=head2 ProcessorFeatures => ArrayRef[L<Paws::RDS::ProcessorFeature>]

The number of CPU cores and the number of threads per core for the DB
instance class of the DB instance.



=head2 PubliclyAccessible => Bool

Specifies the accessibility options for the DB instance. A value of
true specifies an Internet-facing instance with a publicly resolvable
DNS name, which resolves to a public IP address. A value of false
specifies an internal instance with a DNS name that resolves to a
private IP address. For more information, see CreateDBInstance.



=head2 RestoreTime => Str

The date and time to restore from.

Valid Values: Value must be a time in Universal Coordinated Time (UTC)
format

Constraints:

=over

=item *

Must be before the latest restorable time for the DB instance

=item *

Can't be specified if UseLatestRestorableTime parameter is true

=back

Example: C<2009-09-07T23:45:00Z>



=head2 SourceDBInstanceIdentifier => Str

The identifier of the source DB instance from which to restore.

Constraints:

=over

=item *

Must match the identifier of an existing DB instance.

=back




=head2 SourceDbiResourceId => Str

The resource ID of the source DB instance from which to restore.



=head2 StorageType => Str

Specifies the storage type to be associated with the DB instance.

Valid values: C<standard | gp2 | io1>

If you specify C<io1>, you must also include a value for the C<Iops>
parameter.

Default: C<io1> if the C<Iops> parameter is specified, otherwise
C<standard>



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 B<REQUIRED> TargetDBInstanceIdentifier => Str

The name of the new DB instance to be created.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens

=item *

First character must be a letter

=item *

Can't end with a hyphen or contain two consecutive hyphens

=back




=head2 TdeCredentialArn => Str

The ARN from the key store with which to associate the instance for TDE
encryption.



=head2 TdeCredentialPassword => Str

The password for the given ARN from the key store in order to access
the device.



=head2 UseDefaultProcessorFeatures => Bool

A value that specifies that the DB instance class of the DB instance
uses its default processor features.



=head2 UseLatestRestorableTime => Bool

Specifies whether (C<true>) or not (C<false>) the DB instance is
restored from the latest backup time.

Default: C<false>

Constraints: Can't be specified if RestoreTime parameter is provided.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with this DB instance.

Default: The default EC2 VPC security group for the DB subnet group's
VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreDBInstanceToPointInTime in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

