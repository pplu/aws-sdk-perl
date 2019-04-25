
package Paws::DocDB::RestoreDBClusterToPointInTime;
  use Moose;
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has EnableCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has RestoreToTime => (is => 'ro', isa => 'Str');
  has SourceDBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Tag]');
  has UseLatestRestorableTime => (is => 'ro', isa => 'Bool');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterToPointInTime');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::RestoreDBClusterToPointInTimeResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterToPointInTimeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::RestoreDBClusterToPointInTime - Arguments for method RestoreDBClusterToPointInTime on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreDBClusterToPointInTime on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method RestoreDBClusterToPointInTime.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreDBClusterToPointInTime.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $RestoreDBClusterToPointInTimeResult =
      $rds->RestoreDBClusterToPointInTime(
      DBClusterIdentifier         => 'MyString',
      SourceDBClusterIdentifier   => 'MyString',
      DBSubnetGroupName           => 'MyString',               # OPTIONAL
      EnableCloudwatchLogsExports => [ 'MyString', ... ],      # OPTIONAL
      KmsKeyId                    => 'MyString',               # OPTIONAL
      Port                        => 1,                        # OPTIONAL
      RestoreToTime               => '1970-01-01T01:00:00',    # OPTIONAL
      Tags                        => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                       # OPTIONAL
      UseLatestRestorableTime => 1,                            # OPTIONAL
      VpcSecurityGroupIds => [ 'MyString', ... ],              # OPTIONAL
      );

    # Results:
    my $DBCluster = $RestoreDBClusterToPointInTimeResult->DBCluster;

    # Returns a L<Paws::DocDB::RestoreDBClusterToPointInTimeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RestoreDBClusterToPointInTime>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterIdentifier => Str

The name of the new DB cluster to be created.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

The first character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back




=head2 DBSubnetGroupName => Str

The DB subnet group name to use for the new DB cluster.

Constraints: If provided, must match the name of an existing
C<DBSubnetGroup>.

Example: C<mySubnetgroup>



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

A list of log types that must be enabled for exporting to Amazon
CloudWatch Logs.



=head2 KmsKeyId => Str

The AWS KMS key identifier to use when restoring an encrypted DB
cluster from an encrypted DB cluster.

The AWS KMS key identifier is the Amazon Resource Name (ARN) for the
AWS KMS encryption key. If you are restoring a DB cluster with the same
AWS account that owns the AWS KMS encryption key used to encrypt the
new DB cluster, then you can use the AWS KMS key alias instead of the
ARN for the AWS KMS encryption key.

You can restore to a new DB cluster and encrypt the new DB cluster with
an AWS KMS key that is different from the AWS KMS key used to encrypt
the source DB cluster. The new DB cluster is encrypted with the AWS KMS
key identified by the C<KmsKeyId> parameter.

If you do not specify a value for the C<KmsKeyId> parameter, then the
following occurs:

=over

=item *

If the DB cluster is encrypted, then the restored DB cluster is
encrypted using the AWS KMS key that was used to encrypt the source DB
cluster.

=item *

If the DB cluster is not encrypted, then the restored DB cluster is not
encrypted.

=back

If C<DBClusterIdentifier> refers to a DB cluster that is not encrypted,
then the restore request is rejected.



=head2 Port => Int

The port number on which the new DB cluster accepts connections.

Constraints: Must be a value from C<1150> to C<65535>.

Default: The default port for the engine.



=head2 RestoreToTime => Str

The date and time to restore the DB cluster to.

Valid values: A time in Universal Coordinated Time (UTC) format.

Constraints:

=over

=item *

Must be before the latest restorable time for the DB instance.

=item *

Must be specified if the C<UseLatestRestorableTime> parameter is not
provided.

=item *

Cannot be specified if the C<UseLatestRestorableTime> parameter is
C<true>.

=item *

Cannot be specified if the C<RestoreType> parameter is
C<copy-on-write>.

=back

Example: C<2015-03-07T23:45:00Z>



=head2 B<REQUIRED> SourceDBClusterIdentifier => Str

The identifier of the source DB cluster from which to restore.

Constraints:

=over

=item *

Must match the identifier of an existing C<DBCluster>.

=back




=head2 Tags => ArrayRef[L<Paws::DocDB::Tag>]

The tags to be assigned to the restored DB cluster.



=head2 UseLatestRestorableTime => Bool

A value that is set to C<true> to restore the DB cluster to the latest
restorable backup time, and C<false> otherwise.

Default: C<false>

Constraints: Cannot be specified if the C<RestoreToTime> parameter is
provided.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of VPC security groups that the new DB cluster belongs to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreDBClusterToPointInTime in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

