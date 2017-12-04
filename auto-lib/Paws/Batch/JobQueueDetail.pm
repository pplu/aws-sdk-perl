package Paws::Batch::JobQueueDetail;
  use Moose;
  has ComputeEnvironmentOrder => (is => 'ro', isa => 'ArrayRef[Paws::Batch::ComputeEnvironmentOrder]', request_name => 'computeEnvironmentOrder', traits => ['NameInRequest'], required => 1);
  has JobQueueArn => (is => 'ro', isa => 'Str', request_name => 'jobQueueArn', traits => ['NameInRequest'], required => 1);
  has JobQueueName => (is => 'ro', isa => 'Str', request_name => 'jobQueueName', traits => ['NameInRequest'], required => 1);
  has Priority => (is => 'ro', isa => 'Int', request_name => 'priority', traits => ['NameInRequest'], required => 1);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusReason => (is => 'ro', isa => 'Str', request_name => 'statusReason', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::JobQueueDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::JobQueueDetail object:

  $service_obj->Method(Att1 => { ComputeEnvironmentOrder => $value, ..., StatusReason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::JobQueueDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ComputeEnvironmentOrder

=head1 DESCRIPTION

An object representing the details of an AWS Batch job queue.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeEnvironmentOrder => ArrayRef[L<Paws::Batch::ComputeEnvironmentOrder>]

  The compute environments that are attached to the job queue and the
order in which job placement is preferred. Compute environments are
selected for job placement in ascending order.


=head2 B<REQUIRED> JobQueueArn => Str

  The Amazon Resource Name (ARN) of the job queue.


=head2 B<REQUIRED> JobQueueName => Str

  The name of the job queue.


=head2 B<REQUIRED> Priority => Int

  The priority of the job queue.


=head2 B<REQUIRED> State => Str

  Describes the ability of the queue to accept new jobs.


=head2 Status => Str

  The status of the job queue (for example, C<CREATING> or C<VALID>).


=head2 StatusReason => Str

  A short, human-readable string to provide additional details about the
current status of the job queue.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

