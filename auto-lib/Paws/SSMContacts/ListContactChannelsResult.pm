
package Paws::SSMContacts::ListContactChannelsResult;
  use Moose;
  has ContactChannels => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::ContactChannel]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ListContactChannelsResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactChannels => ArrayRef[L<Paws::SSMContacts::ContactChannel>]

A list of contact channels related to the specified contact.


=head2 NextToken => Str

The pagination token to continue to the next page of results.


=head2 _request_id => Str


=cut

1;