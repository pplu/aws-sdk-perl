
package Paws::Connect::CreateQueueResponse;
  use Moose;
  has QueueArn => (is => 'ro', isa => 'Str');
  has QueueId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateQueueResponse

=head1 ATTRIBUTES


=head2 QueueArn => Str

The Amazon Resource Name (ARN) of the queue.


=head2 QueueId => Str

The identifier for the queue.


=head2 _request_id => Str


=cut

