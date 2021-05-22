
package Paws::SSOAdmin::ProvisionPermissionSetResponse;
  use Moose;
  has PermissionSetProvisioningStatus => (is => 'ro', isa => 'Paws::SSOAdmin::PermissionSetProvisioningStatus');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ProvisionPermissionSetResponse

=head1 ATTRIBUTES


=head2 PermissionSetProvisioningStatus => L<Paws::SSOAdmin::PermissionSetProvisioningStatus>

The status object for the permission set provisioning operation.


=head2 _request_id => Str


=cut

1;