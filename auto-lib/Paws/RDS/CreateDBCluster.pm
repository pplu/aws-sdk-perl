
package Paws::RDS::CreateDBCluster;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has BacktrackWindow => (is => 'ro', isa => 'Int');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has EnableCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineMode => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has GlobalClusterIdentifier => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PreSignedUrl => (is => 'ro', isa => 'Str');
  has ReplicationSourceIdentifier => (is => 'ro', isa => 'Str');
  has ScalingConfiguration => (is => 'ro', isa => 'Paws::RDS::ScalingConfiguration');
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CreateDBClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBCluster - Arguments for method CreateDBCluster on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBCluster on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CreateDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To create a DB cluster
    # This example creates a DB cluster.
    my $CreateDBClusterResult = $rds->CreateDBCluster(
      {
        'AvailabilityZones'           => ['us-east-1a'],
        'BackupRetentionPeriod'       => 1,
        'DBClusterIdentifier'         => 'mydbcluster',
        'DBClusterParameterGroupName' => 'mydbclusterparametergroup',
        'DatabaseName'                => 'myauroradb',
        'Engine'                      => 'aurora',
        'EngineVersion'               => '5.6.10a',
        'MasterUserPassword'          => 'mypassword',
        'MasterUsername'              => 'myuser',
        'Port'                        => 3306,
        'StorageEncrypted'            => 1
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBCluster>

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

A list of EC2 Availability Zones that instances in the DB cluster can
be created in. For information on AWS Regions and Availability Zones,
see Choosing the Regions and Availability Zones
(http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.RegionsAndAvailabilityZones.html)
in the I<Amazon Aurora User Guide>.



=head2 BacktrackWindow => Int

The target backtrack window, in seconds. To disable backtracking, set
this value to 0.

Default: 0

Constraints:

=over

=item *

If specified, this value must be set to a number from 0 to 259,200 (72
hours).

=back




=head2 BackupRetentionPeriod => Int

The number of days for which automated backups are retained. You must
specify a minimum value of 1.

Default: 1

Constraints:

=over

=item *

Must be a value from 1 to 35

=back




=head2 CharacterSetName => Str

A value that indicates that the DB cluster should be associated with
the specified CharacterSet.



=head2 DatabaseName => Str

The name for your database of up to 64 alpha-numeric characters. If you
do not provide a name, Amazon RDS will not create a database in the DB
cluster you are creating.



=head2 B<REQUIRED> DBClusterIdentifier => Str

The DB cluster identifier. This parameter is stored as a lowercase
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

Example: C<my-cluster1>



=head2 DBClusterParameterGroupName => Str

The name of the DB cluster parameter group to associate with this DB
cluster. If this argument is omitted, C<default.aurora5.6> is used.

Constraints:

=over

=item *

If supplied, must match the name of an existing DB cluster parameter
group.

=back




=head2 DBSubnetGroupName => Str

A DB subnet group to associate with this DB cluster.

Constraints: Must match the name of an existing DBSubnetGroup. Must not
be default.

Example: C<mySubnetgroup>



=head2 DeletionProtection => Bool

Indicates if the DB cluster should have deletion protection enabled.
The database can't be deleted when this value is set to true. The
default is false.



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of log types that need to be enabled for exporting to
CloudWatch Logs. The values in the list depend on the DB engine being
used. For more information, see Publishing Database Logs to Amazon
CloudWatch Logs
(http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
in the I<Amazon Aurora User Guide>.



=head2 EnableIAMDatabaseAuthentication => Bool

True to enable mapping of AWS Identity and Access Management (IAM)
accounts to database accounts, and otherwise false.

Default: C<false>



=head2 B<REQUIRED> Engine => Str

The name of the database engine to be used for this DB cluster.

Valid Values: C<aurora> (for MySQL 5.6-compatible Aurora),
C<aurora-mysql> (for MySQL 5.7-compatible Aurora), and
C<aurora-postgresql>



=head2 EngineMode => Str

The DB engine mode of the DB cluster, either C<provisioned>,
C<serverless>, C<parallelquery>, or C<global>.



=head2 EngineVersion => Str

The version number of the database engine to use.

B<Aurora MySQL>

Example: C<5.6.10a>, C<5.7.12>

B<Aurora PostgreSQL>

Example: C<9.6.3>



=head2 GlobalClusterIdentifier => Str

The global cluster ID of an Aurora cluster that becomes the primary
cluster in the new global database cluster.



=head2 KmsKeyId => Str

The AWS KMS key identifier for an encrypted DB cluster.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are creating a DB cluster with the same AWS
account that owns the KMS encryption key used to encrypt the new DB
cluster, then you can use the KMS key alias instead of the ARN for the
KMS encryption key.

If an encryption key is not specified in C<KmsKeyId>:

=over

=item *

If C<ReplicationSourceIdentifier> identifies an encrypted source, then
Amazon RDS will use the encryption key used to encrypt the source.
Otherwise, Amazon RDS will use your default encryption key.

=item *

If the C<StorageEncrypted> parameter is true and
C<ReplicationSourceIdentifier> is not specified, then Amazon RDS will
use your default encryption key.

=back

AWS KMS creates the default encryption key for your AWS account. Your
AWS account has a different default encryption key for each AWS Region.

If you create a Read Replica of an encrypted DB cluster in another AWS
Region, you must set C<KmsKeyId> to a KMS key ID that is valid in the
destination AWS Region. This key is used to encrypt the Read Replica in
that AWS Region.



=head2 MasterUsername => Str

The name of the master user for the DB cluster.

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

The password for the master database user. This password can contain
any printable ASCII character except "/", """, or "@".

Constraints: Must contain from 8 to 41 characters.



=head2 OptionGroupName => Str

A value that indicates that the DB cluster should be associated with
the specified option group.

Permanent options can't be removed from an option group. The option
group can't be removed from a DB cluster once it is associated with a
DB cluster.



=head2 Port => Int

The port number on which the instances in the DB cluster accept
connections.

Default: C<3306> if engine is set as aurora or C<5432> if set to
aurora-postgresql.



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled using the C<BackupRetentionPeriod>
parameter.

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region. To see the time blocks available,
see Adjusting the Preferred DB Cluster Maintenance Window
(http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora)
in the I<Amazon Aurora User Guide.>

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

The weekly time range during which system maintenance can occur, in
Universal Coordinated Time (UTC).

Format: C<ddd:hh24:mi-ddd:hh24:mi>

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region, occurring on a random day of the
week. To see the time blocks available, see Adjusting the Preferred DB
Cluster Maintenance Window
(http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora)
in the I<Amazon Aurora User Guide.>

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

Constraints: Minimum 30-minute window.



=head2 PreSignedUrl => Str

A URL that contains a Signature Version 4 signed request for the
C<CreateDBCluster> action to be called in the source AWS Region where
the DB cluster is replicated from. You only need to specify
C<PreSignedUrl> when you are performing cross-region replication from
an encrypted DB cluster.

The pre-signed URL must be a valid request for the C<CreateDBCluster>
API action that can be executed in the source AWS Region that contains
the encrypted DB cluster to be copied.

The pre-signed URL request must contain the following parameter values:

=over

=item *

C<KmsKeyId> - The AWS KMS key identifier for the key to use to encrypt
the copy of the DB cluster in the destination AWS Region. This should
refer to the same KMS key for both the C<CreateDBCluster> action that
is called in the destination AWS Region, and the action contained in
the pre-signed URL.

=item *

C<DestinationRegion> - The name of the AWS Region that Aurora Read
Replica will be created in.

=item *

C<ReplicationSourceIdentifier> - The DB cluster identifier for the
encrypted DB cluster to be copied. This identifier must be in the
Amazon Resource Name (ARN) format for the source AWS Region. For
example, if you are copying an encrypted DB cluster from the us-west-2
AWS Region, then your C<ReplicationSourceIdentifier> would look like
Example: C<arn:aws:rds:us-west-2:123456789012:cluster:aurora-cluster1>.

=back

To learn how to generate a Signature Version 4 signed request, see
Authenticating Requests: Using Query Parameters (AWS Signature Version
4)
(http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html)
and Signature Version 4 Signing Process
(http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).



=head2 ReplicationSourceIdentifier => Str

The Amazon Resource Name (ARN) of the source DB instance or DB cluster
if this DB cluster is created as a Read Replica.



=head2 ScalingConfiguration => L<Paws::RDS::ScalingConfiguration>

For DB clusters in C<serverless> DB engine mode, the scaling properties
of the DB cluster.



=head2 StorageEncrypted => Bool

Specifies whether the DB cluster is encrypted.



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with this DB cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBCluster in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

