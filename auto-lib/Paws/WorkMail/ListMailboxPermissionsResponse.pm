
package Paws::WorkMail::ListMailboxPermissionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::Permission]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListMailboxPermissionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. The value is
"null" when there are no more results to return.


=head2 Permissions => ArrayRef[L<Paws::WorkMail::Permission>]

One page of the entity's mailbox permissions.


=head2 _request_id => Str


=cut

1;