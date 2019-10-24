
package Paws::Chime::UpdatePhoneNumberResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_PhoneNumber/;
  has PhoneNumber => (is => 'ro', isa => Chime_PhoneNumber);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PhoneNumber' => {
                                  'class' => 'Paws::Chime::PhoneNumber',
                                  'type' => 'Chime_PhoneNumber'
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

Paws::Chime::UpdatePhoneNumberResponse

=head1 ATTRIBUTES


=head2 PhoneNumber => Chime_PhoneNumber

The updated phone number details.


=head2 _request_id => Str


=cut

