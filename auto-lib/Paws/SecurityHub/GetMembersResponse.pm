
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

A list of details about the Security Hub member accounts.


=head2 UnprocessedAccounts => ArrayRef[L<Paws::SecurityHub::Result>]

A list of account ID and email address pairs of the AWS accounts that
could not be processed.


=head2 _request_id => Str


=cut

