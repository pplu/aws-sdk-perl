
package Paws::IoT::CreateTopicRuleDestinationResponse;
  use Moose;
  has TopicRuleDestination => (is => 'ro', isa => 'Paws::IoT::TopicRuleDestination', traits => ['NameInRequest'], request_name => 'topicRuleDestination');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateTopicRuleDestinationResponse

=head1 ATTRIBUTES


=head2 TopicRuleDestination => L<Paws::IoT::TopicRuleDestination>

The topic rule destination.


=head2 _request_id => Str


=cut

