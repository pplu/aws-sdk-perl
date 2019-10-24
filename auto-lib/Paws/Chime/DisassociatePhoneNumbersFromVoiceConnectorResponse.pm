
package Paws::Chime::DisassociatePhoneNumbersFromVoiceConnectorResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Chime::Types qw/Chime_PhoneNumberError/;
  has PhoneNumberErrors => (is => 'ro', isa => ArrayRef[Chime_PhoneNumberError]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PhoneNumberErrors' => {
                                        'class' => 'Paws::Chime::PhoneNumberError',
                                        'type' => 'ArrayRef[Chime_PhoneNumberError]'
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

Paws::Chime::DisassociatePhoneNumbersFromVoiceConnectorResponse

=head1 ATTRIBUTES


=head2 PhoneNumberErrors => ArrayRef[Chime_PhoneNumberError]

If the action fails for one or more of the phone numbers in the
request, a list of the phone numbers is returned, along with error
codes and error messages.


=head2 _request_id => Str


=cut

