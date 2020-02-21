
package Paws::Detective::ListInvitationsResponse;
  use Moose;
  has Invitations => (is => 'ro', isa => 'ArrayRef[Paws::Detective::MemberDetail]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::ListInvitationsResponse

=head1 ATTRIBUTES


=head2 Invitations => ArrayRef[L<Paws::Detective::MemberDetail>]

The list of behavior graphs for which the member account has open or
accepted invitations.


=head2 NextToken => Str

If there are more behavior graphs remaining in the results, then this
is the pagination token to use to request the next page of behavior
graphs.


=head2 _request_id => Str


=cut

