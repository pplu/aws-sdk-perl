
package Paws::SQS::GetQueueUrlResult;
  use Moose;
  has QueueUrl => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::GetQueueUrlResult

=head1 ATTRIBUTES


=head2 QueueUrl => Str

The URL of the queue.


=head2 _request_id => Str


=cut

