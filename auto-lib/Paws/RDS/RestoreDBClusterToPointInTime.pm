# Generated from callargs_class.tt

package Paws::RDS::RestoreDBClusterToPointInTime;
  use Moo;
  use Types::Standard qw/Str Int Bool ArrayRef Undef/;
  use Paws::RDS::Types qw/RDS_Tag/;
  has BacktrackWindow => (is => 'ro', isa => Int, predicate => 1);
  has CopyTagsToSnapshot => (is => 'ro', isa => Bool, predicate => 1);
  has DBClusterIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DBClusterParameterGroupName => (is => 'ro', isa => Str, predicate => 1);
  has DBSubnetGroupName => (is => 'ro', isa => Str, predicate => 1);
  has DeletionProtection => (is => 'ro', isa => Bool, predicate => 1);
  has EnableCloudwatchLogsExports => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => Bool, predicate => 1);
  has KmsKeyId => (is => 'ro', isa => Str, predicate => 1);
  has OptionGroupName => (is => 'ro', isa => Str, predicate => 1);
  has Port => (is => 'ro', isa => Int, predicate => 1);
  has RestoreToTime => (is => 'ro', isa => Str, predicate => 1);
  has RestoreType => (is => 'ro', isa => Str, predicate => 1);
  has SourceDBClusterIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[RDS_Tag], predicate => 1);
  has UseLatestRestorableTime => (is => 'ro', isa => Bool, predicate => 1);
  has VpcSecurityGroupIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RestoreDBClusterToPointInTime');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDS::RestoreDBClusterToPointInTimeResult');
  class_has _result_key => (isa => Str, is => 'ro', default => 'RestoreDBClusterToPointInTimeResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeletionProtection' => {
                                         'type' => 'Bool'
                                       },
               'VpcSecurityGroupIds' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'RestoreType' => {
                                  'type' => 'Str'
                                },
               'BacktrackWindow' => {
                                      'type' => 'Int'
                                    },
               'DBSubnetGroupName' => {
                                        'type' => 'Str'
                                      },
               'EnableIAMDatabaseAuthentication' => {
                                                      'type' => 'Bool'
                                                    },
               'RestoreToTime' => {
                                    'type' => 'Str'
                                  },
               'DBClusterIdentifier' => {
                                          'type' => 'Str'
                                        },
               'CopyTagsToSnapshot' => {
                                         'type' => 'Bool'
                                       },
               'UseLatestRestorableTime' => {
                                              'type' => 'Bool'
                                            },
               'OptionGroupName' => {
                                      'type' => 'Str'
                                    },
               'Port' => {
                           'type' => 'Int'
                         },
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'SourceDBClusterIdentifier' => {
                                                'type' => 'Str'
                                              },
               'DBClusterParameterGroupName' => {
                                                  'type' => 'Str'
                                                },
               'EnableCloudwatchLogsExports' => {
                                                  'type' => 'ArrayRef[Str|Undef]'
                                                },
               'Tags' => {
                           'class' => 'Paws::RDS::Tag',
                           'type' => 'ArrayRef[RDS_Tag]'
                         }
             },
  'IsRequired' => {
                    'SourceDBClusterIdentifier' => 1,
                    'DBClusterIdentifier' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RestoreDBClusterToPointInTime - Arguments for method RestoreDBClusterToPointInTime on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreDBClusterToPointInTime on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method RestoreDBClusterToPointInTime.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreDBClusterToPointInTime.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To restore a DB cluster to a point in time.
    # The following example restores a DB cluster to a new DB cluster at a point
    # in time from the source DB cluster.
    my $RestoreDBClusterToPointInTimeResult =
      $rds->RestoreDBClusterToPointInTime(
      'DBClusterIdentifier'       => 'sample-restored-cluster1',
      'RestoreToTime'             => '2016-09-13T18:45:00Z',
      'SourceDBClusterIdentifier' => 'sample-cluster1'
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RestoreDBClusterToPointInTime>

=head1 ATTRIBUTES


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




=head2 CopyTagsToSnapshot => Bool

A value that indicates whether to copy all tags from the restored DB
cluster to snapshots of the restored DB cluster. The default is not to
copy them.



=head2 B<REQUIRED> DBClusterIdentifier => Str

The name of the new DB cluster to be created.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens

=item *

First character must be a letter

=item *

Can't end with a hyphen or contain two consecutive hyphens

=back




=head2 DBClusterParameterGroupName => Str

The name of the DB cluster parameter group to associate with this DB
cluster. If this argument is omitted, the default DB cluster parameter
group for the specified engine is used.

Constraints:

=over

=item *

If supplied, must match the name of an existing DB cluster parameter
group.

=item *

Must be 1 to 255 letters, numbers, or hyphens.

=item *

First character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back




=head2 DBSubnetGroupName => Str

The DB subnet group name to use for the new DB cluster.

Constraints: If supplied, must match the name of an existing
DBSubnetGroup.

Example: C<mySubnetgroup>



=head2 DeletionProtection => Bool

A value that indicates whether the DB cluster has deletion protection
enabled. The database can't be deleted when deletion protection is
enabled. By default, deletion protection is disabled.



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of logs that the restored DB cluster is to export to
CloudWatch Logs. The values in the list depend on the DB engine being
used. For more information, see Publishing Database Logs to Amazon
CloudWatch Logs
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
in the I<Amazon Aurora User Guide>.



=head2 EnableIAMDatabaseAuthentication => Bool

A value that indicates whether to enable mapping of AWS Identity and
Access Management (IAM) accounts to database accounts. By default,
mapping is disabled.



=head2 KmsKeyId => Str

The AWS KMS key identifier to use when restoring an encrypted DB
cluster from an encrypted DB cluster.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are restoring a DB cluster with the same AWS
account that owns the KMS encryption key used to encrypt the new DB
cluster, then you can use the KMS key alias instead of the ARN for the
KMS encryption key.

You can restore to a new DB cluster and encrypt the new DB cluster with
a KMS key that is different than the KMS key used to encrypt the source
DB cluster. The new DB cluster is encrypted with the KMS key identified
by the C<KmsKeyId> parameter.

If you don't specify a value for the C<KmsKeyId> parameter, then the
following occurs:

=over

=item *

If the DB cluster is encrypted, then the restored DB cluster is
encrypted using the KMS key that was used to encrypt the source DB
cluster.

=item *

If the DB cluster is not encrypted, then the restored DB cluster is not
encrypted.

=back

If C<DBClusterIdentifier> refers to a DB cluster that is not encrypted,
then the restore request is rejected.



=head2 OptionGroupName => Str

The name of the option group for the new DB cluster.



=head2 Port => Int

The port number on which the new DB cluster accepts connections.

Constraints: A value from C<1150-65535>.

Default: The default port for the engine.



=head2 RestoreToTime => Str

The date and time to restore the DB cluster to.

Valid Values: Value must be a time in Universal Coordinated Time (UTC)
format

Constraints:

=over

=item *

Must be before the latest restorable time for the DB instance

=item *

Must be specified if C<UseLatestRestorableTime> parameter is not
provided

=item *

Can't be specified if the C<UseLatestRestorableTime> parameter is
enabled

=item *

Can't be specified if the C<RestoreType> parameter is C<copy-on-write>

=back

Example: C<2015-03-07T23:45:00Z>



=head2 RestoreType => Str

The type of restore to be performed. You can specify one of the
following values:

=over

=item *

C<full-copy> - The new DB cluster is restored as a full copy of the
source DB cluster.

=item *

C<copy-on-write> - The new DB cluster is restored as a clone of the
source DB cluster.

=back

Constraints: You can't specify C<copy-on-write> if the engine version
of the source DB cluster is earlier than 1.11.

If you don't specify a C<RestoreType> value, then the new DB cluster is
restored as a full copy of the source DB cluster.



=head2 B<REQUIRED> SourceDBClusterIdentifier => Str

The identifier of the source DB cluster from which to restore.

Constraints:

=over

=item *

Must match the identifier of an existing DBCluster.

=back




=head2 Tags => ArrayRef[RDS_Tag]





=head2 UseLatestRestorableTime => Bool

A value that indicates whether to restore the DB cluster to the latest
restorable backup time. By default, the DB cluster is not restored to
the latest restorable backup time.

Constraints: Can't be specified if C<RestoreToTime> parameter is
provided.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of VPC security groups that the new DB cluster belongs to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreDBClusterToPointInTime in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

