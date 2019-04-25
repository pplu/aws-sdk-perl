package Paws::DMS::ReplicationTask;
  use Moose;
  has CdcStartPosition => (is => 'ro', isa => 'Str');
  has CdcStopPosition => (is => 'ro', isa => 'Str');
  has LastFailureMessage => (is => 'ro', isa => 'Str');
  has MigrationType => (is => 'ro', isa => 'Str');
  has RecoveryCheckpoint => (is => 'ro', isa => 'Str');
  has ReplicationInstanceArn => (is => 'ro', isa => 'Str');
  has ReplicationTaskArn => (is => 'ro', isa => 'Str');
  has ReplicationTaskCreationDate => (is => 'ro', isa => 'Str');
  has ReplicationTaskIdentifier => (is => 'ro', isa => 'Str');
  has ReplicationTaskSettings => (is => 'ro', isa => 'Str');
  has ReplicationTaskStartDate => (is => 'ro', isa => 'Str');
  has ReplicationTaskStats => (is => 'ro', isa => 'Paws::DMS::ReplicationTaskStats');
  has SourceEndpointArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StopReason => (is => 'ro', isa => 'Str');
  has TableMappings => (is => 'ro', isa => 'Str');
  has TargetEndpointArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ReplicationTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::ReplicationTask object:

  $service_obj->Method(Att1 => { CdcStartPosition => $value, ..., TargetEndpointArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::ReplicationTask object:

  $result = $service_obj->Method(...);
  $result->Att1->CdcStartPosition

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CdcStartPosition => Str

  Indicates when you want a change data capture (CDC) operation to start.
Use either CdcStartPosition or CdcStartTime to specify when you want a
CDC operation to start. Specifying both values results in an error.

The value can be in date, checkpoint, or LSN/SCN format.

Date Example: --cdc-start-position E<ldquo>2018-03-08T12:12:12E<rdquo>

Checkpoint Example: --cdc-start-position
"checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"

LSN Example: --cdc-start-position
E<ldquo>mysql-bin-changelog.000024:373E<rdquo>


=head2 CdcStopPosition => Str

  Indicates when you want a change data capture (CDC) operation to stop.
The value can be either server time or commit time.

Server time example: --cdc-stop-position
E<ldquo>server_time:3018-02-09T12:12:12E<rdquo>

Commit time example: --cdc-stop-position E<ldquo>commit_time:
3018-02-09T12:12:12 E<ldquo>


=head2 LastFailureMessage => Str

  The last error (failure) message generated for the replication
instance.


=head2 MigrationType => Str

  The type of migration.


=head2 RecoveryCheckpoint => Str

  Indicates the last checkpoint that occurred during a change data
capture (CDC) operation. You can provide this value to the
C<CdcStartPosition> parameter to start a CDC operation that begins at
that checkpoint.


=head2 ReplicationInstanceArn => Str

  The Amazon Resource Name (ARN) of the replication instance.


=head2 ReplicationTaskArn => Str

  The Amazon Resource Name (ARN) of the replication task.


=head2 ReplicationTaskCreationDate => Str

  The date the replication task was created.


=head2 ReplicationTaskIdentifier => Str

  The user-assigned replication task identifier or name.

Constraints:

=over

=item *

Must contain from 1 to 255 alphanumeric characters or hyphens.

=item *

First character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back



=head2 ReplicationTaskSettings => Str

  The settings for the replication task.


=head2 ReplicationTaskStartDate => Str

  The date the replication task is scheduled to start.


=head2 ReplicationTaskStats => L<Paws::DMS::ReplicationTaskStats>

  The statistics for the task, including elapsed time, tables loaded, and
table errors.


=head2 SourceEndpointArn => Str

  The Amazon Resource Name (ARN) string that uniquely identifies the
endpoint.


=head2 Status => Str

  The status of the replication task.


=head2 StopReason => Str

  The reason the replication task was stopped.


=head2 TableMappings => Str

  Table mappings specified in the task.


=head2 TargetEndpointArn => Str

  The Amazon Resource Name (ARN) string that uniquely identifies the
endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

