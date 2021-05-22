
package Paws::GuardDuty::StopMonitoringMembersResponse;
  use Moose;
  has UnprocessedAccounts => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::UnprocessedAccount]', traits => ['NameInRequest'], request_name => 'unprocessedAccounts', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::StopMonitoringMembersResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> UnprocessedAccounts => ArrayRef[L<Paws::GuardDuty::UnprocessedAccount>]

A list of objects that contain an accountId for each account that could
not be processed, and a result string that indicates why the account
was not processed.


=head2 _request_id => Str


=cut

