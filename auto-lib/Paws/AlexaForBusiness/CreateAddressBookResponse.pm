# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::CreateAddressBookResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has AddressBookArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AddressBookArn' => {
                                     'type' => 'Str'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateAddressBookResponse

=head1 ATTRIBUTES


=head2 AddressBookArn => Str

The ARN of the newly created address book.


=head2 _request_id => Str


=cut

1;