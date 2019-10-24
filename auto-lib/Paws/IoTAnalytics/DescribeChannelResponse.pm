
package Paws::IoTAnalytics::DescribeChannelResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_Channel IoTAnalytics_ChannelStatistics/;
  has Channel => (is => 'ro', isa => IoTAnalytics_Channel);
  has Statistics => (is => 'ro', isa => IoTAnalytics_ChannelStatistics);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Statistics' => {
                                 'class' => 'Paws::IoTAnalytics::ChannelStatistics',
                                 'type' => 'IoTAnalytics_ChannelStatistics'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Channel' => {
                              'class' => 'Paws::IoTAnalytics::Channel',
                              'type' => 'IoTAnalytics_Channel'
                            }
             },
  'NameInRequest' => {
                       'Statistics' => 'statistics',
                       'Channel' => 'channel'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DescribeChannelResponse

=head1 ATTRIBUTES


=head2 Channel => IoTAnalytics_Channel

An object that contains information about the channel.


=head2 Statistics => IoTAnalytics_ChannelStatistics

Statistics about the channel. Included if the 'includeStatistics'
parameter is set to true in the request.


=head2 _request_id => Str


=cut

