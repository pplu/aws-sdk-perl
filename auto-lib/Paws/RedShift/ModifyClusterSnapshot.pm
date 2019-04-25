
package Paws::RedShift::ModifyClusterSnapshot;
  use Moose;
  has Force => (is => 'ro', isa => 'Bool');
  has ManualSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyClusterSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ModifyClusterSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyClusterSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyClusterSnapshot - Arguments for method ModifyClusterSnapshot on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyClusterSnapshot on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method ModifyClusterSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyClusterSnapshot.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $ModifyClusterSnapshotResult = $redshift->ModifyClusterSnapshot(
      SnapshotIdentifier            => 'MyString',
      Force                         => 1,            # OPTIONAL
      ManualSnapshotRetentionPeriod => 1,            # OPTIONAL
    );

    # Results:
    my $Snapshot = $ModifyClusterSnapshotResult->Snapshot;

    # Returns a L<Paws::RedShift::ModifyClusterSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/ModifyClusterSnapshot>

=head1 ATTRIBUTES


=head2 Force => Bool

A Boolean option to override an exception if the retention period has
already passed.



=head2 ManualSnapshotRetentionPeriod => Int

The number of days that a manual snapshot is retained. If the value is
-1, the manual snapshot is retained indefinitely.

If the manual snapshot falls outside of the new retention period, you
can specify the force option to immediately delete the snapshot.

The value must be either -1 or an integer between 1 and 3,653.



=head2 B<REQUIRED> SnapshotIdentifier => Str

The identifier of the snapshot whose setting you want to modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyClusterSnapshot in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

