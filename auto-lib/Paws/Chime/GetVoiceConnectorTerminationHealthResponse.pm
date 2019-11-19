
package Paws::Chime::GetVoiceConnectorTerminationHealthResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_TerminationHealth/;
  has TerminationHealth => (is => 'ro', isa => Chime_TerminationHealth);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TerminationHealth' => {
                                        'class' => 'Paws::Chime::TerminationHealth',
                                        'type' => 'Chime_TerminationHealth'
                                      }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetVoiceConnectorTerminationHealthResponse

=head1 ATTRIBUTES


=head2 TerminationHealth => Chime_TerminationHealth

The termination health details.


=head2 _request_id => Str


=cut

