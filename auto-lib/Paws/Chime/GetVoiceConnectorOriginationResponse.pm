
package Paws::Chime::GetVoiceConnectorOriginationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_Origination/;
  has Origination => (is => 'ro', isa => Chime_Origination);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Origination' => {
                                  'type' => 'Chime_Origination',
                                  'class' => 'Paws::Chime::Origination'
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

Paws::Chime::GetVoiceConnectorOriginationResponse

=head1 ATTRIBUTES


=head2 Origination => Chime_Origination

The origination setting details.


=head2 _request_id => Str


=cut

