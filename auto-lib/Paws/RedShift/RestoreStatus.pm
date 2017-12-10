package Paws::RedShift::RestoreStatus;
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

Paws::RedShift::RestoreStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::RestoreStatus object:

  $service_obj->Method(Att1 => { CurrentRestoreRateInMegaBytesPerSecond => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::RestoreStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrentRestoreRateInMegaBytesPerSecond

=head1 DESCRIPTION

Describes the status of a cluster restore action. Returns null if the
cluster was not created by restoring a snapshot.

=head1 ATTRIBUTES


=head2 CurrentRestoreRateInMegaBytesPerSecond => Num

  The number of megabytes per second being transferred from the backup
storage. Returns the average rate for a completed backup.


=head2 ElapsedTimeInSeconds => Int

  The amount of time an in-progress restore has been running, or the
amount of time it took a completed restore to finish.


=head2 EstimatedTimeToCompletionInSeconds => Int

  The estimate of the time remaining before the restore will complete.
Returns 0 for a completed restore.


=head2 ProgressInMegaBytes => Int

  The number of megabytes that have been transferred from snapshot
storage.


=head2 SnapshotSizeInMegaBytes => Int

  The size of the set of snapshot data used to restore the cluster.


=head2 Status => Str

  The status of the restore action. Returns starting, restoring,
completed, or failed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

