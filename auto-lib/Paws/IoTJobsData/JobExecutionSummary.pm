package Paws::IoTJobsData::JobExecutionSummary;
  use Moose;
  has ExecutionNumber => (is => 'ro', isa => 'Int', request_name => 'executionNumber', traits => ['NameInRequest']);
  has JobId => (is => 'ro', isa => 'Str', request_name => 'jobId', traits => ['NameInRequest']);
  has LastUpdatedAt => (is => 'ro', isa => 'Int', request_name => 'lastUpdatedAt', traits => ['NameInRequest']);
  has QueuedAt => (is => 'ro', isa => 'Int', request_name => 'queuedAt', traits => ['NameInRequest']);
  has StartedAt => (is => 'ro', isa => 'Int', request_name => 'startedAt', traits => ['NameInRequest']);
  has VersionNumber => (is => 'ro', isa => 'Int', request_name => 'versionNumber', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTJobsData::JobExecutionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTJobsData::JobExecutionSummary object:

  $service_obj->Method(Att1 => { ExecutionNumber => $value, ..., VersionNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTJobsData::JobExecutionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ExecutionNumber

=head1 DESCRIPTION

Contains a subset of information about a job execution.

=head1 ATTRIBUTES


=head2 ExecutionNumber => Int

  A number that identifies a particular job execution on a particular
device.


=head2 JobId => Str

  The unique identifier you assigned to this job when it was created.


=head2 LastUpdatedAt => Int

  The time, in milliseconds since the epoch, when the job execution was
last updated.


=head2 QueuedAt => Int

  The time, in milliseconds since the epoch, when the job execution was
enqueued.


=head2 StartedAt => Int

  The time, in milliseconds since the epoch, when the job execution
started.


=head2 VersionNumber => Int

  The version of the job execution. Job execution versions are
incremented each time AWS IoT Jobs receives an update from a device.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTJobsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

