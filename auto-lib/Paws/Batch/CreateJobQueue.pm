
package Paws::Batch::CreateJobQueue;
  use Moose;
  has ComputeEnvironmentOrder => (is => 'ro', isa => 'ArrayRef[Paws::Batch::ComputeEnvironmentOrder]', traits => ['NameInRequest'], request_name => 'computeEnvironmentOrder', required => 1);
  has JobQueueName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobQueueName', required => 1);
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority', required => 1);
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJobQueue');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/createjobqueue');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::CreateJobQueueResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::CreateJobQueue - Arguments for method CreateJobQueue on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJobQueue on the 
AWS Batch service. Use the attributes of this class
as arguments to method CreateJobQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJobQueue.

As an example:

  $service_obj->CreateJobQueue(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeEnvironmentOrder => ArrayRef[L<Paws::Batch::ComputeEnvironmentOrder>]

The set of compute environments mapped to a job queue and their order
relative to each other. The job scheduler uses this parameter to
determine which compute environment should execute a given job. Compute
environments must be in the C<VALID> state before you can associate
them with a job queue. You can associate up to 3 compute environments
with a job queue.



=head2 B<REQUIRED> JobQueueName => Str

The name of the job queue.



=head2 B<REQUIRED> Priority => Int

The priority of the job queue. Job queues with a higher priority (or a
higher integer value for the C<priority> parameter) are evaluated first
when associated with same compute environment. Priority is determined
in descending order, for example, a job queue with a priority value of
C<10> is given scheduling preference over a job queue with a priority
value of C<1>.



=head2 State => Str

The state of the job queue. If the job queue state is C<ENABLED>, it is
able to accept jobs.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJobQueue in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

