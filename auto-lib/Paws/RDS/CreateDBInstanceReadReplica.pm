
package Paws::RDS::CreateDBInstanceReadReplica;
  use Moose;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has Iops => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MonitoringInterval => (is => 'ro', isa => 'Int');
  has MonitoringRoleArn => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreSignedUrl => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has SourceDBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceReadReplica');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CreateDBInstanceReadReplicaResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceReadReplicaResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBInstanceReadReplica - Arguments for method CreateDBInstanceReadReplica on Paws::RDS

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBInstanceReadReplica on the 
Amazon Relational Database Service service. Use the attributes of this class
as arguments to method CreateDBInstanceReadReplica.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBInstanceReadReplica.

As an example:

  $service_obj->CreateDBInstanceReadReplica(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AutoMinorVersionUpgrade => Bool

Indicates that minor engine upgrades will be applied automatically to
the Read Replica during the maintenance window.

Default: Inherits from the source DB instance



=head2 AvailabilityZone => Str

The Amazon EC2 Availability Zone that the Read Replica will be created
in.

Default: A random, system-chosen Availability Zone in the endpoint's
AWS Region.

Example: C<us-east-1d>



=head2 CopyTagsToSnapshot => Bool

True to copy all tags from the Read Replica to snapshots of the Read
Replica; otherwise false. The default is false.



=head2 DBInstanceClass => Str

The compute and memory capacity of the Read Replica. Note that not all
instance classes are available in all regions for all DB engines.

Valid Values: C<db.m1.small | db.m1.medium | db.m1.large | db.m1.xlarge
| db.m2.xlarge |db.m2.2xlarge | db.m2.4xlarge | db.m3.medium |
db.m3.large | db.m3.xlarge | db.m3.2xlarge | db.m4.large | db.m4.xlarge
| db.m4.2xlarge | db.m4.4xlarge | db.m4.10xlarge | db.r3.large |
db.r3.xlarge | db.r3.2xlarge | db.r3.4xlarge | db.r3.8xlarge |
db.t2.micro | db.t2.small | db.t2.medium | db.t2.large>

Default: Inherits from the source DB instance.



=head2 B<REQUIRED> DBInstanceIdentifier => Str

The DB instance identifier of the Read Replica. This identifier is the
unique key that identifies a DB instance. This parameter is stored as a
lowercase string.



=head2 DBSubnetGroupName => Str

Specifies a DB subnet group for the DB instance. The new DB instance
will be created in the VPC associated with the DB subnet group. If no
DB subnet group is specified, then the new DB instance is not created
in a VPC.

Constraints:

=over

=item *

Can only be specified if the source DB instance identifier specifies a
DB instance in another AWS Region.

=item *

The specified DB subnet group must be in the same AWS Region in which
the operation is running.

=item *

All Read Replicas in one AWS Region that are created from the same
source DB instance must either:E<gt>

=over

=item *

Specify DB subnet groups from the same VPC. All these Read Replicas
will be created in the same VPC.

=item *

Not specify a DB subnet group. All these Read Replicas will be created
outside of any VPC.

=back

=back

Constraints: Must contain no more than 255 alphanumeric characters,
periods, underscores, spaces, or hyphens. Must not be default.

Example: C<mySubnetgroup>



=head2 EnableIAMDatabaseAuthentication => Bool

True to enable mapping of AWS Identity and Access Management (IAM)
accounts to database accounts; otherwise false.

You can enable IAM database authentication for the following database
engines

=over

=item *

For MySQL 5.6, minor version 5.6.34 or higher

=item *

For MySQL 5.7, minor version 5.7.16 or higher

=item *

Aurora 5.6 or higher.

=back

Default: C<false>



=head2 Iops => Int

The amount of Provisioned IOPS (input/output operations per second) to
be initially allocated for the DB instance.



=head2 KmsKeyId => Str

The AWS KMS key ID for an encrypted Read Replica. The KMS key ID is the
Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias
for the KMS encryption key.

If you specify this parameter when you create a Read Replica from an
unencrypted DB instance, the Read Replica is encrypted.

If you create an encrypted Read Replica in the same AWS Region as the
source DB instance, then you do not have to specify a value for this
parameter. The Read Replica is encrypted with the same KMS key as the
source DB instance.

If you create an encrypted Read Replica in a different AWS Region, then
you must specify a KMS key for the destination AWS Region. KMS
encryption keys are specific to the AWS Region that they are created
in, and you cannot use encryption keys from one AWS Region in another
AWS Region.



=head2 MonitoringInterval => Int

The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the Read Replica. To disable collecting
Enhanced Monitoring metrics, specify 0. The default is 0.

If C<MonitoringRoleArn> is specified, then you must also set
C<MonitoringInterval> to a value other than 0.

Valid Values: C<0, 1, 5, 10, 15, 30, 60>



=head2 MonitoringRoleArn => Str

The ARN for the IAM role that permits RDS to send enhanced monitoring
metrics to CloudWatch Logs. For example,
C<arn:aws:iam:123456789012:role/emaccess>. For information on creating
a monitoring role, go to To create an IAM role for Amazon RDS Enhanced
Monitoring.

If C<MonitoringInterval> is set to a value other than 0, then you must
supply a C<MonitoringRoleArn> value.



=head2 OptionGroupName => Str

The option group the DB instance will be associated with. If omitted,
the default option group for the engine specified will be used.



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
specify the source region option instead of this parameter when you
create an encrypted Read Replica from another AWS Region by using the
AWS CLI.

The presigned URL must be a valid request for the
C<CreateDBInstanceReadReplica> API action that can be executed in the
source AWS Region that contains the encrypted source DB instance. The
presigned URL request must contain the following parameter values:

=over

=item *

C<DestinationRegion> - The AWS Region that the encrypted Read Replica
will be created in. This AWS Region is the same one where the
C<CreateDBInstanceReadReplica> action is called that contains this
presigned URL.

For example, if you create an encrypted DB instance in the us-west-1
region, from a source DB instance in the us-east-2 region, then you
call the C<CreateDBInstanceReadReplica> action in the us-east-1 region
and provide a presigned URL that contains a call to the
C<CreateDBInstanceReadReplica> action in the us-west-2 region. For this
example, the C<DestinationRegion> in the presigned URL must be set to
the us-east-1 region.

=item *

C<KmsKeyId> - The KMS key identifier for the key to use to encrypt the
Read Replica in the destination AWS Region. This is the same identifier
for both the C<CreateDBInstanceReadReplica> action that is called in
the destination AWS Region, and the action contained in the presigned
URL.

=item *

C<SourceDBInstanceIdentifier> - The DB instance identifier for the
encrypted DB instance to be replicated. This identifier must be in the
Amazon Resource Name (ARN) format for the source AWS Region. For
example, if you are creating an encrypted Read Replica from a DB
instance in the us-west-2 region, then your
C<SourceDBInstanceIdentifier> looks like the following example:
C<arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-20161115>.

=back

To learn how to generate a Signature Version 4 signed request, see
Authenticating Requests: Using Query Parameters (AWS Signature Version
4) and Signature Version 4 Signing Process.



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
source is running MySQL 5.6.

=item *

Can specify a DB instance that is a PostgreSQL DB instance only if the
source is running PostgreSQL 9.3.5 or later (9.4.7 and higher for cross
region replication).

=item *

The specified DB instance must have automatic backups enabled, its
backup retention period must be greater than 0.

=item *

If the source DB instance is in the same AWS Region as the Read
Replica, specify a valid DB instance identifier.

=item *

If the source DB instance is in a different AWS Region than the Read
Replica, specify a valid DB instance ARN. For more information, go to
Constructing a Amazon RDS Amazon Resource Name (ARN).

=back




=head2 StorageType => Str

Specifies the storage type to be associated with the Read Replica.

Valid values: C<standard | gp2 | io1>

If you specify C<io1>, you must also include a value for the C<Iops>
parameter.

Default: C<io1> if the C<Iops> parameter is specified; otherwise
C<standard>



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBInstanceReadReplica in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

