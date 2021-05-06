
package Paws::RedShift::BatchModifyClusterSnapshots;
  use Moose;
  has Force => (is => 'ro', isa => 'Bool');
  has ManualSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has SnapshotIdentifierList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchModifyClusterSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::BatchModifyClusterSnapshotsOutputMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'BatchModifyClusterSnapshotsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::BatchModifyClusterSnapshots - Arguments for method BatchModifyClusterSnapshots on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchModifyClusterSnapshots on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method BatchModifyClusterSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchModifyClusterSnapshots.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $BatchModifyClusterSnapshotsOutputMessage =
      $redshift->BatchModifyClusterSnapshots(
      SnapshotIdentifierList        => [ 'MyString', ... ],
      Force                         => 1,                     # OPTIONAL
      ManualSnapshotRetentionPeriod => 1,                     # OPTIONAL
      );

    # Results:
    my $Errors    = $BatchModifyClusterSnapshotsOutputMessage->Errors;
    my $Resources = $BatchModifyClusterSnapshotsOutputMessage->Resources;

 # Returns a L<Paws::RedShift::BatchModifyClusterSnapshotsOutputMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/BatchModifyClusterSnapshots>

=head1 ATTRIBUTES


=head2 Force => Bool

A boolean value indicating whether to override an exception if the
retention period has passed.



=head2 ManualSnapshotRetentionPeriod => Int

The number of days that a manual snapshot is retained. If you specify
the value -1, the manual snapshot is retained indefinitely.

The number must be either -1 or an integer between 1 and 3,653.

If you decrease the manual snapshot retention period from its current
value, existing manual snapshots that fall outside of the new retention
period will return an error. If you want to suppress the errors and
delete the snapshots, use the force option.



=head2 B<REQUIRED> SnapshotIdentifierList => ArrayRef[Str|Undef]

A list of snapshot identifiers you want to modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchModifyClusterSnapshots in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

