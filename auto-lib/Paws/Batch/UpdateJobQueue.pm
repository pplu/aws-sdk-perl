
package Paws::Batch::UpdateJobQueue;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::Batch::Types qw/Batch_ComputeEnvironmentOrder/;
  has ComputeEnvironmentOrder => (is => 'ro', isa => ArrayRef[Batch_ComputeEnvironmentOrder], predicate => 1);
  has JobQueue => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Priority => (is => 'ro', isa => Int, predicate => 1);
  has State => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateJobQueue');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/updatejobqueue');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Batch::UpdateJobQueueResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ComputeEnvironmentOrder' => {
                                              'class' => 'Paws::Batch::ComputeEnvironmentOrder',
                                              'type' => 'ArrayRef[Batch_ComputeEnvironmentOrder]'
                                            },
               'Priority' => {
                               'type' => 'Int'
                             },
               'State' => {
                            'type' => 'Str'
                          },
               'JobQueue' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'ComputeEnvironmentOrder' => 'computeEnvironmentOrder',
                       'Priority' => 'priority',
                       'State' => 'state',
                       'JobQueue' => 'jobQueue'
                     },
  'IsRequired' => {
                    'JobQueue' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::UpdateJobQueue - Arguments for method UpdateJobQueue on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateJobQueue on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method UpdateJobQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateJobQueue.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    # To update a job queue
    # This example disables a job queue so that it can be deleted.
    my $UpdateJobQueueResponse = $batch->UpdateJobQueue(
      'JobQueue' => 'GPGPU',
      'State'    => 'DISABLED'
    );

    # Results:
    my $jobQueueArn  = $UpdateJobQueueResponse->jobQueueArn;
    my $jobQueueName = $UpdateJobQueueResponse->jobQueueName;

    # Returns a L<Paws::Batch::UpdateJobQueueResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/UpdateJobQueue>

=head1 ATTRIBUTES


=head2 ComputeEnvironmentOrder => ArrayRef[Batch_ComputeEnvironmentOrder]

Details the set of compute environments mapped to a job queue and their
order relative to each other. This is one of the parameters used by the
job scheduler to determine which compute environment should execute a
given job.



=head2 B<REQUIRED> JobQueue => Str

The name or the Amazon Resource Name (ARN) of the job queue.



=head2 Priority => Int

The priority of the job queue. Job queues with a higher priority (or a
higher integer value for the C<priority> parameter) are evaluated first
when associated with the same compute environment. Priority is
determined in descending order, for example, a job queue with a
priority value of C<10> is given scheduling preference over a job queue
with a priority value of C<1>.



=head2 State => Str

Describes the queue's ability to accept new jobs.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateJobQueue in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

