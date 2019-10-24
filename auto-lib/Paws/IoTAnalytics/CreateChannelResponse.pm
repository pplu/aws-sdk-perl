
package Paws::IoTAnalytics::CreateChannelResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_RetentionPeriod/;
  has ChannelArn => (is => 'ro', isa => Str);
  has ChannelName => (is => 'ro', isa => Str);
  has RetentionPeriod => (is => 'ro', isa => IoTAnalytics_RetentionPeriod);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RetentionPeriod' => {
                                      'class' => 'Paws::IoTAnalytics::RetentionPeriod',
                                      'type' => 'IoTAnalytics_RetentionPeriod'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ChannelName' => {
                                  'type' => 'Str'
                                },
               'ChannelArn' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'RetentionPeriod' => 'retentionPeriod',
                       'ChannelName' => 'channelName',
                       'ChannelArn' => 'channelArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::CreateChannelResponse

=head1 ATTRIBUTES


=head2 ChannelArn => Str

The ARN of the channel.


=head2 ChannelName => Str

The name of the channel.


=head2 RetentionPeriod => IoTAnalytics_RetentionPeriod

How long, in days, message data is kept for the channel.


=head2 _request_id => Str


=cut

