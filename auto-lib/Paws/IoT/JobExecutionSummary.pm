package Paws::IoT::JobExecutionSummary;
  use Moose;
  has ExecutionNumber => (is => 'ro', isa => 'Int', request_name => 'executionNumber', traits => ['NameInRequest']);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedAt', traits => ['NameInRequest']);
  has QueuedAt => (is => 'ro', isa => 'Str', request_name => 'queuedAt', traits => ['NameInRequest']);
  has StartedAt => (is => 'ro', isa => 'Str', request_name => 'startedAt', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::JobExecutionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::JobExecutionSummary object:

  $service_obj->Method(Att1 => { ExecutionNumber => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::JobExecutionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ExecutionNumber

=head1 DESCRIPTION

The job execution summary.

=head1 ATTRIBUTES


=head2 ExecutionNumber => Int

  A string (consisting of the digits "0" through "9") which identifies
this particular job execution on this particular device. It can be used
later in commands which return or update job execution information.


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

  The status of the job execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

