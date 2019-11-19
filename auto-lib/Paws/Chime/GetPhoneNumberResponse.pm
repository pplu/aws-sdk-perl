
package Paws::Chime::GetPhoneNumberResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_PhoneNumber/;
  has PhoneNumber => (is => 'ro', isa => Chime_PhoneNumber);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PhoneNumber' => {
                                  'type' => 'Chime_PhoneNumber',
                                  'class' => 'Paws::Chime::PhoneNumber'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetPhoneNumberResponse

=head1 ATTRIBUTES


=head2 PhoneNumber => Chime_PhoneNumber

The phone number details.


=head2 _request_id => Str


=cut

