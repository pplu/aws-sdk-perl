
package Paws::RDS::RestoreDBClusterFromSnapshot;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterFromSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::RestoreDBClusterFromSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterFromSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RestoreDBClusterFromSnapshot - Arguments for method RestoreDBClusterFromSnapshot on Paws::RDS

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreDBClusterFromSnapshot on the 
Amazon Relational Database Service service. Use the attributes of this class
as arguments to method RestoreDBClusterFromSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreDBClusterFromSnapshot.

As an example:

  $service_obj->RestoreDBClusterFromSnapshot(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str]

Provides the list of EC2 Availability Zones that instances in the
restored DB cluster can be created in.



=head2 DatabaseName => Str

The database name for the restored DB cluster.



=head2 B<REQUIRED> DBClusterIdentifier => Str

The name of the DB cluster to create from the DB cluster snapshot. This
parameter isn't case-sensitive.

Constraints:

=over

=item *

Must contain from 1 to 255 alphanumeric characters or hyphens

=item *

First character must be a letter

=item *

Cannot end with a hyphen or contain two consecutive hyphens

=back

Example: C<my-snapshot-id>



=head2 DBSubnetGroupName => Str

The name of the DB subnet group to use for the new DB cluster.

Constraints: Must contain no more than 255 alphanumeric characters,
periods, underscores, spaces, or hyphens. Must not be default.

Example: C<mySubnetgroup>



=head2 B<REQUIRED> Engine => Str

The database engine to use for the new DB cluster.

Default: The same as source

Constraint: Must be compatible with the engine of the source



=head2 EngineVersion => Str

The version of the database engine to use for the new DB cluster.



=head2 KmsKeyId => Str

The KMS key identifier to use when restoring an encrypted DB cluster
from an encrypted DB cluster snapshot.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are restoring a DB cluster with the same AWS
account that owns the KMS encryption key used to encrypt the new DB
cluster, then you can use the KMS key alias instead of the ARN for the
KMS encryption key.

If you do not specify a value for the C<KmsKeyId> parameter, then the
following will occur:

=over

=item *

If the DB cluster snapshot is encrypted, then the restored DB cluster
is encrypted using the KMS key that was used to encrypt the DB cluster
snapshot.

=item *

If the DB cluster snapshot is not encrypted, then the restored DB
cluster is not encrypted.

=back

If C<SnapshotIdentifier> refers to a DB cluster snapshot that is not
encrypted, and you specify a value for the C<KmsKeyId> parameter, then
the restore request is rejected.



=head2 OptionGroupName => Str

The name of the option group to use for the restored DB cluster.



=head2 Port => Int

The port number on which the new DB cluster accepts connections.

Constraints: Value must be C<1150-65535>

Default: The same port as the original DB cluster.



=head2 B<REQUIRED> SnapshotIdentifier => Str

The identifier for the DB cluster snapshot to restore from.

Constraints:

=over

=item *

Must contain from 1 to 63 alphanumeric characters or hyphens

=item *

First character must be a letter

=item *

Cannot end with a hyphen or contain two consecutive hyphens

=back




=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]

The tags to be assigned to the restored DB cluster.



=head2 VpcSecurityGroupIds => ArrayRef[Str]

A list of VPC security groups that the new DB cluster will belong to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreDBClusterFromSnapshot in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

