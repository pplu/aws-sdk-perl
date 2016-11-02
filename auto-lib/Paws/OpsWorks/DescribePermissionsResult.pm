
package Paws::OpsWorks::DescribePermissionsResult;
  use Moose;
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::Permission]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribePermissionsResult

=head1 ATTRIBUTES


=head2 Permissions => ArrayRef[L<Paws::OpsWorks::Permission>]

An array of C<Permission> objects that describe the stack permissions.

=over

=item *

If the request object contains only a stack ID, the array contains a
C<Permission> object with permissions for each of the stack IAM ARNs.

=item *

If the request object contains only an IAM ARN, the array contains a
C<Permission> object with permissions for each of the user's stack IDs.

=item *

If the request contains a stack ID and an IAM ARN, the array contains a
single C<Permission> object with permissions for the specified stack
and IAM ARN.

=back



=head2 _request_id => Str


=cut

1;