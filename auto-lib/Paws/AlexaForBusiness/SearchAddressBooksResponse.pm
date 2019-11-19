# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::SearchAddressBooksResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_AddressBookData/;
  has AddressBooks => (is => 'ro', isa => ArrayRef[AlexaForBusiness_AddressBookData]);
  has NextToken => (is => 'ro', isa => Str);
  has TotalCount => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'AddressBooks' => {
                                   'type' => 'ArrayRef[AlexaForBusiness_AddressBookData]',
                                   'class' => 'Paws::AlexaForBusiness::AddressBookData'
                                 },
               'TotalCount' => {
                                 'type' => 'Int'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SearchAddressBooksResponse

=head1 ATTRIBUTES


=head2 AddressBooks => ArrayRef[AlexaForBusiness_AddressBookData]

The address books that meet the specified set of filter criteria, in
sort order.


=head2 NextToken => Str

The token returned to indicate that there is more data available.


=head2 TotalCount => Int

The total number of address books returned.


=head2 _request_id => Str


=cut

1;