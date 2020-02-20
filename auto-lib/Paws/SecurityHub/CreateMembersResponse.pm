
package Paws::SecurityHub::CreateMembersResponse;
  use Moose;
  has UnprocessedAccounts => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::Result]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::CreateMembersResponse

=head1 ATTRIBUTES


=head2 UnprocessedAccounts => ArrayRef[L<Paws::SecurityHub::Result>]

The list of AWS accounts that were not processed. For each account, the
list includes the account ID and the email address.


=head2 _request_id => Str


=cut

