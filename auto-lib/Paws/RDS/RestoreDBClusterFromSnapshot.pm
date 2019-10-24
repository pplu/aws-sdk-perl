# Generated from callargs_class.tt

package Paws::RDS::RestoreDBClusterFromSnapshot;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int Bool/;
  use Paws::RDS::Types qw/RDS_ScalingConfiguration RDS_Tag/;
  has AvailabilityZones => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has BacktrackWindow => (is => 'ro', isa => Int, predicate => 1);
  has CopyTagsToSnapshot => (is => 'ro', isa => Bool, predicate => 1);
  has DatabaseName => (is => 'ro', isa => Str, predicate => 1);
  has DBClusterIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DBClusterParameterGroupName => (is => 'ro', isa => Str, predicate => 1);
  has DBSubnetGroupName => (is => 'ro', isa => Str, predicate => 1);
  has DeletionProtection => (is => 'ro', isa => Bool, predicate => 1);
  has EnableCloudwatchLogsExports => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => Bool, predicate => 1);
  has Engine => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EngineMode => (is => 'ro', isa => Str, predicate => 1);
  has EngineVersion => (is => 'ro', isa => Str, predicate => 1);
  has KmsKeyId => (is => 'ro', isa => Str, predicate => 1);
  has OptionGroupName => (is => 'ro', isa => Str, predicate => 1);
  has Port => (is => 'ro', isa => Int, predicate => 1);
  has ScalingConfiguration => (is => 'ro', isa => RDS_ScalingConfiguration, predicate => 1);
  has SnapshotIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[RDS_Tag], predicate => 1);
  has VpcSecurityGroupIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RestoreDBClusterFromSnapshot');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDS::RestoreDBClusterFromSnapshotResult');
  class_has _result_key => (isa => Str, is => 'ro', default => 'RestoreDBClusterFromSnapshotResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeletionProtection' => {
                                         'type' => 'Bool'
                                       },
               'VpcSecurityGroupIds' => {
                                          'type' => 'ArrayRef[Str|Undef]'
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
               'DBClusterIdentifier' => {
                                          'type' => 'Str'
                                        },
               'CopyTagsToSnapshot' => {
                                         'type' => 'Bool'
                                       },
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'Engine' => {
                             'type' => 'Str'
                           },
               'OptionGroupName' => {
                                      'type' => 'Str'
                                    },
               'SnapshotIdentifier' => {
                                         'type' => 'Str'
                                       },
               'AvailabilityZones' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'Port' => {
                           'type' => 'Int'
                         },
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'EngineMode' => {
                                 'type' => 'Str'
                               },
               'DBClusterParameterGroupName' => {
                                                  'type' => 'Str'
                                                },
               'Tags' => {
                           'class' => 'Paws::RDS::Tag',
                           'type' => 'ArrayRef[RDS_Tag]'
                         },
               'ScalingConfiguration' => {
                                           'class' => 'Paws::RDS::ScalingConfiguration',
                                           'type' => 'RDS_ScalingConfiguration'
                                         },
               'EnableCloudwatchLogsExports' => {
                                                  'type' => 'ArrayRef[Str|Undef]'
                                                },
               'DatabaseName' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'Engine' => 1,
                    'SnapshotIdentifier' => 1,
                    'DBClusterIdentifier' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RestoreDBClusterFromSnapshot - Arguments for method RestoreDBClusterFromSnapshot on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreDBClusterFromSnapshot on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method RestoreDBClusterFromSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreDBClusterFromSnapshot.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To restore an Amazon Aurora DB cluster from a DB cluster snapshot
    # The following example restores an Amazon Aurora DB cluster from a DB
    # cluster snapshot.
    my $RestoreDBClusterFromSnapshotResult = $rds->RestoreDBClusterFromSnapshot(
      'DBClusterIdentifier' => 'restored-cluster1',
      'Engine'              => 'aurora',
      'SnapshotIdentifier'  => 'sample-cluster-snapshot1'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RestoreDBClusterFromSnapshot>

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

Provides the list of Availability Zones (AZs) where instances in the
restored DB cluster can be created.



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



=head2 DatabaseName => Str

The database name for the restored DB cluster.



=head2 B<REQUIRED> DBClusterIdentifier => Str

The name of the DB cluster to create from the DB snapshot or DB cluster
snapshot. This parameter isn't case-sensitive.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens

=item *

First character must be a letter

=item *

Can't end with a hyphen or contain two consecutive hyphens

=back

Example: C<my-snapshot-id>



=head2 DBClusterParameterGroupName => Str

The name of the DB cluster parameter group to associate with this DB
cluster. If this argument is omitted, the default DB cluster parameter
group for the specified engine is used.

Constraints:

=over

=item *

If supplied, must match the name of an existing default DB cluster
parameter group.

=item *

Must be 1 to 255 letters, numbers, or hyphens.

=item *

First character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back




=head2 DBSubnetGroupName => Str

The name of the DB subnet group to use for the new DB cluster.

Constraints: If supplied, must match the name of an existing DB subnet
group.

Example: C<mySubnetgroup>



=head2 DeletionProtection => Bool

A value that indicates whether the DB cluster has deletion protection
enabled. The database can't be deleted when deletion protection is
enabled. By default, deletion protection is disabled.



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of logs that the restored DB cluster is to export to Amazon
CloudWatch Logs. The values in the list depend on the DB engine being
used. For more information, see Publishing Database Logs to Amazon
CloudWatch Logs
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
in the I<Amazon Aurora User Guide>.



=head2 EnableIAMDatabaseAuthentication => Bool

A value that indicates whether to enable mapping of AWS Identity and
Access Management (IAM) accounts to database accounts. By default,
mapping is disabled.



=head2 B<REQUIRED> Engine => Str

The database engine to use for the new DB cluster.

Default: The same as source

Constraint: Must be compatible with the engine of the source



=head2 EngineMode => Str

The DB engine mode of the DB cluster, either C<provisioned>,
C<serverless>, or C<parallelquery>.



=head2 EngineVersion => Str

The version of the database engine to use for the new DB cluster.



=head2 KmsKeyId => Str

The AWS KMS key identifier to use when restoring an encrypted DB
cluster from a DB snapshot or DB cluster snapshot.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are restoring a DB cluster with the same AWS
account that owns the KMS encryption key used to encrypt the new DB
cluster, then you can use the KMS key alias instead of the ARN for the
KMS encryption key.

If you don't specify a value for the C<KmsKeyId> parameter, then the
following occurs:

=over

=item *

If the DB snapshot or DB cluster snapshot in C<SnapshotIdentifier> is
encrypted, then the restored DB cluster is encrypted using the KMS key
that was used to encrypt the DB snapshot or DB cluster snapshot.

=item *

If the DB snapshot or DB cluster snapshot in C<SnapshotIdentifier> is
not encrypted, then the restored DB cluster is not encrypted.

=back




=head2 OptionGroupName => Str

The name of the option group to use for the restored DB cluster.



=head2 Port => Int

The port number on which the new DB cluster accepts connections.

Constraints: This value must be C<1150-65535>

Default: The same port as the original DB cluster.



=head2 ScalingConfiguration => RDS_ScalingConfiguration

For DB clusters in C<serverless> DB engine mode, the scaling properties
of the DB cluster.



=head2 B<REQUIRED> SnapshotIdentifier => Str

The identifier for the DB snapshot or DB cluster snapshot to restore
from.

You can use either the name or the Amazon Resource Name (ARN) to
specify a DB cluster snapshot. However, you can use only the ARN to
specify a DB snapshot.

Constraints:

=over

=item *

Must match the identifier of an existing Snapshot.

=back




=head2 Tags => ArrayRef[RDS_Tag]

The tags to be assigned to the restored DB cluster.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of VPC security groups that the new DB cluster will belong to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreDBClusterFromSnapshot in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

