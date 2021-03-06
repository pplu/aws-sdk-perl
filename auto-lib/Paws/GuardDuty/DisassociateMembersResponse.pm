
package Paws::GuardDuty::DisassociateMembersResponse;
  use Moose;
  has UnprocessedAccounts => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::UnprocessedAccount]', traits => ['NameInRequest'], request_name => 'unprocessedAccounts', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::DisassociateMembersResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> UnprocessedAccounts => ArrayRef[L<Paws::GuardDuty::UnprocessedAccount>]

A list of objects that contain the unprocessed account and a result
string that explains why it was unprocessed.


=head2 _request_id => Str


=cut

