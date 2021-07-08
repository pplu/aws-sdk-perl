
package Paws::GuardDuty::ListOrganizationAdminAccountsResponse;
  use Moose;
  has AdminAccounts => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::AdminAccount]', traits => ['NameInRequest'], request_name => 'adminAccounts');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListOrganizationAdminAccountsResponse

=head1 ATTRIBUTES


=head2 AdminAccounts => ArrayRef[L<Paws::GuardDuty::AdminAccount>]

A list of accounts configured as GuardDuty delegated administrators.


=head2 NextToken => Str

The pagination parameter to be used on the next list operation to
retrieve more items.


=head2 _request_id => Str


=cut

