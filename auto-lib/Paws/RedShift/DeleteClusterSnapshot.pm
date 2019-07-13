
package Paws::RedShift::DeleteClusterSnapshot;
  use Moose;
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteClusterSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::DeleteClusterSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteClusterSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DeleteClusterSnapshot - Arguments for method DeleteClusterSnapshot on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteClusterSnapshot on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DeleteClusterSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteClusterSnapshot.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $DeleteClusterSnapshotResult = $redshift->DeleteClusterSnapshot(
      SnapshotIdentifier        => 'MyString',
      SnapshotClusterIdentifier => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Snapshot = $DeleteClusterSnapshotResult->Snapshot;

    # Returns a L<Paws::RedShift::DeleteClusterSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DeleteClusterSnapshot>

=head1 ATTRIBUTES


=head2 SnapshotClusterIdentifier => Str

The unique identifier of the cluster the snapshot was created from.
This parameter is required if your IAM user has a policy containing a
snapshot resource element that specifies anything other than * for the
cluster name.

Constraints: Must be the name of valid cluster.



=head2 B<REQUIRED> SnapshotIdentifier => Str

The unique identifier of the manual snapshot to be deleted.

Constraints: Must be the name of an existing snapshot that is in the
C<available>, C<failed>, or C<cancelled> state.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteClusterSnapshot in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

