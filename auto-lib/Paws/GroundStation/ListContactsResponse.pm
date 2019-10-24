
package Paws::GroundStation::ListContactsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GroundStation::Types qw/GroundStation_ContactData/;
  has ContactList => (is => 'ro', isa => ArrayRef[GroundStation_ContactData]);
  has NextToken => (is => 'ro', isa => Str);

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
               'ContactList' => {
                                  'class' => 'Paws::GroundStation::ContactData',
                                  'type' => 'ArrayRef[GroundStation_ContactData]'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ContactList' => 'contactList'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListContactsResponse

=head1 ATTRIBUTES


=head2 ContactList => ArrayRef[GroundStation_ContactData]

List of contacts.


=head2 NextToken => Str

Next token returned in the response of a previous C<ListContacts> call.
Used to get the next page of results.


=head2 _request_id => Str


=cut

