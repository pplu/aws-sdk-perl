
package Paws::Pinpoint::ChannelsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_MapOfChannelResponse/;
  has Channels => (is => 'ro', isa => Pinpoint_MapOfChannelResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Channels' => {
                               'class' => 'Paws::Pinpoint::MapOfChannelResponse',
                               'type' => 'Pinpoint_MapOfChannelResponse'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Channels' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ChannelsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Channels => Pinpoint_MapOfChannelResponse

A map that contains a multipart response for each channel. For each
item in this object, the ChannelType is the key and the Channel is the
value.


=head2 _request_id => Str


=cut

