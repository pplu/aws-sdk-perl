
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

A string returned in the response. Use the value returned in the
response as the value of the NextToken in a subsequent request to
retrieve the next set of results.


=head2 UserSummaryList => ArrayRef[L<Paws::Connect::UserSummary>]

An array of C<UserSummary> objects that contain information about the
users in your instance.


=head2 _request_id => Str


=cut

