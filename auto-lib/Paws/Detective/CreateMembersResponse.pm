
package Paws::Detective::CreateMembersResponse;
  use Moose;
  has Members => (is => 'ro', isa => 'ArrayRef[Paws::Detective::MemberDetail]');
  has UnprocessedAccounts => (is => 'ro', isa => 'ArrayRef[Paws::Detective::UnprocessedAccount]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::CreateMembersResponse

=head1 ATTRIBUTES


=head2 Members => ArrayRef[L<Paws::Detective::MemberDetail>]

The set of member account invitation requests that Detective was able
to process. This includes accounts that are being verified, that failed
verification, and that passed verification and are being sent an
invitation.


=head2 UnprocessedAccounts => ArrayRef[L<Paws::Detective::UnprocessedAccount>]

The list of accounts for which Detective was unable to process the
invitation request. For each account, the list provides the reason why
the request could not be processed. The list includes accounts that are
already member accounts in the behavior graph.


=head2 _request_id => Str


=cut

