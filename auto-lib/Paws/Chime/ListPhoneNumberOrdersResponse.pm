
package Paws::Chime::ListPhoneNumberOrdersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Chime::Types qw/Chime_PhoneNumberOrder/;
  has NextToken => (is => 'ro', isa => Str);
  has PhoneNumberOrders => (is => 'ro', isa => ArrayRef[Chime_PhoneNumberOrder]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PhoneNumberOrders' => {
                                        'class' => 'Paws::Chime::PhoneNumberOrder',
                                        'type' => 'ArrayRef[Chime_PhoneNumberOrder]'
                                      }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListPhoneNumberOrdersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 PhoneNumberOrders => ArrayRef[Chime_PhoneNumberOrder]

The phone number order details.


=head2 _request_id => Str


=cut

