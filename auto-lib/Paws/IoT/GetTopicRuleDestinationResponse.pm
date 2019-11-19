
package Paws::IoT::GetTopicRuleDestinationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_TopicRuleDestination/;
  has TopicRuleDestination => (is => 'ro', isa => IoT_TopicRuleDestination);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TopicRuleDestination' => {
                                           'class' => 'Paws::IoT::TopicRuleDestination',
                                           'type' => 'IoT_TopicRuleDestination'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TopicRuleDestination' => 'topicRuleDestination'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetTopicRuleDestinationResponse

=head1 ATTRIBUTES


=head2 TopicRuleDestination => IoT_TopicRuleDestination

The topic rule destination.


=head2 _request_id => Str


=cut

