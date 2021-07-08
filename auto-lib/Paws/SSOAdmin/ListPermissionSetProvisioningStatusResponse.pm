
package Paws::SSOAdmin::ListPermissionSetProvisioningStatusResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PermissionSetsProvisioningStatus => (is => 'ro', isa => 'ArrayRef[Paws::SSOAdmin::PermissionSetProvisioningStatusMetadata]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ListPermissionSetProvisioningStatusResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token for the list API. Initially the value is null. Use
the output of previous API calls to make subsequent calls.


=head2 PermissionSetsProvisioningStatus => ArrayRef[L<Paws::SSOAdmin::PermissionSetProvisioningStatusMetadata>]

The status object for the permission set provisioning operation.


=head2 _request_id => Str


=cut

1;