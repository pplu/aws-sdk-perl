
package Paws::Connect::ListUsersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has UserSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::UserSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListUsersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 UserSummaryList => ArrayRef[L<Paws::Connect::UserSummary>]

Information about the users.


=head2 _request_id => Str


=cut

