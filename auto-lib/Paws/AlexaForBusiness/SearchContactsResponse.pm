# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::SearchContactsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_ContactData/;
  has Contacts => (is => 'ro', isa => ArrayRef[AlexaForBusiness_ContactData]);
  has NextToken => (is => 'ro', isa => Str);
  has TotalCount => (is => 'ro', isa => Int);

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
               'Contacts' => {
                               'class' => 'Paws::AlexaForBusiness::ContactData',
                               'type' => 'ArrayRef[AlexaForBusiness_ContactData]'
                             },
               'TotalCount' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SearchContactsResponse

=head1 ATTRIBUTES


=head2 Contacts => ArrayRef[AlexaForBusiness_ContactData]

The contacts that meet the specified set of filter criteria, in sort
order.


=head2 NextToken => Str

The token returned to indicate that there is more data available.


=head2 TotalCount => Int

The total number of contacts returned.


=head2 _request_id => Str


=cut

1;