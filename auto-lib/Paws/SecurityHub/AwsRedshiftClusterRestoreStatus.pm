# Generated by default/object.tt
package Paws::SecurityHub::AwsRedshiftClusterRestoreStatus;
  use Moose;
  has CurrentRestoreRateInMegaBytesPerSecond => (is => 'ro', isa => 'Num');
  has ElapsedTimeInSeconds => (is => 'ro', isa => 'Int');
  has EstimatedTimeToCompletionInSeconds => (is => 'ro', isa => 'Int');
  has ProgressInMegaBytes => (is => 'ro', isa => 'Int');
  has SnapshotSizeInMegaBytes => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsRedshiftClusterRestoreStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsRedshiftClusterRestoreStatus object:

  $service_obj->Method(Att1 => { CurrentRestoreRateInMegaBytesPerSecond => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsRedshiftClusterRestoreStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrentRestoreRateInMegaBytesPerSecond

=head1 DESCRIPTION

Information about the status of a cluster restore action. It only
applies if the cluster was created by restoring a snapshot.

=head1 ATTRIBUTES


=head2 CurrentRestoreRateInMegaBytesPerSecond => Num

The number of megabytes per second being transferred from the backup
storage. Returns the average rate for a completed backup.

This field is only updated when you restore to DC2 and DS2 node types.


=head2 ElapsedTimeInSeconds => Int

The amount of time an in-progress restore has been running, or the
amount of time it took a completed restore to finish.

This field is only updated when you restore to DC2 and DS2 node types.


=head2 EstimatedTimeToCompletionInSeconds => Int

The estimate of the time remaining before the restore is complete.
Returns 0 for a completed restore.

This field is only updated when you restore to DC2 and DS2 node types.


=head2 ProgressInMegaBytes => Int

The number of megabytes that were transferred from snapshot storage.

This field is only updated when you restore to DC2 and DS2 node types.


=head2 SnapshotSizeInMegaBytes => Int

The size of the set of snapshot data that was used to restore the
cluster.

This field is only updated when you restore to DC2 and DS2 node types.


=head2 Status => Str

The status of the restore action.

Valid values: C<starting> | C<restoring> | C<completed> | C<failed>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

