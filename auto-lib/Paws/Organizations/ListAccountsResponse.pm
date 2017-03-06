
package Paws::Organizations::ListAccountsResponse;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Paws::Organizations::Account]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListAccountsResponse

=head1 ATTRIBUTES


=head2 Accounts => ArrayRef[L<Paws::Organizations::Account>]

A list of objects in the organization.


=head2 NextToken => Str

If present, this value indicates that there is more output available
than is included in the current response. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
get the next part of the output. You should repeat this until the
C<NextToken> response element comes back as C<null>.


=head2 _request_id => Str


=cut

1;