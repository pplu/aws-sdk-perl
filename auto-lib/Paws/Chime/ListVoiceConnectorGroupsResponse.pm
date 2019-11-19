
package Paws::Chime::ListVoiceConnectorGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Chime::Types qw/Chime_VoiceConnectorGroup/;
  has NextToken => (is => 'ro', isa => Str);
  has VoiceConnectorGroups => (is => 'ro', isa => ArrayRef[Chime_VoiceConnectorGroup]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VoiceConnectorGroups' => {
                                           'class' => 'Paws::Chime::VoiceConnectorGroup',
                                           'type' => 'ArrayRef[Chime_VoiceConnectorGroup]'
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

Paws::Chime::ListVoiceConnectorGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 VoiceConnectorGroups => ArrayRef[Chime_VoiceConnectorGroup]

The details of the Amazon Chime Voice Connector groups.


=head2 _request_id => Str


=cut

