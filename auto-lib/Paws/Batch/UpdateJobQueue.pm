
package Paws::Batch::UpdateJobQueue;
  use Moose;
  has ComputeEnvironmentOrder => (is => 'ro', isa => 'ArrayRef[Paws::Batch::ComputeEnvironmentOrder]', traits => ['NameInRequest'], request_name => 'computeEnvironmentOrder');
  has JobQueue => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobQueue', required => 1);
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateJobQueue');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/updatejobqueue');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::UpdateJobQueueResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::UpdateJobQueue - Arguments for method UpdateJobQueue on Paws::Batch

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateJobQueue on the 
AWS Batch service. Use the attributes of this class
as arguments to method UpdateJobQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateJobQueue.

As an example:

  $service_obj->UpdateJobQueue(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ComputeEnvironmentOrder => ArrayRef[L<Paws::Batch::ComputeEnvironmentOrder>]

Details the set of compute environments mapped to a job queue and their
order relative to each other. This is one of the parameters used by the
job scheduler to determine which compute environment should execute a
given job.



=head2 B<REQUIRED> JobQueue => Str

The name or the Amazon Resource Name (ARN) of the job queue.



=head2 Priority => Int

The priority of the job queue. Job queues with a higher priority (or a
higher integer value for the C<priority> parameter) are evaluated first
when associated with same compute environment. Priority is determined
in descending order, for example, a job queue with a priority value of
C<10> is given scheduling preference over a job queue with a priority
value of C<1>.



=head2 State => Str

Describes the queue's ability to accept new jobs.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateJobQueue in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

