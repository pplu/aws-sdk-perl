package Paws::Batch::JobSummary;
  use Moose;
  has ArrayProperties => (is => 'ro', isa => 'Paws::Batch::ArrayPropertiesSummary', request_name => 'arrayProperties', traits => ['NameInRequest']);
  has Container => (is => 'ro', isa => 'Paws::Batch::ContainerSummary', request_name => 'container', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Int', request_name => 'createdAt', traits => ['NameInRequest']);
  has JobId => (is => 'ro', isa => 'Str', request_name => 'jobId', traits => ['NameInRequest'], required => 1);
  has JobName => (is => 'ro', isa => 'Str', request_name => 'jobName', traits => ['NameInRequest'], required => 1);
  has NodeProperties => (is => 'ro', isa => 'Paws::Batch::NodePropertiesSummary', request_name => 'nodeProperties', traits => ['NameInRequest']);
  has StartedAt => (is => 'ro', isa => 'Int', request_name => 'startedAt', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusReason => (is => 'ro', isa => 'Str', request_name => 'statusReason', traits => ['NameInRequest']);
  has StoppedAt => (is => 'ro', isa => 'Int', request_name => 'stoppedAt', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::JobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::JobSummary object:

  $service_obj->Method(Att1 => { ArrayProperties => $value, ..., StoppedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::JobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ArrayProperties

=head1 DESCRIPTION

An object representing summary details of a job.

=head1 ATTRIBUTES


=head2 ArrayProperties => L<Paws::Batch::ArrayPropertiesSummary>

  The array properties of the job, if it is an array job.


=head2 Container => L<Paws::Batch::ContainerSummary>

  An object representing the details of the container that is associated
with the job.


=head2 CreatedAt => Int

  The Unix timestamp for when the job was created. For non-array jobs and
parent array jobs, this is when the job entered the C<SUBMITTED> state
(at the time SubmitJob was called). For array child jobs, this is when
the child job was spawned by its parent and entered the C<PENDING>
state.


=head2 B<REQUIRED> JobId => Str

  The ID of the job.


=head2 B<REQUIRED> JobName => Str

  The name of the job.


=head2 NodeProperties => L<Paws::Batch::NodePropertiesSummary>

  The node properties for a single node in a job summary list.


=head2 StartedAt => Int

  The Unix timestamp for when the job was started (when the job
transitioned from the C<STARTING> state to the C<RUNNING> state).


=head2 Status => Str

  The current status for the job.


=head2 StatusReason => Str

  A short, human-readable string to provide additional details about the
current status of the job.


=head2 StoppedAt => Int

  The Unix timestamp for when the job was stopped (when the job
transitioned from the C<RUNNING> state to a terminal state, such as
C<SUCCEEDED> or C<FAILED>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

