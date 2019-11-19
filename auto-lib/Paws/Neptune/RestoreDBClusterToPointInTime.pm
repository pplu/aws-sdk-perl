# Generated from callargs_class.tt

package Paws::Neptune::RestoreDBClusterToPointInTime;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool Int/;
  use Paws::Neptune::Types qw/Neptune_Tag/;
  has DBClusterIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DBClusterParameterGroupName => (is => 'ro', isa => Str, predicate => 1);
  has DBSubnetGroupName => (is => 'ro', isa => Str, predicate => 1);
  has EnableCloudwatchLogsExports => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => Bool, predicate => 1);
  has KmsKeyId => (is => 'ro', isa => Str, predicate => 1);
  has OptionGroupName => (is => 'ro', isa => Str, predicate => 1);
  has Port => (is => 'ro', isa => Int, predicate => 1);
  has RestoreToTime => (is => 'ro', isa => Str, predicate => 1);
  has RestoreType => (is => 'ro', isa => Str, predicate => 1);
  has SourceDBClusterIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[Neptune_Tag], predicate => 1);
  has UseLatestRestorableTime => (is => 'ro', isa => Bool, predicate => 1);
  has VpcSecurityGroupIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RestoreDBClusterToPointInTime');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Neptune::RestoreDBClusterToPointInTimeResult');
  class_has _result_key => (isa => Str, is => 'ro', default => 'RestoreDBClusterToPointInTimeResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBClusterIdentifier' => {
                                          'type' => 'Str'
                                        },
               'EnableIAMDatabaseAuthentication' => {
                                                      'type' => 'Bool'
                                                    },
               'UseLatestRestorableTime' => {
                                              'type' => 'Bool'
                                            },
               'RestoreToTime' => {
                                    'type' => 'Str'
                                  },
               'VpcSecurityGroupIds' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'RestoreType' => {
                                  'type' => 'Str'
                                },
               'SourceDBClusterIdentifier' => {
                                                'type' => 'Str'
                                              },
               'EnableCloudwatchLogsExports' => {
                                                  'type' => 'ArrayRef[Str|Undef]'
                                                },
               'Tags' => {
                           'type' => 'ArrayRef[Neptune_Tag]',
                           'class' => 'Paws::Neptune::Tag'
                         },
               'DBSubnetGroupName' => {
                                        'type' => 'Str'
                                      },
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'OptionGroupName' => {
                                      'type' => 'Str'
                                    },
               'DBClusterParameterGroupName' => {
                                                  'type' => 'Str'
                                                },
               'Port' => {
                           'type' => 'Int'
                         }
             },
  'IsRequired' => {
                    'DBClusterIdentifier' => 1,
                    'SourceDBClusterIdentifier' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::RestoreDBClusterToPointInTime - Arguments for method RestoreDBClusterToPointInTime on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreDBClusterToPointInTime on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method RestoreDBClusterToPointInTime.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreDBClusterToPointInTime.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $RestoreDBClusterToPointInTimeResult =
      $rds->RestoreDBClusterToPointInTime(
      DBClusterIdentifier             => 'MyString',
      SourceDBClusterIdentifier       => 'MyString',
      DBClusterParameterGroupName     => 'MyString',               # OPTIONAL
      DBSubnetGroupName               => 'MyString',               # OPTIONAL
      EnableCloudwatchLogsExports     => [ 'MyString', ... ],      # OPTIONAL
      EnableIAMDatabaseAuthentication => 1,                        # OPTIONAL
      KmsKeyId                        => 'MyString',               # OPTIONAL
      OptionGroupName                 => 'MyString',               # OPTIONAL
      Port                            => 1,                        # OPTIONAL
      RestoreToTime                   => '1970-01-01T01:00:00',    # OPTIONAL
      RestoreType                     => 'MyString',               # OPTIONAL
      Tags                            => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                           # OPTIONAL
      UseLatestRestorableTime => 1,                                # OPTIONAL
      VpcSecurityGroupIds     => [ 'MyString', ... ],              # OPTIONAL
      );

    # Results:
    my $DBCluster = $RestoreDBClusterToPointInTimeResult->DBCluster;

    # Returns a L<Paws::Neptune::RestoreDBClusterToPointInTimeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RestoreDBClusterToPointInTime>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterIdentifier => Str

The name of the new DB cluster to be created.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens

=item *

First character must be a letter

=item *

Cannot end with a hyphen or contain two consecutive hyphens

=back




=head2 DBClusterParameterGroupName => Str

The name of the DB cluster parameter group to associate with the new DB
cluster.

Constraints:

=over

=item *

If supplied, must match the name of an existing
DBClusterParameterGroup.

=back




=head2 DBSubnetGroupName => Str

The DB subnet group name to use for the new DB cluster.

Constraints: If supplied, must match the name of an existing
DBSubnetGroup.

Example: C<mySubnetgroup>



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of logs that the restored DB cluster is to export to
CloudWatch Logs.



=head2 EnableIAMDatabaseAuthentication => Bool

True to enable mapping of AWS Identity and Access Management (IAM)
accounts to database accounts, and otherwise false.

Default: C<false>



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

If you do not specify a value for the C<KmsKeyId> parameter, then the
following will occur:

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

Constraints: Value must be C<1150-65535>

Default: The same port as the original DB cluster.



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

Cannot be specified if C<UseLatestRestorableTime> parameter is true

=item *

Cannot be specified if C<RestoreType> parameter is C<copy-on-write>

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

If you don't specify a C<RestoreType> value, then the new DB cluster is
restored as a full copy of the source DB cluster.



=head2 B<REQUIRED> SourceDBClusterIdentifier => Str

The identifier of the source DB cluster from which to restore.

Constraints:

=over

=item *

Must match the identifier of an existing DBCluster.

=back




=head2 Tags => ArrayRef[Neptune_Tag]

The tags to be applied to the restored DB cluster.



=head2 UseLatestRestorableTime => Bool

A value that is set to C<true> to restore the DB cluster to the latest
restorable backup time, and C<false> otherwise.

Default: C<false>

Constraints: Cannot be specified if C<RestoreToTime> parameter is
provided.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of VPC security groups that the new DB cluster belongs to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreDBClusterToPointInTime in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

