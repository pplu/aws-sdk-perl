
package Paws::SecurityHub::ListOrganizationAdminAccountsResponse;
  use Moose;
  has AdminAccounts => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AdminAccount]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListOrganizationAdminAccountsResponse

=head1 ATTRIBUTES


=head2 AdminAccounts => ArrayRef[L<Paws::SecurityHub::AdminAccount>]

The list of Security Hub administrator accounts.


=head2 NextToken => Str

The pagination token to use to request the next page of results.


=head2 _request_id => Str


=cut

