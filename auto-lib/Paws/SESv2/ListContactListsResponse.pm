
package Paws::SESv2::ListContactListsResponse;
  use Moose;
  has ContactLists => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::ContactList]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListContactListsResponse

=head1 ATTRIBUTES


=head2 ContactLists => ArrayRef[L<Paws::SESv2::ContactList>]

The available contact lists.


=head2 NextToken => Str

A string token indicating that there might be additional contact lists
available to be listed. Copy this token to a subsequent call to
C<ListContactLists> with the same parameters to retrieve the next page
of contact lists.


=head2 _request_id => Str


=cut

