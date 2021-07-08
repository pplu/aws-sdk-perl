
package Paws::Macie2::ListOrganizationAdminAccountsResponse;
  use Moose;
  has AdminAccounts => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::AdminAccount]', traits => ['NameInRequest'], request_name => 'adminAccounts');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ListOrganizationAdminAccountsResponse

=head1 ATTRIBUTES


=head2 AdminAccounts => ArrayRef[L<Paws::Macie2::AdminAccount>]

An array of objects, one for each delegated Amazon Macie administrator
account for the organization. Only one of these accounts can have a
status of ENABLED.


=head2 NextToken => Str

The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.


=head2 _request_id => Str


=cut

