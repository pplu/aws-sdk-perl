
package Paws::SQS::CreateQueueResult;
  use Moose;
  has QueueUrl => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::CreateQueueResult

=head1 ATTRIBUTES


=head2 QueueUrl => Str

The URL of the created Amazon SQS queue.


=head2 _request_id => Str


=cut

