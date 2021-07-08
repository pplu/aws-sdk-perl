
package Paws::GuardDuty::GetMemberDetectorsResponse;
  use Moose;
  has MemberDataSourceConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::MemberDataSourceConfiguration]', traits => ['NameInRequest'], request_name => 'members', required => 1);
  has UnprocessedAccounts => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::UnprocessedAccount]', traits => ['NameInRequest'], request_name => 'unprocessedAccounts', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetMemberDetectorsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MemberDataSourceConfigurations => ArrayRef[L<Paws::GuardDuty::MemberDataSourceConfiguration>]

An object that describes which data sources are enabled for a member
account.


=head2 B<REQUIRED> UnprocessedAccounts => ArrayRef[L<Paws::GuardDuty::UnprocessedAccount>]

A list of member account IDs that were unable to be processed along
with an explanation for why they were not processed.


=head2 _request_id => Str


=cut

