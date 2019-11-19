
package Paws::PinpointSMSVoice::SendVoiceMessageResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::PinpointSMSVoice::Types qw//;
  has MessageId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MessageId' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoice::SendVoiceMessageResponse

=head1 ATTRIBUTES


=head2 MessageId => Str

A unique identifier for the voice message.


=head2 _request_id => Str


=cut

