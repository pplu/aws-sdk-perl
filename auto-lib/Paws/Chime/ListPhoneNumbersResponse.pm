
package Paws::Chime::ListPhoneNumbersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Chime::Types qw/Chime_PhoneNumber/;
  has NextToken => (is => 'ro', isa => Str);
  has PhoneNumbers => (is => 'ro', isa => ArrayRef[Chime_PhoneNumber]);

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
               'PhoneNumbers' => {
                                   'type' => 'ArrayRef[Chime_PhoneNumber]',
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

Paws::Chime::ListPhoneNumbersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 PhoneNumbers => ArrayRef[Chime_PhoneNumber]

The phone number details.


=head2 _request_id => Str


=cut

