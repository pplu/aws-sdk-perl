
package Paws::DS::DeleteSnapshot;
  use Moose;
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::DeleteSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DeleteSnapshot - Arguments for method DeleteSnapshot on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSnapshot on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method DeleteSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSnapshot.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $DeleteSnapshotResult = $ds->DeleteSnapshot(
      SnapshotId => 'MySnapshotId',

    );

    # Results:
    my $SnapshotId = $DeleteSnapshotResult->SnapshotId;

    # Returns a L<Paws::DS::DeleteSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/DeleteSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SnapshotId => Str

The identifier of the directory snapshot to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSnapshot in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

