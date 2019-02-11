
package Paws::DocDB::RestoreDBClusterFromSnapshot;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has EnableCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Tag]');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterFromSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::RestoreDBClusterFromSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterFromSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::RestoreDBClusterFromSnapshot - Arguments for method RestoreDBClusterFromSnapshot on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreDBClusterFromSnapshot on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method RestoreDBClusterFromSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreDBClusterFromSnapshot.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $RestoreDBClusterFromSnapshotResult = $rds->RestoreDBClusterFromSnapshot(
      DBClusterIdentifier         => 'MyString',
      Engine                      => 'MyString',
      SnapshotIdentifier          => 'MyString',
      AvailabilityZones           => [ 'MyString', ... ],    # OPTIONAL
      DBSubnetGroupName           => 'MyString',             # OPTIONAL
      EnableCloudwatchLogsExports => [ 'MyString', ... ],    # OPTIONAL
      EngineVersion               => 'MyString',             # OPTIONAL
      KmsKeyId                    => 'MyString',             # OPTIONAL
      Port                        => 1,                      # OPTIONAL
      Tags                        => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                     # OPTIONAL
      VpcSecurityGroupIds => [ 'MyString', ... ],            # OPTIONAL
    );

    # Results:
    my $DBCluster = $RestoreDBClusterFromSnapshotResult->DBCluster;

    # Returns a L<Paws::DocDB::RestoreDBClusterFromSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RestoreDBClusterFromSnapshot>

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

Provides the list of Amazon EC2 Availability Zones that instances in
the restored DB cluster can be created in.



=head2 B<REQUIRED> DBClusterIdentifier => Str

The name of the DB cluster to create from the DB snapshot or DB cluster
snapshot. This parameter isn't case sensitive.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

The first character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back

Example: C<my-snapshot-id>



=head2 DBSubnetGroupName => Str

The name of the DB subnet group to use for the new DB cluster.

Constraints: If provided, must match the name of an existing
C<DBSubnetGroup>.

Example: C<mySubnetgroup>



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

A list of log types that must be enabled for exporting to Amazon
CloudWatch Logs.



=head2 B<REQUIRED> Engine => Str

The database engine to use for the new DB cluster.

Default: The same as source.

Constraint: Must be compatible with the engine of the source.



=head2 EngineVersion => Str

The version of the database engine to use for the new DB cluster.



=head2 KmsKeyId => Str

The AWS KMS key identifier to use when restoring an encrypted DB
cluster from a DB snapshot or DB cluster snapshot.

The AWS KMS key identifier is the Amazon Resource Name (ARN) for the
AWS KMS encryption key. If you are restoring a DB cluster with the same
AWS account that owns the AWS KMS encryption key used to encrypt the
new DB cluster, then you can use the AWS KMS key alias instead of the
ARN for the AWS KMS encryption key.

If you do not specify a value for the C<KmsKeyId> parameter, then the
following occurs:

=over

=item *

If the DB snapshot or DB cluster snapshot in C<SnapshotIdentifier> is
encrypted, then the restored DB cluster is encrypted using the AWS KMS
key that was used to encrypt the DB snapshot or the DB cluster
snapshot.

=item *

If the DB snapshot or the DB cluster snapshot in C<SnapshotIdentifier>
is not encrypted, then the restored DB cluster is not encrypted.

=back




=head2 Port => Int

The port number on which the new DB cluster accepts connections.

Constraints: Must be a value from C<1150> to C<65535>.

Default: The same port as the original DB cluster.



=head2 B<REQUIRED> SnapshotIdentifier => Str

The identifier for the DB snapshot or DB cluster snapshot to restore
from.

You can use either the name or the Amazon Resource Name (ARN) to
specify a DB cluster snapshot. However, you can use only the ARN to
specify a DB snapshot.

Constraints:

=over

=item *

Must match the identifier of an existing snapshot.

=back




=head2 Tags => ArrayRef[L<Paws::DocDB::Tag>]

The tags to be assigned to the restored DB cluster.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of virtual private cloud (VPC) security groups that the new DB
cluster will belong to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreDBClusterFromSnapshot in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

