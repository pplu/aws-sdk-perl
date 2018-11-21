
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
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method CreateJobQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJobQueue.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    # To create a job queue with a single compute environment
    # This example creates a job queue called LowPriority that uses the M4Spot
    # compute environment.
    my $CreateJobQueueResponse = $batch->CreateJobQueue(
      {
        'ComputeEnvironmentOrder' => [

          {
            'ComputeEnvironment' => 'M4Spot',
            'Order'              => 1
          }
        ],
        'JobQueueName' => 'LowPriority',
        'Priority'     => 10,
        'State'        => 'ENABLED'
      }
    );

    # Results:
    my $jobQueueArn  = $CreateJobQueueResponse->jobQueueArn;
    my $jobQueueName = $CreateJobQueueResponse->jobQueueName;

    # Returns a L<Paws::Batch::CreateJobQueueResponse> object.
    # To create a job queue with multiple compute environments
    # This example creates a job queue called HighPriority that uses the
    # C4OnDemand compute environment with an order of 1 and the M4Spot compute
    # environment with an order of 2.
    my $CreateJobQueueResponse = $batch->CreateJobQueue(
      {
        'ComputeEnvironmentOrder' => [

          {
            'ComputeEnvironment' => 'C4OnDemand',
            'Order'              => 1
          },

          {
            'ComputeEnvironment' => 'M4Spot',
            'Order'              => 2
          }
        ],
        'JobQueueName' => 'HighPriority',
        'Priority'     => 1,
        'State'        => 'ENABLED'
      }
    );

    # Results:
    my $jobQueueArn  = $CreateJobQueueResponse->jobQueueArn;
    my $jobQueueName = $CreateJobQueueResponse->jobQueueName;

    # Returns a L<Paws::Batch::CreateJobQueueResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/CreateJobQueue>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeEnvironmentOrder => ArrayRef[L<Paws::Batch::ComputeEnvironmentOrder>]

The set of compute environments mapped to a job queue and their order
relative to each other. The job scheduler uses this parameter to
determine which compute environment should execute a given job. Compute
environments must be in the C<VALID> state before you can associate
them with a job queue. You can associate up to three compute
environments with a job queue.



=head2 B<REQUIRED> JobQueueName => Str

The name of the job queue.



=head2 B<REQUIRED> Priority => Int

The priority of the job queue. Job queues with a higher priority (or a
higher integer value for the C<priority> parameter) are evaluated first
when associated with the same compute environment. Priority is
determined in descending order, for example, a job queue with a
priority value of C<10> is given scheduling preference over a job queue
with a priority value of C<1>.



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

