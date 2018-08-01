package Paws::DMS::ReplicationTaskStats;
  use Moose;
  has ElapsedTimeMillis => (is => 'ro', isa => 'Int');
  has FreshStartDate => (is => 'ro', isa => 'Str');
  has FullLoadFinishDate => (is => 'ro', isa => 'Str');
  has FullLoadProgressPercent => (is => 'ro', isa => 'Int');
  has FullLoadStartDate => (is => 'ro', isa => 'Str');
  has StartDate => (is => 'ro', isa => 'Str');
  has StopDate => (is => 'ro', isa => 'Str');
  has TablesErrored => (is => 'ro', isa => 'Int');
  has TablesLoaded => (is => 'ro', isa => 'Int');
  has TablesLoading => (is => 'ro', isa => 'Int');
  has TablesQueued => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ReplicationTaskStats

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::ReplicationTaskStats object:

  $service_obj->Method(Att1 => { ElapsedTimeMillis => $value, ..., TablesQueued => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::ReplicationTaskStats object:

  $result = $service_obj->Method(...);
  $result->Att1->ElapsedTimeMillis

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ElapsedTimeMillis => Int

  The elapsed time of the task, in milliseconds.


=head2 FreshStartDate => Str

  The date the replication task was started either with a fresh start or
a target reload.


=head2 FullLoadFinishDate => Str

  The date the replication task full load was completed.


=head2 FullLoadProgressPercent => Int

  The percent complete for the full load migration task.


=head2 FullLoadStartDate => Str

  The date the the replication task full load was started.


=head2 StartDate => Str

  The date the replication task was started either with a fresh start or
a resume. For more information, see StartReplicationTaskType
(https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html#DMS-StartReplicationTask-request-StartReplicationTaskType).


=head2 StopDate => Str

  The date the replication task was stopped.


=head2 TablesErrored => Int

  The number of errors that have occurred during this task.


=head2 TablesLoaded => Int

  The number of tables loaded for this task.


=head2 TablesLoading => Int

  The number of tables currently loading for this task.


=head2 TablesQueued => Int

  The number of tables queued for this task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

