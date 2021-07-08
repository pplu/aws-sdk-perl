
package Paws::Connect::DescribeQueueResponse;
  use Moose;
  has Queue => (is => 'ro', isa => 'Paws::Connect::Queue');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeQueueResponse

=head1 ATTRIBUTES


=head2 Queue => L<Paws::Connect::Queue>

The name of the queue.


=head2 _request_id => Str


=cut

