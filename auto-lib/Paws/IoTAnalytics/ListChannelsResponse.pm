
package Paws::IoTAnalytics::ListChannelsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_ChannelSummary/;
  has ChannelSummaries => (is => 'ro', isa => ArrayRef[IoTAnalytics_ChannelSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ChannelSummaries' => {
                                       'type' => 'ArrayRef[IoTAnalytics_ChannelSummary]',
                                       'class' => 'Paws::IoTAnalytics::ChannelSummary'
                                     }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ChannelSummaries' => 'channelSummaries'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::ListChannelsResponse

=head1 ATTRIBUTES


=head2 ChannelSummaries => ArrayRef[IoTAnalytics_ChannelSummary]

A list of "ChannelSummary" objects.


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 _request_id => Str


=cut

