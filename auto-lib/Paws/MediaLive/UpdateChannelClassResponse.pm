
package Paws::MediaLive::UpdateChannelClassResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaLive::Types qw/MediaLive_Channel/;
  has Channel => (is => 'ro', isa => MediaLive_Channel);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Channel' => {
                              'type' => 'MediaLive_Channel',
                              'class' => 'Paws::MediaLive::Channel'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Channel' => 'channel'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateChannelClassResponse

=head1 ATTRIBUTES


=head2 Channel => MediaLive_Channel




=head2 _request_id => Str


=cut

