
package Paws::FMS::GetAdminAccountResponse;
  use Moose;
  has AdminAccount => (is => 'ro', isa => 'Str');
  has RoleStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetAdminAccountResponse

=head1 ATTRIBUTES


=head2 AdminAccount => Str

The AWS account that is set as the AWS Firewall Manager administrator.


=head2 RoleStatus => Str

The status of the AWS account that you set as the AWS Firewall Manager
administrator.

Valid values are: C<"READY">, C<"CREATING">, C<"PENDING_DELETION">, C<"DELETING">, C<"DELETED">
=head2 _request_id => Str


=cut

1;