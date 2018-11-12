
package Paws::RDS::RestoreDBClusterFromS3;
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
  has EngineVersion => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str', required => 1);
  has MasterUserPassword => (is => 'ro', isa => 'Str', required => 1);
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str', required => 1);
  has S3IngestionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has S3Prefix => (is => 'ro', isa => 'Str');
  has SourceEngine => (is => 'ro', isa => 'Str', required => 1);
  has SourceEngineVersion => (is => 'ro', isa => 'Str', required => 1);
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterFromS3');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::RestoreDBClusterFromS3Result');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterFromS3Result');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RestoreDBClusterFromS3 - Arguments for method RestoreDBClusterFromS3 on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreDBClusterFromS3 on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method RestoreDBClusterFromS3.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreDBClusterFromS3.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $RestoreDBClusterFromS3Result = $rds->RestoreDBClusterFromS3(
      DBClusterIdentifier             => 'MyString',
      Engine                          => 'MyString',
      MasterUserPassword              => 'MyString',
      MasterUsername                  => 'MyString',
      S3BucketName                    => 'MyString',
      S3IngestionRoleArn              => 'MyString',
      SourceEngine                    => 'MyString',
      SourceEngineVersion             => 'MyString',
      AvailabilityZones               => [ 'MyString', ... ],    # OPTIONAL
      BacktrackWindow                 => 1,                      # OPTIONAL
      BackupRetentionPeriod           => 1,                      # OPTIONAL
      CharacterSetName                => 'MyString',             # OPTIONAL
      DBClusterParameterGroupName     => 'MyString',             # OPTIONAL
      DBSubnetGroupName               => 'MyString',             # OPTIONAL
      DatabaseName                    => 'MyString',             # OPTIONAL
      DeletionProtection              => 1,                      # OPTIONAL
      EnableCloudwatchLogsExports     => [ 'MyString', ... ],    # OPTIONAL
      EnableIAMDatabaseAuthentication => 1,                      # OPTIONAL
      EngineVersion                   => 'MyString',             # OPTIONAL
      KmsKeyId                        => 'MyString',             # OPTIONAL
      OptionGroupName                 => 'MyString',             # OPTIONAL
      Port                            => 1,                      # OPTIONAL
      PreferredBackupWindow           => 'MyString',             # OPTIONAL
      PreferredMaintenanceWindow      => 'MyString',             # OPTIONAL
      S3Prefix                        => 'MyString',             # OPTIONAL
      StorageEncrypted                => 1,                      # OPTIONAL
      Tags                            => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                         # OPTIONAL
      VpcSecurityGroupIds => [ 'MyString', ... ],                # OPTIONAL
    );

    # Results:
    my $DBCluster = $RestoreDBClusterFromS3Result->DBCluster;

    # Returns a L<Paws::RDS::RestoreDBClusterFromS3Result> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RestoreDBClusterFromS3>

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

A list of EC2 Availability Zones that instances in the restored DB
cluster can be created in.



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

The number of days for which automated backups of the restored DB
cluster are retained. You must specify a minimum value of 1.

Default: 1

Constraints:

=over

=item *

Must be a value from 1 to 35

=back




=head2 CharacterSetName => Str

A value that indicates that the restored DB cluster should be
associated with the specified CharacterSet.



=head2 DatabaseName => Str

The database name for the restored DB cluster.



=head2 B<REQUIRED> DBClusterIdentifier => Str

The name of the DB cluster to create from the source data in the Amazon
S3 bucket. This parameter is isn't case-sensitive.

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

The name of the DB cluster parameter group to associate with the
restored DB cluster. If this argument is omitted, C<default.aurora5.6>
is used.

Constraints:

=over

=item *

If supplied, must match the name of an existing
DBClusterParameterGroup.

=back




=head2 DBSubnetGroupName => Str

A DB subnet group to associate with the restored DB cluster.

Constraints: If supplied, must match the name of an existing
DBSubnetGroup.

Example: C<mySubnetgroup>



=head2 DeletionProtection => Bool

Indicates if the DB cluster should have deletion protection enabled.
The database can't be deleted when this value is set to true. The
default is false.



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of logs that the restored DB cluster is to export to
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

The name of the database engine to be used for the restored DB cluster.

Valid Values: C<aurora>, C<aurora-postgresql>



=head2 EngineVersion => Str

The version number of the database engine to use.

B<Aurora MySQL>

Example: C<5.6.10a>

B<Aurora PostgreSQL>

Example: C<9.6.3>



=head2 KmsKeyId => Str

The AWS KMS key identifier for an encrypted DB cluster.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are creating a DB cluster with the same AWS
account that owns the KMS encryption key used to encrypt the new DB
cluster, then you can use the KMS key alias instead of the ARN for the
KM encryption key.

If the C<StorageEncrypted> parameter is true, and you do not specify a
value for the C<KmsKeyId> parameter, then Amazon RDS will use your
default encryption key. AWS KMS creates the default encryption key for
your AWS account. Your AWS account has a different default encryption
key for each AWS Region.



=head2 B<REQUIRED> MasterUsername => Str

The name of the master user for the restored DB cluster.

Constraints:

=over

=item *

Must be 1 to 16 letters or numbers.

=item *

First character must be a letter.

=item *

Can't be a reserved word for the chosen database engine.

=back




=head2 B<REQUIRED> MasterUserPassword => Str

The password for the master database user. This password can contain
any printable ASCII character except "/", """, or "@".

Constraints: Must contain from 8 to 41 characters.



=head2 OptionGroupName => Str

A value that indicates that the restored DB cluster should be
associated with the specified option group.

Permanent options can't be removed from an option group. An option
group can't be removed from a DB cluster once it is associated with a
DB cluster.



=head2 Port => Int

The port number on which the instances in the restored DB cluster
accept connections.

Default: C<3306>



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled using the C<BackupRetentionPeriod>
parameter.

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region. To see the time blocks available,
see Adjusting the Preferred Maintenance Window
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
week. To see the time blocks available, see Adjusting the Preferred
Maintenance Window
(http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora)
in the I<Amazon Aurora User Guide.>

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

Constraints: Minimum 30-minute window.



=head2 B<REQUIRED> S3BucketName => Str

The name of the Amazon S3 bucket that contains the data used to create
the Amazon Aurora DB cluster.



=head2 B<REQUIRED> S3IngestionRoleArn => Str

The Amazon Resource Name (ARN) of the AWS Identity and Access
Management (IAM) role that authorizes Amazon RDS to access the Amazon
S3 bucket on your behalf.



=head2 S3Prefix => Str

The prefix for all of the file names that contain the data used to
create the Amazon Aurora DB cluster. If you do not specify a
B<SourceS3Prefix> value, then the Amazon Aurora DB cluster is created
by using all of the files in the Amazon S3 bucket.



=head2 B<REQUIRED> SourceEngine => Str

The identifier for the database engine that was backed up to create the
files stored in the Amazon S3 bucket.

Valid values: C<mysql>



=head2 B<REQUIRED> SourceEngineVersion => Str

The version of the database that the backup files were created from.

MySQL version 5.5 and 5.6 are supported.

Example: C<5.6.22>



=head2 StorageEncrypted => Bool

Specifies whether the restored DB cluster is encrypted.



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with the restored DB
cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreDBClusterFromS3 in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

