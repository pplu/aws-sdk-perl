
package Paws::RDS::RestoreDBInstanceFromDBSnapshot;
  use Moose;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBName => (is => 'ro', isa => 'Str');
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has Domain => (is => 'ro', isa => 'Str');
  has DomainIAMRoleName => (is => 'ro', isa => 'Str');
  has EnableCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableCustomerOwnedIp => (is => 'ro', isa => 'Bool');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has ProcessorFeatures => (is => 'ro', isa => 'ArrayRef[Paws::RDS::ProcessorFeature]');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TdeCredentialArn => (is => 'ro', isa => 'Str');
  has TdeCredentialPassword => (is => 'ro', isa => 'Str');
  has UseDefaultProcessorFeatures => (is => 'ro', isa => 'Bool');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceFromDBSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::RestoreDBInstanceFromDBSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceFromDBSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RestoreDBInstanceFromDBSnapshot - Arguments for method RestoreDBInstanceFromDBSnapshot on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreDBInstanceFromDBSnapshot on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method RestoreDBInstanceFromDBSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreDBInstanceFromDBSnapshot.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To restore a DB instance from a DB snapshot.
    # The following example restores a DB instance from a DB snapshot.
    my $RestoreDBInstanceFromDBSnapshotResult =
      $rds->RestoreDBInstanceFromDBSnapshot(
      'DBInstanceIdentifier' => 'mysqldb-restored',
      'DBSnapshotIdentifier' => 'rds:mysqldb-2014-04-22-08-15'
      );

    # Results:
    my $DBInstance = $RestoreDBInstanceFromDBSnapshotResult->DBInstance;

    # Returns a L<Paws::RDS::RestoreDBInstanceFromDBSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RestoreDBInstanceFromDBSnapshot>

=head1 ATTRIBUTES


=head2 AutoMinorVersionUpgrade => Bool

A value that indicates whether minor version upgrades are applied
automatically to the DB instance during the maintenance window.



=head2 AvailabilityZone => Str

The Availability Zone (AZ) where the DB instance will be created.

Default: A random, system-chosen Availability Zone.

Constraint: You can't specify the C<AvailabilityZone> parameter if the
DB instance is a Multi-AZ deployment.

Example: C<us-east-1a>



=head2 CopyTagsToSnapshot => Bool

A value that indicates whether to copy all tags from the restored DB
instance to snapshots of the DB instance. By default, tags are not
copied.



=head2 DBInstanceClass => Str

The compute and memory capacity of the Amazon RDS DB instance, for
example, C<db.m4.large>. Not all DB instance classes are available in
all Amazon Web Services Regions, or for all database engines. For the
full list of DB instance classes, and availability for your engine, see
DB Instance Class
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html)
in the I<Amazon RDS User Guide.>

Default: The same DBInstanceClass as the original DB instance.



=head2 B<REQUIRED> DBInstanceIdentifier => Str

Name of the DB instance to create from the DB snapshot. This parameter
isn't case-sensitive.

Constraints:

=over

=item *

Must contain from 1 to 63 numbers, letters, or hyphens

=item *

First character must be a letter

=item *

Can't end with a hyphen or contain two consecutive hyphens

=back

Example: C<my-snapshot-id>



=head2 DBName => Str

The database name for the restored DB instance.

This parameter doesn't apply to the MySQL, PostgreSQL, or MariaDB
engines.



=head2 DBParameterGroupName => Str

The name of the DB parameter group to associate with this DB instance.

If you do not specify a value for C<DBParameterGroupName>, then the
default C<DBParameterGroup> for the specified DB engine is used.

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




=head2 B<REQUIRED> DBSnapshotIdentifier => Str

The identifier for the DB snapshot to restore from.

Constraints:

=over

=item *

Must match the identifier of an existing DBSnapshot.

=item *

If you are restoring from a shared manual DB snapshot, the
C<DBSnapshotIdentifier> must be the ARN of the shared DB snapshot.

=back




=head2 DBSubnetGroupName => Str

The DB subnet group name to use for the new instance.

Constraints: If supplied, must match the name of an existing
DBSubnetGroup.

Example: C<mySubnetgroup>



=head2 DeletionProtection => Bool

A value that indicates whether the DB instance has deletion protection
enabled. The database can't be deleted when deletion protection is
enabled. By default, deletion protection is disabled. For more
information, see Deleting a DB Instance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html).



=head2 Domain => Str

Specify the Active Directory directory ID to restore the DB instance
in. The domain must be created prior to this operation. Currently, only
MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB instances can be
created in an Active Directory Domain.

For more information, see Kerberos Authentication
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html)
in the I<Amazon RDS User Guide>.



=head2 DomainIAMRoleName => Str

Specify the name of the IAM role to be used when making API calls to
the Directory Service.



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of logs that the restored DB instance is to export to
CloudWatch Logs. The values in the list depend on the DB engine being
used. For more information, see Publishing Database Logs to Amazon
CloudWatch Logs
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
in the I<Amazon RDS User Guide>.



=head2 EnableCustomerOwnedIp => Bool

A value that indicates whether to enable a customer-owned IP address
(CoIP) for an RDS on Outposts DB instance.

A I<CoIP> provides local or external connectivity to resources in your
Outpost subnets through your on-premises network. For some use cases, a
CoIP can provide lower latency for connections to the DB instance from
outside of its virtual private cloud (VPC) on your local network.

For more information about RDS on Outposts, see Working with Amazon RDS
on Amazon Web Services Outposts
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html)
in the I<Amazon RDS User Guide>.

For more information about CoIPs, see Customer-owned IP addresses
(https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing)
in the I<Amazon Web Services Outposts User Guide>.



=head2 EnableIAMDatabaseAuthentication => Bool

A value that indicates whether to enable mapping of Amazon Web Services
Identity and Access Management (IAM) accounts to database accounts. By
default, mapping is disabled.

For more information about IAM database authentication, see IAM
Database Authentication for MySQL and PostgreSQL
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html)
in the I<Amazon RDS User Guide.>



=head2 Engine => Str

The database engine to use for the new instance.

Default: The same as source

Constraint: Must be compatible with the engine of the source. For
example, you can restore a MariaDB 10.1 DB instance from a MySQL 5.6
snapshot.

Valid Values:

=over

=item *

C<mariadb>

=item *

C<mysql>

=item *

C<oracle-ee>

=item *

C<oracle-ee-cdb>

=item *

C<oracle-se2>

=item *

C<oracle-se2-cdb>

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

Specifies the amount of provisioned IOPS for the DB instance, expressed
in I/O operations per second. If this parameter isn't specified, the
IOPS value is taken from the backup. If this parameter is set to 0, the
new instance is converted to a non-PIOPS instance. The conversion takes
additional time, though your DB instance is available for connections
before the conversion starts.

The provisioned IOPS value must follow the requirements for your
database engine. For more information, see Amazon RDS Provisioned IOPS
Storage to Improve Performance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS)
in the I<Amazon RDS User Guide.>

Constraints: Must be an integer greater than 1000.



=head2 LicenseModel => Str

License model information for the restored DB instance.

Default: Same as source.

Valid values: C<license-included> | C<bring-your-own-license> |
C<general-public-license>



=head2 MultiAZ => Bool

A value that indicates whether the DB instance is a Multi-AZ
deployment.

Constraint: You can't specify the C<AvailabilityZone> parameter if the
DB instance is a Multi-AZ deployment.



=head2 OptionGroupName => Str

The name of the option group to be used for the restored DB instance.

Permanent options, such as the TDE option for Oracle Advanced Security
TDE, can't be removed from an option group, and that option group can't
be removed from a DB instance once it is associated with a DB instance



=head2 Port => Int

The port number on which the database accepts connections.

Default: The same port as the original DB instance

Constraints: Value must be C<1150-65535>



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



=head2 StorageType => Str

Specifies the storage type to be associated with the DB instance.

Valid values: C<standard | gp2 | io1>

If you specify C<io1>, you must also include a value for the C<Iops>
parameter.

Default: C<io1> if the C<Iops> parameter is specified, otherwise C<gp2>



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 TdeCredentialArn => Str

The ARN from the key store with which to associate the instance for TDE
encryption.



=head2 TdeCredentialPassword => Str

The password for the given ARN from the key store in order to access
the device.



=head2 UseDefaultProcessorFeatures => Bool

A value that indicates whether the DB instance class of the DB instance
uses its default processor features.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with this DB instance.

Default: The default EC2 VPC security group for the DB subnet group's
VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreDBInstanceFromDBSnapshot in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

