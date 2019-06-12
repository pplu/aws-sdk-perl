
package Paws::GroundStation::ListContactsResponse;
  use Moose;
  has ContactList => (is => 'ro', isa => 'ArrayRef[Paws::GroundStation::ContactData]', traits => ['NameInRequest'], request_name => 'contactList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListContactsResponse

=head1 ATTRIBUTES


=head2 ContactList => ArrayRef[L<Paws::GroundStation::ContactData>]

List of contacts.


=head2 NextToken => Str

Next token returned in the response of a previous C<ListContacts> call.
Used to get the next page of results.


=head2 _request_id => Str


=cut

