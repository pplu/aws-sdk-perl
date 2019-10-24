
package Paws::Chime::RegenerateSecurityTokenResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_Bot/;
  has Bot => (is => 'ro', isa => Chime_Bot);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Bot' => {
                          'class' => 'Paws::Chime::Bot',
                          'type' => 'Chime_Bot'
                        }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::RegenerateSecurityTokenResponse

=head1 ATTRIBUTES


=head2 Bot => Chime_Bot




=head2 _request_id => Str


=cut

