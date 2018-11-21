
package Paws::RedShift::BatchDeleteClusterSnapshots;
  use Moose;
  has Identifiers => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::DeleteClusterSnapshotMessage]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteClusterSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::BatchDeleteClusterSnapshotsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'BatchDeleteClusterSnapshotsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::BatchDeleteClusterSnapshots - Arguments for method BatchDeleteClusterSnapshots on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteClusterSnapshots on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method BatchDeleteClusterSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteClusterSnapshots.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $BatchDeleteClusterSnapshotsResult =
      $redshift->BatchDeleteClusterSnapshots(
      Identifiers => [
        {
          SnapshotIdentifier        => 'MyString',
          SnapshotClusterIdentifier => 'MyString',
        },
        ...
      ],

      );

    # Results:
    my $Errors    = $BatchDeleteClusterSnapshotsResult->Errors;
    my $Resources = $BatchDeleteClusterSnapshotsResult->Resources;

    # Returns a L<Paws::RedShift::BatchDeleteClusterSnapshotsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/BatchDeleteClusterSnapshots>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifiers => ArrayRef[L<Paws::RedShift::DeleteClusterSnapshotMessage>]

A list of identifiers for the snapshots that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteClusterSnapshots in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

