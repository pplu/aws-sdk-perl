package Paws::Batch::JobDetail;
  use Moose;
  has Container => (is => 'ro', isa => 'Paws::Batch::ContainerDetail', request_name => 'container', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Int', request_name => 'createdAt', traits => ['NameInRequest']);
  has DependsOn => (is => 'ro', isa => 'ArrayRef[Paws::Batch::JobDependency]', request_name => 'dependsOn', traits => ['NameInRequest']);
  has JobDefinition => (is => 'ro', isa => 'Str', request_name => 'jobDefinition', traits => ['NameInRequest'], required => 1);
  has JobId => (is => 'ro', isa => 'Str', request_name => 'jobId', traits => ['NameInRequest'], required => 1);
  has JobName => (is => 'ro', isa => 'Str', request_name => 'jobName', traits => ['NameInRequest'], required => 1);
  has JobQueue => (is => 'ro', isa => 'Str', request_name => 'jobQueue', traits => ['NameInRequest'], required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::Batch::ParametersMap', request_name => 'parameters', traits => ['NameInRequest']);
  has StartedAt => (is => 'ro', isa => 'Int', request_name => 'startedAt', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
  has StatusReason => (is => 'ro', isa => 'Str', request_name => 'statusReason', traits => ['NameInRequest']);
  has StoppedAt => (is => 'ro', isa => 'Int', request_name => 'stoppedAt', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::JobDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::JobDetail object:

  $service_obj->Method(Att1 => { Container => $value, ..., StoppedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::JobDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Container

=head1 DESCRIPTION

An object representing an AWS Batch job.

=head1 ATTRIBUTES


=head2 Container => L<Paws::Batch::ContainerDetail>

  An object representing the details of the container that is associated
with the job.


=head2 CreatedAt => Int

  The Unix timestamp for when the job was created (when the task entered
the C<PENDING> state).


=head2 DependsOn => ArrayRef[L<Paws::Batch::JobDependency>]

  A list of job names or IDs on which this job depends.


=head2 B<REQUIRED> JobDefinition => Str

  The job definition that is used by this job.


=head2 B<REQUIRED> JobId => Str

  The ID for the job.


=head2 B<REQUIRED> JobName => Str

  The name of the job.


=head2 B<REQUIRED> JobQueue => Str

  The Amazon Resource Name (ARN) of the job queue with which the job is
associated.


=head2 Parameters => L<Paws::Batch::ParametersMap>

  Additional parameters passed to the job that replace parameter
substitution placeholders or override any corresponding parameter
defaults from the job definition.


=head2 B<REQUIRED> StartedAt => Int

  The Unix timestamp for when the job was started (when the task
transitioned from the C<PENDING> state to the C<RUNNING> state).


=head2 B<REQUIRED> Status => Str

  The current status for the job.


=head2 StatusReason => Str

  A short, human-readable string to provide additional details about the
current status of the job.


=head2 StoppedAt => Int

  The Unix timestamp for when the job was stopped (when the task
transitioned from the C<RUNNING> state to the C<STOPPED> state).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

