
package Paws::WorkMail::ListUsersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::User]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListUsersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
`null` when there are no more results to return.


=head2 Users => ArrayRef[L<Paws::WorkMail::User>]

The overview of users for an organization.


=head2 _request_id => Str


=cut

1;