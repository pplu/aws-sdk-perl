# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::GetAddressBookResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_AddressBook/;
  has AddressBook => (is => 'ro', isa => AlexaForBusiness_AddressBook);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AddressBook' => {
                                  'class' => 'Paws::AlexaForBusiness::AddressBook',
                                  'type' => 'AlexaForBusiness_AddressBook'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetAddressBookResponse

=head1 ATTRIBUTES


=head2 AddressBook => AlexaForBusiness_AddressBook

The details of the requested address book.


=head2 _request_id => Str


=cut

1;