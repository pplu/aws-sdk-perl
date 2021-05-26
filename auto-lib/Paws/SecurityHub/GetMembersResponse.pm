
package Paws::SecurityHub::GetMembersResponse;
  use Moose;
  has Members => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::Member]');
  has UnprocessedAccounts => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::Result]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetMembersResponse

=head1 ATTRIBUTES


=head2 Members => ArrayRef[L<Paws::SecurityHub::Member>]

The list of details about the Security Hub member accounts.


=head2 UnprocessedAccounts => ArrayRef[L<Paws::SecurityHub::Result>]

The list of AWS accounts that could not be processed. For each account,
the list includes the account ID and the email address.


=head2 _request_id => Str


=cut

