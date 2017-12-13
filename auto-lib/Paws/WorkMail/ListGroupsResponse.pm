
package Paws::WorkMail::ListGroupsResponse;
  use Moose;
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::Group]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListGroupsResponse

=head1 ATTRIBUTES


=head2 Groups => ArrayRef[L<Paws::WorkMail::Group>]

The overview of groups for an organization.


=head2 NextToken => Str

The token to use to retrieve the next page of results. The value is
"null" when there are no more results to return.


=head2 _request_id => Str


=cut

1;