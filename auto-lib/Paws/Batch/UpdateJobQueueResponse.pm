
package Paws::Batch::UpdateJobQueueResponse;
  use Moose;
  has JobQueueArn => (is => 'ro', isa => 'Str');
  has JobQueueName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::UpdateJobQueueResponse

=head1 ATTRIBUTES


=head2 JobQueueArn => Str

The Amazon Resource Name (ARN) of the job queue.


=head2 JobQueueName => Str

The name of the job queue.


=head2 _request_id => Str


=cut

