
package Paws::IoT::ListTopicRuleDestinationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_TopicRuleDestinationSummary/;
  has DestinationSummaries => (is => 'ro', isa => ArrayRef[IoT_TopicRuleDestinationSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DestinationSummaries' => {
                                           'class' => 'Paws::IoT::TopicRuleDestinationSummary',
                                           'type' => 'ArrayRef[IoT_TopicRuleDestinationSummary]'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'DestinationSummaries' => 'destinationSummaries',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListTopicRuleDestinationsResponse

=head1 ATTRIBUTES


=head2 DestinationSummaries => ArrayRef[IoT_TopicRuleDestinationSummary]

Information about a topic rule destination.


=head2 NextToken => Str

The token to retrieve the next set of results.


=head2 _request_id => Str


=cut

