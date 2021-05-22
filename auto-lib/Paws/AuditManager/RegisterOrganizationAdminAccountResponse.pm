
package Paws::AuditManager::RegisterOrganizationAdminAccountResponse;
  use Moose;
  has AdminAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'adminAccountId');
  has OrganizationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'organizationId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::RegisterOrganizationAdminAccountResponse

=head1 ATTRIBUTES


=head2 AdminAccountId => Str

The identifier for the specified delegated administrator account.


=head2 OrganizationId => Str

The identifier for the specified AWS organization.


=head2 _request_id => Str


=cut

