
package Paws::IoT::ListTopicRuleDestinationsResponse;
  use Moose;
  has DestinationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoT::TopicRuleDestinationSummary]', traits => ['NameInRequest'], request_name => 'destinationSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListTopicRuleDestinationsResponse

=head1 ATTRIBUTES


=head2 DestinationSummaries => ArrayRef[L<Paws::IoT::TopicRuleDestinationSummary>]

Information about a topic rule destination.


=head2 NextToken => Str

The token to use to get the next set of results, or B<null> if there
are no additional results.


=head2 _request_id => Str


=cut

