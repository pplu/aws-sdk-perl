
package Paws::SESv2::ListContactsResponse;
  use Moose;
  has Contacts => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::Contact]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListContactsResponse

=head1 ATTRIBUTES


=head2 Contacts => ArrayRef[L<Paws::SESv2::Contact>]

The contacts present in a specific contact list.


=head2 NextToken => Str

A string token indicating that there might be additional contacts
available to be listed. Copy this token to a subsequent call to
C<ListContacts> with the same parameters to retrieve the next page of
contacts.


=head2 _request_id => Str


=cut

