
package Paws::Chime::CreatePhoneNumberOrderResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_PhoneNumberOrder/;
  has PhoneNumberOrder => (is => 'ro', isa => Chime_PhoneNumberOrder);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PhoneNumberOrder' => {
                                       'class' => 'Paws::Chime::PhoneNumberOrder',
                                       'type' => 'Chime_PhoneNumberOrder'
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreatePhoneNumberOrderResponse

=head1 ATTRIBUTES


=head2 PhoneNumberOrder => Chime_PhoneNumberOrder

The phone number order details.


=head2 _request_id => Str


=cut

