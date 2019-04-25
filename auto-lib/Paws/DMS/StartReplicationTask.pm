
package Paws::DMS::StartReplicationTask;
  use Moose;
  has CdcStartPosition => (is => 'ro', isa => 'Str');
  has CdcStartTime => (is => 'ro', isa => 'Str');
  has CdcStopPosition => (is => 'ro', isa => 'Str');
  has ReplicationTaskArn => (is => 'ro', isa => 'Str', required => 1);
  has StartReplicationTaskType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartReplicationTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::StartReplicationTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::StartReplicationTask - Arguments for method StartReplicationTask on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartReplicationTask on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method StartReplicationTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartReplicationTask.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $StartReplicationTaskResponse = $dms->StartReplicationTask(
      ReplicationTaskArn       => 'MyString',
      StartReplicationTaskType => 'start-replication',
      CdcStartPosition         => 'MyString',               # OPTIONAL
      CdcStartTime             => '1970-01-01T01:00:00',    # OPTIONAL
      CdcStopPosition          => 'MyString',               # OPTIONAL
    );

    # Results:
    my $ReplicationTask = $StartReplicationTaskResponse->ReplicationTask;

    # Returns a L<Paws::DMS::StartReplicationTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/StartReplicationTask>

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



=head2 CdcStartTime => Str

Indicates the start time for a change data capture (CDC) operation. Use
either CdcStartTime or CdcStartPosition to specify when you want a CDC
operation to start. Specifying both values results in an error.

Timestamp Example: --cdc-start-time E<ldquo>2018-03-08T12:12:12E<rdquo>



=head2 CdcStopPosition => Str

Indicates when you want a change data capture (CDC) operation to stop.
The value can be either server time or commit time.

Server time example: --cdc-stop-position
E<ldquo>server_time:3018-02-09T12:12:12E<rdquo>

Commit time example: --cdc-stop-position E<ldquo>commit_time:
3018-02-09T12:12:12 E<ldquo>



=head2 B<REQUIRED> ReplicationTaskArn => Str

The Amazon Resource Name (ARN) of the replication task to be started.



=head2 B<REQUIRED> StartReplicationTaskType => Str

The type of replication task.

Valid values are: C<"start-replication">, C<"resume-processing">, C<"reload-target">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartReplicationTask in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

