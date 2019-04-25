
package Paws::RDS::DeleteDBClusterSnapshot;
  use Moose;
  has DBClusterSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBClusterSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DeleteDBClusterSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBClusterSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteDBClusterSnapshot - Arguments for method DeleteDBClusterSnapshot on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDBClusterSnapshot on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DeleteDBClusterSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDBClusterSnapshot.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To delete a DB cluster snapshot.
    # This example deletes the specified DB cluster snapshot.
    my $DeleteDBClusterSnapshotResult = $rds->DeleteDBClusterSnapshot(
      {
        'DBClusterSnapshotIdentifier' => 'mydbclustersnapshot'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DeleteDBClusterSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterSnapshotIdentifier => Str

The identifier of the DB cluster snapshot to delete.

Constraints: Must be the name of an existing DB cluster snapshot in the
C<available> state.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDBClusterSnapshot in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

