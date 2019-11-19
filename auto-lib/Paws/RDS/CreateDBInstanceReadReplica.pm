# Generated from callargs_class.tt

package Paws::RDS::CreateDBInstanceReadReplica;
  use Moo;
  use Types::Standard qw/Str Bool Undef ArrayRef Int/;
  use Paws::RDS::Types qw/RDS_ProcessorFeature RDS_Tag/;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => Bool, predicate => 1);
  has AvailabilityZone => (is => 'ro', isa => Str, predicate => 1);
  has CopyTagsToSnapshot => (is => 'ro', isa => Bool, predicate => 1);
  has DBInstanceClass => (is => 'ro', isa => Str, predicate => 1);
  has DBInstanceIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DBParameterGroupName => (is => 'ro', isa => Str, predicate => 1);
  has DBSubnetGroupName => (is => 'ro', isa => Str, predicate => 1);
  has DeletionProtection => (is => 'ro', isa => Bool, predicate => 1);
  has Domain => (is => 'ro', isa => Str, predicate => 1);
  has DomainIAMRoleName => (is => 'ro', isa => Str, predicate => 1);
  has EnableCloudwatchLogsExports => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => Bool, predicate => 1);
  has EnablePerformanceInsights => (is => 'ro', isa => Bool, predicate => 1);
  has Iops => (is => 'ro', isa => Int, predicate => 1);
  has KmsKeyId => (is => 'ro', isa => Str, predicate => 1);
  has MonitoringInterval => (is => 'ro', isa => Int, predicate => 1);
  has MonitoringRoleArn => (is => 'ro', isa => Str, predicate => 1);
  has MultiAZ => (is => 'ro', isa => Bool, predicate => 1);
  has OptionGroupName => (is => 'ro', isa => Str, predicate => 1);
  has PerformanceInsightsKMSKeyId => (is => 'ro', isa => Str, predicate => 1);
  has PerformanceInsightsRetentionPeriod => (is => 'ro', isa => Int, predicate => 1);
  has Port => (is => 'ro', isa => Int, predicate => 1);
  has PreSignedUrl => (is => 'ro', isa => Str, predicate => 1);
  has ProcessorFeatures => (is => 'ro', isa => ArrayRef[RDS_ProcessorFeature], predicate => 1);
  has PubliclyAccessible => (is => 'ro', isa => Bool, predicate => 1);
  has SourceDBInstanceIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has StorageType => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[RDS_Tag], predicate => 1);
  has UseDefaultProcessorFeatures => (is => 'ro', isa => Bool, predicate => 1);
  has VpcSecurityGroupIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDBInstanceReadReplica');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDS::CreateDBInstanceReadReplicaResult');
  class_has _result_key => (isa => Str, is => 'ro', default => 'CreateDBInstanceReadReplicaResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PreSignedUrl' => {
                                   'type' => 'Str'
                                 },
               'VpcSecurityGroupIds' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'DomainIAMRoleName' => {
                                        'type' => 'Str'
                                      },
               'UseDefaultProcessorFeatures' => {
                                                  'type' => 'Bool'
                                                },
               'StorageType' => {
                                  'type' => 'Str'
                                },
               'EnableIAMDatabaseAuthentication' => {
                                                      'type' => 'Bool'
                                                    },
               'PerformanceInsightsKMSKeyId' => {
                                                  'type' => 'Str'
                                                },
               'MultiAZ' => {
                              'type' => 'Bool'
                            },
               'OptionGroupName' => {
                                      'type' => 'Str'
                                    },
               'PerformanceInsightsRetentionPeriod' => {
                                                         'type' => 'Int'
                                                       },
               'Port' => {
                           'type' => 'Int'
                         },
               'DeletionProtection' => {
                                         'type' => 'Bool'
                                       },
               'SourceDBInstanceIdentifier' => {
                                                 'type' => 'Str'
                                               },
               'AutoMinorVersionUpgrade' => {
                                              'type' => 'Bool'
                                            },
               'PubliclyAccessible' => {
                                         'type' => 'Bool'
                                       },
               'MonitoringInterval' => {
                                         'type' => 'Int'
                                       },
               'EnableCloudwatchLogsExports' => {
                                                  'type' => 'ArrayRef[Str|Undef]'
                                                },
               'DBParameterGroupName' => {
                                           'type' => 'Str'
                                         },
               'DBSubnetGroupName' => {
                                        'type' => 'Str'
                                      },
               'DBInstanceClass' => {
                                      'type' => 'Str'
                                    },
               'EnablePerformanceInsights' => {
                                                'type' => 'Bool'
                                              },
               'CopyTagsToSnapshot' => {
                                         'type' => 'Bool'
                                       },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'MonitoringRoleArn' => {
                                        'type' => 'Str'
                                      },
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'Iops' => {
                           'type' => 'Int'
                         },
               'ProcessorFeatures' => {
                                        'class' => 'Paws::RDS::ProcessorFeature',
                                        'type' => 'ArrayRef[RDS_ProcessorFeature]'
                                      },
               'Tags' => {
                           'class' => 'Paws::RDS::Tag',
                           'type' => 'ArrayRef[RDS_Tag]'
                         },
               'Domain' => {
                             'type' => 'Str'
                           },
               'DBInstanceIdentifier' => {
                                           'type' => 'Str'
                                         }
             },
  'IsRequired' => {
                    'SourceDBInstanceIdentifier' => 1,
                    'DBInstanceIdentifier' => 1
                  }
}
;
    return $Params_map;
  }

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
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBInstanceReadReplica>

=head1 ATTRIBUTES


=head2 AutoMinorVersionUpgrade => Bool

A value that indicates whether minor engine upgrades are applied
automatically to the Read Replica during the maintenance window.

Default: Inherits from the source DB instance



=head2 AvailabilityZone => Str

The Availability Zone (AZ) where the Read Replica will be created.

Default: A random, system-chosen Availability Zone in the endpoint's
AWS Region.

Example: C<us-east-1d>



=head2 CopyTagsToSnapshot => Bool

A value that indicates whether to copy all tags from the Read Replica
to snapshots of the Read Replica. By default, tags are not copied.



=head2 DBInstanceClass => Str

The compute and memory capacity of the Read Replica, for example,
C<db.m4.large>. Not all DB instance classes are available in all AWS
Regions, or for all database engines. For the full list of DB instance
classes, and availability for your engine, see DB Instance Class
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html)
in the I<Amazon RDS User Guide.>

Default: Inherits from the source DB instance.



=head2 B<REQUIRED> DBInstanceIdentifier => Str

The DB instance identifier of the Read Replica. This identifier is the
unique key that identifies a DB instance. This parameter is stored as a
lowercase string.



=head2 DBParameterGroupName => Str

The name of the DB parameter group to associate with this DB instance.

If you do not specify a value for C<DBParameterGroupName>, then Amazon
RDS uses the C<DBParameterGroup> of source DB instance for a same
region Read Replica, or the default C<DBParameterGroup> for the
specified DB engine for a cross region Read Replica.

Currently, specifying a parameter group for this operation is only
supported for Oracle DB instances.

Constraints:

=over

=item *

Must be 1 to 255 letters, numbers, or hyphens.

=item *

First character must be a letter

=item *

Can't end with a hyphen or contain two consecutive hyphens

=back




=head2 DBSubnetGroupName => Str

Specifies a DB subnet group for the DB instance. The new DB instance is
created in the VPC associated with the DB subnet group. If no DB subnet
group is specified, then the new DB instance isn't created in a VPC.

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

A value that indicates whether the DB instance has deletion protection
enabled. The database can't be deleted when deletion protection is
enabled. By default, deletion protection is disabled. For more
information, see Deleting a DB Instance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html).



=head2 Domain => Str

The Active Directory directory ID to create the DB instance in.

For Oracle DB instances, Amazon RDS can use Kerberos Authentication to
authenticate users that connect to the DB instance. For more
information, see Using Kerberos Authentication with Amazon RDS for
Oracle
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-kerberos.html)
in the I<Amazon RDS User Guide>.



=head2 DomainIAMRoleName => Str

Specify the name of the IAM role to be used when making API calls to
the Directory Service.



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of logs that the new DB instance is to export to CloudWatch
Logs. The values in the list depend on the DB engine being used. For
more information, see Publishing Database Logs to Amazon CloudWatch
Logs
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
in the I<Amazon RDS User Guide>.



=head2 EnableIAMDatabaseAuthentication => Bool

A value that indicates whether to enable mapping of AWS Identity and
Access Management (IAM) accounts to database accounts. By default,
mapping is disabled. For information about the supported DB engines,
see CreateDBInstance.

For more information about IAM database authentication, see IAM
Database Authentication for MySQL and PostgreSQL
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html)
in the I<Amazon RDS User Guide.>



=head2 EnablePerformanceInsights => Bool

A value that indicates whether to enable Performance Insights for the
Read Replica.

For more information, see Using Amazon Performance Insights
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html)
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
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole)
in the I<Amazon RDS User Guide>.

If C<MonitoringInterval> is set to a value other than 0, then you must
supply a C<MonitoringRoleArn> value.



=head2 MultiAZ => Bool

A value that indicates whether the Read Replica is in a Multi-AZ
deployment.

You can create a Read Replica as a Multi-AZ DB instance. RDS creates a
standby of your replica in another Availability Zone for failover
support for the replica. Creating your Read Replica as a Multi-AZ DB
instance is independent of whether the source database is a Multi-AZ DB
instance.



=head2 OptionGroupName => Str

The option group the DB instance is associated with. If omitted, the
option group associated with the source instance is used.



=head2 PerformanceInsightsKMSKeyId => Str

The AWS KMS key identifier for encryption of Performance Insights data.
The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier,
or the KMS key alias for the KMS encryption key.

If you do not specify a value for C<PerformanceInsightsKMSKeyId>, then
Amazon RDS uses your default encryption key. AWS KMS creates the
default encryption key for your AWS account. Your AWS account has a
different default encryption key for each AWS Region.



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
Replica from another AWS Region by using the Amazon RDS API. Don't
specify C<PreSignedUrl> when you are creating an encrypted Read Replica
in the same AWS Region.

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
(https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html)
and Signature Version 4 Signing Process
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

If you are using an AWS SDK tool or the AWS CLI, you can specify
C<SourceRegion> (or C<--source-region> for the AWS CLI) instead of
specifying C<PreSignedUrl> manually. Specifying C<SourceRegion>
autogenerates a pre-signed URL that is a valid request for the
operation that can be executed in the source AWS Region.



=head2 ProcessorFeatures => ArrayRef[RDS_ProcessorFeature]

The number of CPU cores and the number of threads per core for the DB
instance class of the DB instance.



=head2 PubliclyAccessible => Bool

A value that indicates whether the DB instance is publicly accessible.
When the DB instance is publicly accessible, it is an Internet-facing
instance with a publicly resolvable DNS name, which resolves to a
public IP address. When the DB instance isn't publicly accessible, it
is an internal instance with a DNS name that resolves to a private IP
address. For more information, see CreateDBInstance.



=head2 B<REQUIRED> SourceDBInstanceIdentifier => Str

The identifier of the DB instance that will act as the source for the
Read Replica. Each DB instance can have up to five Read Replicas.

Constraints:

=over

=item *

Must be the identifier of an existing MySQL, MariaDB, Oracle, or
PostgreSQL DB instance.

=item *

Can specify a DB instance that is a MySQL Read Replica only if the
source is running MySQL 5.6 or later.

=item *

For the limitations of Oracle Read Replicas, see Read Replica
Limitations with Oracle
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html)
in the I<Amazon RDS User Guide>.

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
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing)
in the I<Amazon RDS User Guide>.

=back




=head2 StorageType => Str

Specifies the storage type to be associated with the Read Replica.

Valid values: C<standard | gp2 | io1>

If you specify C<io1>, you must also include a value for the C<Iops>
parameter.

Default: C<io1> if the C<Iops> parameter is specified, otherwise C<gp2>



=head2 Tags => ArrayRef[RDS_Tag]





=head2 UseDefaultProcessorFeatures => Bool

A value that indicates whether the DB instance class of the DB instance
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

