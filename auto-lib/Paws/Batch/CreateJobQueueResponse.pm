
package Paws::Batch::CreateJobQueueResponse;
  use Moose;
  has JobQueueArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'jobQueueArn', required => 1);
  has JobQueueName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'jobQueueName', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::CreateJobQueueResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobQueueArn => Str

The Amazon Resource Name (ARN) of the job queue.


=head2 B<REQUIRED> JobQueueName => Str

The name of the job queue.


=head2 _request_id => Str


=cut

