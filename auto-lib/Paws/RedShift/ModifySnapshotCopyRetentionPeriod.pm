
package Paws::RedShift::ModifySnapshotCopyRetentionPeriod;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Manual => (is => 'ro', isa => 'Bool');
  has RetentionPeriod => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifySnapshotCopyRetentionPeriod');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ModifySnapshotCopyRetentionPeriodResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifySnapshotCopyRetentionPeriodResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifySnapshotCopyRetentionPeriod - Arguments for method ModifySnapshotCopyRetentionPeriod on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifySnapshotCopyRetentionPeriod on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method ModifySnapshotCopyRetentionPeriod.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifySnapshotCopyRetentionPeriod.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $ModifySnapshotCopyRetentionPeriodResult =
      $redshift->ModifySnapshotCopyRetentionPeriod(
      ClusterIdentifier => 'MyString',
      RetentionPeriod   => 1,
      Manual            => 1,            # OPTIONAL
      );

    # Results:
    my $Cluster = $ModifySnapshotCopyRetentionPeriodResult->Cluster;

  # Returns a L<Paws::RedShift::ModifySnapshotCopyRetentionPeriodResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/ModifySnapshotCopyRetentionPeriod>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterIdentifier => Str

The unique identifier of the cluster for which you want to change the
retention period for either automated or manual snapshots that are
copied to a destination AWS Region.

Constraints: Must be the valid name of an existing cluster that has
cross-region snapshot copy enabled.



=head2 Manual => Bool

Indicates whether to apply the snapshot retention period to newly
copied manual snapshots instead of automated snapshots.



=head2 B<REQUIRED> RetentionPeriod => Int

The number of days to retain automated snapshots in the destination AWS
Region after they are copied from the source AWS Region.

By default, this only changes the retention period of copied automated
snapshots.

If you decrease the retention period for automated snapshots that are
copied to a destination AWS Region, Amazon Redshift deletes any
existing automated snapshots that were copied to the destination AWS
Region and that fall outside of the new retention period.

Constraints: Must be at least 1 and no more than 35 for automated
snapshots.

If you specify the C<manual> option, only newly copied manual snapshots
will have the new retention period.

If you specify the value of -1 newly copied manual snapshots are
retained indefinitely.

Constraints: The number of days must be either -1 or an integer between
1 and 3,653 for manual snapshots.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifySnapshotCopyRetentionPeriod in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

