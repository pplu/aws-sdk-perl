
package Paws::Pinpoint::UpdateVoiceChannelResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'VoiceChannelResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_VoiceChannelResponse/;
  has VoiceChannelResponse => (is => 'ro', isa => Pinpoint_VoiceChannelResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VoiceChannelResponse' => {
                                           'class' => 'Paws::Pinpoint::VoiceChannelResponse',
                                           'type' => 'Pinpoint_VoiceChannelResponse'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'VoiceChannelResponse' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateVoiceChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> VoiceChannelResponse => Pinpoint_VoiceChannelResponse




=head2 _request_id => Str


=cut

