
package Paws::Connect::ListQueuesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has QueueSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::QueueSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListQueuesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 QueueSummaryList => ArrayRef[L<Paws::Connect::QueueSummary>]

Information about the queues.


=head2 _request_id => Str


=cut

