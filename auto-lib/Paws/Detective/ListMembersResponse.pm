
package Paws::Detective::ListMembersResponse;
  use Moose;
  has MemberDetails => (is => 'ro', isa => 'ArrayRef[Paws::Detective::MemberDetail]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::ListMembersResponse

=head1 ATTRIBUTES


=head2 MemberDetails => ArrayRef[L<Paws::Detective::MemberDetail>]

The list of member accounts in the behavior graph.

The results include member accounts that did not pass verification and
member accounts that have not yet accepted the invitation to the
behavior graph. The results do not include member accounts that were
removed from the behavior graph.


=head2 NextToken => Str

If there are more member accounts remaining in the results, then this
is the pagination token to use to request the next page of member
accounts.


=head2 _request_id => Str


=cut

