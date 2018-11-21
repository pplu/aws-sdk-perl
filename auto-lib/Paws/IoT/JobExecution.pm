package Paws::IoT::JobExecution;
  use Moose;
  has ApproximateSecondsBeforeTimedOut => (is => 'ro', isa => 'Int', request_name => 'approximateSecondsBeforeTimedOut', traits => ['NameInRequest']);
  has ExecutionNumber => (is => 'ro', isa => 'Int', request_name => 'executionNumber', traits => ['NameInRequest']);
  has ForceCanceled => (is => 'ro', isa => 'Bool', request_name => 'forceCanceled', traits => ['NameInRequest']);
  has JobId => (is => 'ro', isa => 'Str', request_name => 'jobId', traits => ['NameInRequest']);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedAt', traits => ['NameInRequest']);
  has QueuedAt => (is => 'ro', isa => 'Str', request_name => 'queuedAt', traits => ['NameInRequest']);
  has StartedAt => (is => 'ro', isa => 'Str', request_name => 'startedAt', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusDetails => (is => 'ro', isa => 'Paws::IoT::JobExecutionStatusDetails', request_name => 'statusDetails', traits => ['NameInRequest']);
  has ThingArn => (is => 'ro', isa => 'Str', request_name => 'thingArn', traits => ['NameInRequest']);
  has VersionNumber => (is => 'ro', isa => 'Int', request_name => 'versionNumber', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::JobExecution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::JobExecution object:

  $service_obj->Method(Att1 => { ApproximateSecondsBeforeTimedOut => $value, ..., VersionNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::JobExecution object:

  $result = $service_obj->Method(...);
  $result->Att1->ApproximateSecondsBeforeTimedOut

=head1 DESCRIPTION

The job execution object represents the execution of a job on a
particular device.

=head1 ATTRIBUTES


=head2 ApproximateSecondsBeforeTimedOut => Int

  The estimated number of seconds that remain before the job execution
status will be changed to C<TIMED_OUT>. The timeout interval can be
anywhere between 1 minute and 7 days (1 to 10080 minutes). The actual
job execution timeout can occur up to 60 seconds later than the
estimated duration. This value will not be included if the job
execution has reached a terminal status.


=head2 ExecutionNumber => Int

  A string (consisting of the digits "0" through "9") which identifies
this particular job execution on this particular device. It can be used
in commands which return or update job execution information.


=head2 ForceCanceled => Bool

  Will be C<true> if the job execution was canceled with the optional
C<force> parameter set to C<true>.


=head2 JobId => Str

  The unique identifier you assigned to the job when it was created.


=head2 LastUpdatedAt => Str

  The time, in milliseconds since the epoch, when the job execution was
last updated.


=head2 QueuedAt => Str

  The time, in milliseconds since the epoch, when the job execution was
queued.


=head2 StartedAt => Str

  The time, in milliseconds since the epoch, when the job execution
started.


=head2 Status => Str

  The status of the job execution (IN_PROGRESS, QUEUED, FAILED,
SUCCEEDED, TIMED_OUT, CANCELED, or REJECTED).


=head2 StatusDetails => L<Paws::IoT::JobExecutionStatusDetails>

  A collection of name/value pairs that describe the status of the job
execution.


=head2 ThingArn => Str

  The ARN of the thing on which the job execution is running.


=head2 VersionNumber => Int

  The version of the job execution. Job execution versions are
incremented each time they are updated by a device.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

