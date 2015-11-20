
package Paws::RDS::CreateDBClusterSnapshot;
  use Moose;
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBClusterSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBClusterSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CreateDBClusterSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBClusterSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBClusterSnapshot - Arguments for method CreateDBClusterSnapshot on Paws::RDS

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBClusterSnapshot on the 
Amazon Relational Database Service service. Use the attributes of this class
as arguments to method CreateDBClusterSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBClusterSnapshot.

As an example:

  $service_obj->CreateDBClusterSnapshot(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterIdentifier => Str

  The identifier of the DB cluster to create a snapshot for. This
parameter is not case-sensitive.

Constraints:

=over

=item * Must contain from 1 to 63 alphanumeric characters or hyphens.

=item * First character must be a letter.

=item * Cannot end with a hyphen or contain two consecutive hyphens.

=back

Example: C<my-cluster1>


=head2 B<REQUIRED> DBClusterSnapshotIdentifier => Str

  The identifier of the DB cluster snapshot. This parameter is stored as
a lowercase string.

Constraints:

=over

=item * Must contain from 1 to 63 alphanumeric characters or hyphens.

=item * First character must be a letter.

=item * Cannot end with a hyphen or contain two consecutive hyphens.

=back

Example: C<my-cluster1-snapshot1>


=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]

  The tags to be assigned to the DB cluster snapshot.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBClusterSnapshot in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

