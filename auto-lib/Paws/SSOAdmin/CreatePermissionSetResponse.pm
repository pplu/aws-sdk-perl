
package Paws::SSOAdmin::CreatePermissionSetResponse;
  use Moose;
  has PermissionSet => (is => 'ro', isa => 'Paws::SSOAdmin::PermissionSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::CreatePermissionSetResponse

=head1 ATTRIBUTES


=head2 PermissionSet => L<Paws::SSOAdmin::PermissionSet>

Defines the level of access on an AWS account.


=head2 _request_id => Str


=cut

1;