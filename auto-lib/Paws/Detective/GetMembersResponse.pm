
package Paws::Detective::GetMembersResponse;
  use Moose;
  has MemberDetails => (is => 'ro', isa => 'ArrayRef[Paws::Detective::MemberDetail]');
  has UnprocessedAccounts => (is => 'ro', isa => 'ArrayRef[Paws::Detective::UnprocessedAccount]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::GetMembersResponse

=head1 ATTRIBUTES


=head2 MemberDetails => ArrayRef[L<Paws::Detective::MemberDetail>]

The member account details that Detective is returning in response to
the request.


=head2 UnprocessedAccounts => ArrayRef[L<Paws::Detective::UnprocessedAccount>]

The requested member accounts for which Detective was unable to return
member details.

For each account, provides the reason why the request could not be
processed.


=head2 _request_id => Str


=cut

