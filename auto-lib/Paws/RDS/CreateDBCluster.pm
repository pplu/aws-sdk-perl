
package Paws::RDS::CreateDBCluster;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has BacktrackWindow => (is => 'ro', isa => 'Int');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has Domain => (is => 'ro', isa => 'Str');
  has DomainIAMRoleName => (is => 'ro', isa => 'Str');
  has EnableCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableGlobalWriteForwarding => (is => 'ro', isa => 'Bool');
  has EnableHttpEndpoint => (is => 'ro', isa => 'Bool');
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
    );

    # Results:
    my $DBCluster = $CreateDBClusterResult->DBCluster;

    # Returns a L<Paws::RDS::CreateDBClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBCluster>

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

A list of Availability Zones (AZs) where instances in the DB cluster
can be created. For information on Amazon Web Services Regions and
Availability Zones, see Choosing the Regions and Availability Zones
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.RegionsAndAvailabilityZones.html)
in the I<Amazon Aurora User Guide>.



=head2 BacktrackWindow => Int

The target backtrack window, in seconds. To disable backtracking, set
this value to 0.

Currently, Backtrack is only supported for Aurora MySQL DB clusters.

Default: 0

Constraints:

=over

=item *

If specified, this value must be set to a number from 0 to 259,200 (72
hours).

=back




=head2 BackupRetentionPeriod => Int

The number of days for which automated backups are retained.

Default: 1

Constraints:

=over

=item *

Must be a value from 1 to 35

=back




=head2 CharacterSetName => Str

A value that indicates that the DB cluster should be associated with
the specified CharacterSet.



=head2 CopyTagsToSnapshot => Bool

A value that indicates whether to copy all tags from the DB cluster to
snapshots of the DB cluster. The default is not to copy them.



=head2 DatabaseName => Str

The name for your database of up to 64 alphanumeric characters. If you
do not provide a name, Amazon RDS doesn't create a database in the DB
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
cluster. If you do not specify a value, then the default DB cluster
parameter group for the specified DB engine and version is used.

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

A value that indicates whether the DB cluster has deletion protection
enabled. The database can't be deleted when deletion protection is
enabled. By default, deletion protection is disabled.



=head2 Domain => Str

The Active Directory directory ID to create the DB cluster in.

For Amazon Aurora DB clusters, Amazon RDS can use Kerberos
Authentication to authenticate users that connect to the DB cluster.
For more information, see Kerberos Authentication
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html)
in the I<Amazon Aurora User Guide>.



=head2 DomainIAMRoleName => Str

Specify the name of the IAM role to be used when making API calls to
the Directory Service.



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of log types that need to be enabled for exporting to
CloudWatch Logs. The values in the list depend on the DB engine being
used. For more information, see Publishing Database Logs to Amazon
CloudWatch Logs
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
in the I<Amazon Aurora User Guide>.

B<Aurora MySQL>

Possible values are C<audit>, C<error>, C<general>, and C<slowquery>.

B<Aurora PostgreSQL>

Possible value is C<postgresql>.



=head2 EnableGlobalWriteForwarding => Bool

A value that indicates whether to enable this DB cluster to forward
write operations to the primary cluster of an Aurora global database
(GlobalCluster). By default, write operations are not allowed on Aurora
DB clusters that are secondary clusters in an Aurora global database.

You can set this value only on Aurora DB clusters that are members of
an Aurora global database. With this parameter enabled, a secondary
cluster can forward writes to the current primary cluster and the
resulting changes are replicated back to this cluster. For the primary
DB cluster of an Aurora global database, this value is used immediately
if the primary is demoted by the FailoverGlobalCluster API operation,
but it does nothing until then.



=head2 EnableHttpEndpoint => Bool

A value that indicates whether to enable the HTTP endpoint for an
Aurora Serverless DB cluster. By default, the HTTP endpoint is
disabled.

When enabled, the HTTP endpoint provides a connectionless web service
API for running SQL queries on the Aurora Serverless DB cluster. You
can also query your database from inside the RDS console with the query
editor.

For more information, see Using the Data API for Aurora Serverless
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html)
in the I<Amazon Aurora User Guide>.



=head2 EnableIAMDatabaseAuthentication => Bool

A value that indicates whether to enable mapping of Amazon Web Services
Identity and Access Management (IAM) accounts to database accounts. By
default, mapping is disabled.

For more information, see IAM Database Authentication
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html)
in the I<Amazon Aurora User Guide.>



=head2 B<REQUIRED> Engine => Str

The name of the database engine to be used for this DB cluster.

Valid Values: C<aurora> (for MySQL 5.6-compatible Aurora),
C<aurora-mysql> (for MySQL 5.7-compatible Aurora), and
C<aurora-postgresql>



=head2 EngineMode => Str

The DB engine mode of the DB cluster, either C<provisioned>,
C<serverless>, C<parallelquery>, C<global>, or C<multimaster>.

The C<parallelquery> engine mode isn't required for Aurora MySQL
version 1.23 and higher 1.x versions, and version 2.09 and higher 2.x
versions.

The C<global> engine mode isn't required for Aurora MySQL version 1.22
and higher 1.x versions, and C<global> engine mode isn't required for
any 2.x versions.

The C<multimaster> engine mode only applies for DB clusters created
with Aurora MySQL version 5.6.10a.

For Aurora PostgreSQL, the C<global> engine mode isn't required, and
both the C<parallelquery> and the C<multimaster> engine modes currently
aren't supported.

Limitations and requirements apply to some DB engine modes. For more
information, see the following sections in the I<Amazon Aurora User
Guide>:

=over

=item *

Limitations of Aurora Serverless
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html#aurora-serverless.limitations)

=item *

Limitations of Parallel Query
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-mysql-parallel-query.html#aurora-mysql-parallel-query-limitations)

=item *

Limitations of Aurora Global Databases
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html#aurora-global-database.limitations)

=item *

Limitations of Multi-Master Clusters
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-multi-master.html#aurora-multi-master-limitations)

=back




=head2 EngineVersion => Str

The version number of the database engine to use.

To list all of the available engine versions for C<aurora> (for MySQL
5.6-compatible Aurora), use the following command:

C<aws rds describe-db-engine-versions --engine aurora --query
"DBEngineVersions[].EngineVersion">

To list all of the available engine versions for C<aurora-mysql> (for
MySQL 5.7-compatible Aurora), use the following command:

C<aws rds describe-db-engine-versions --engine aurora-mysql --query
"DBEngineVersions[].EngineVersion">

To list all of the available engine versions for C<aurora-postgresql>,
use the following command:

C<aws rds describe-db-engine-versions --engine aurora-postgresql
--query "DBEngineVersions[].EngineVersion">

B<Aurora MySQL>

Example: C<5.6.10a>, C<5.6.mysql_aurora.1.19.2>, C<5.7.12>,
C<5.7.mysql_aurora.2.04.5>

B<Aurora PostgreSQL>

Example: C<9.6.3>, C<10.7>



=head2 GlobalClusterIdentifier => Str

The global cluster ID of an Aurora cluster that becomes the primary
cluster in the new global database cluster.



=head2 KmsKeyId => Str

The Amazon Web Services KMS key identifier for an encrypted DB cluster.

The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the Amazon Web Services KMS customer
master key (CMK). To use a CMK in a different Amazon Web Services
account, specify the key ARN or alias ARN.

When a CMK isn't specified in C<KmsKeyId>:

=over

=item *

If C<ReplicationSourceIdentifier> identifies an encrypted source, then
Amazon RDS will use the CMK used to encrypt the source. Otherwise,
Amazon RDS will use your default CMK.

=item *

If the C<StorageEncrypted> parameter is enabled and
C<ReplicationSourceIdentifier> isn't specified, then Amazon RDS will
use your default CMK.

=back

There is a default CMK for your Amazon Web Services account. Your
Amazon Web Services account has a different default CMK for each Amazon
Web Services Region.

If you create a read replica of an encrypted DB cluster in another
Amazon Web Services Region, you must set C<KmsKeyId> to a Amazon Web
Services KMS key identifier that is valid in the destination Amazon Web
Services Region. This CMK is used to encrypt the read replica in that
Amazon Web Services Region.



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
block of time for each Amazon Web Services Region. To view the time
blocks available, see Backup window
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.Backups.BackupWindow)
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
block of time for each Amazon Web Services Region, occurring on a
random day of the week. To see the time blocks available, see Adjusting
the Preferred DB Cluster Maintenance Window
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora)
in the I<Amazon Aurora User Guide.>

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

Constraints: Minimum 30-minute window.



=head2 PreSignedUrl => Str

A URL that contains a Signature Version 4 signed request for the
C<CreateDBCluster> action to be called in the source Amazon Web
Services Region where the DB cluster is replicated from. You only need
to specify C<PreSignedUrl> when you are performing cross-region
replication from an encrypted DB cluster.

The pre-signed URL must be a valid request for the C<CreateDBCluster>
API action that can be executed in the source Amazon Web Services
Region that contains the encrypted DB cluster to be copied.

The pre-signed URL request must contain the following parameter values:

=over

=item *

C<KmsKeyId> - The Amazon Web Services KMS key identifier for the key to
use to encrypt the copy of the DB cluster in the destination Amazon Web
Services Region. This should refer to the same Amazon Web Services KMS
CMK for both the C<CreateDBCluster> action that is called in the
destination Amazon Web Services Region, and the action contained in the
pre-signed URL.

=item *

C<DestinationRegion> - The name of the Amazon Web Services Region that
Aurora read replica will be created in.

=item *

C<ReplicationSourceIdentifier> - The DB cluster identifier for the
encrypted DB cluster to be copied. This identifier must be in the
Amazon Resource Name (ARN) format for the source Amazon Web Services
Region. For example, if you are copying an encrypted DB cluster from
the us-west-2 Amazon Web Services Region, then your
C<ReplicationSourceIdentifier> would look like Example:
C<arn:aws:rds:us-west-2:123456789012:cluster:aurora-cluster1>.

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
autogenerates a pre-signed URL that is a valid request for the
operation that can be executed in the source Amazon Web Services
Region.



=head2 ReplicationSourceIdentifier => Str

The Amazon Resource Name (ARN) of the source DB instance or DB cluster
if this DB cluster is created as a read replica.



=head2 ScalingConfiguration => L<Paws::RDS::ScalingConfiguration>

For DB clusters in C<serverless> DB engine mode, the scaling properties
of the DB cluster.



=head2 StorageEncrypted => Bool

A value that indicates whether the DB cluster is encrypted.



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]

Tags to assign to the DB cluster.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with this DB cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBCluster in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

