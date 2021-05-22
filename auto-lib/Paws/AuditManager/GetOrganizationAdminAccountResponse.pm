
package Paws::AuditManager::GetOrganizationAdminAccountResponse;
  use Moose;
  has AdminAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'adminAccountId');
  has OrganizationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'organizationId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetOrganizationAdminAccountResponse

=head1 ATTRIBUTES


=head2 AdminAccountId => Str

The identifier for the specified administrator account.


=head2 OrganizationId => Str

The identifier for the specified organization.


=head2 _request_id => Str


=cut

