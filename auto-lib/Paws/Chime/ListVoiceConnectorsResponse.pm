
package Paws::Chime::ListVoiceConnectorsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Chime::Types qw/Chime_VoiceConnector/;
  has NextToken => (is => 'ro', isa => Str);
  has VoiceConnectors => (is => 'ro', isa => ArrayRef[Chime_VoiceConnector]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VoiceConnectors' => {
                                      'class' => 'Paws::Chime::VoiceConnector',
                                      'type' => 'ArrayRef[Chime_VoiceConnector]'
                                    },
               'NextToken' => {
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

Paws::Chime::ListVoiceConnectorsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 VoiceConnectors => ArrayRef[Chime_VoiceConnector]

The details of the Amazon Chime Voice Connectors.


=head2 _request_id => Str


=cut

