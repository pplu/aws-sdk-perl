
package Paws::SSOAdmin::DescribePermissionSetResponse;
  use Moose;
  has PermissionSet => (is => 'ro', isa => 'Paws::SSOAdmin::PermissionSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::DescribePermissionSetResponse

=head1 ATTRIBUTES


=head2 PermissionSet => L<Paws::SSOAdmin::PermissionSet>

Describes the level of access on an AWS account.


=head2 _request_id => Str


=cut

1;