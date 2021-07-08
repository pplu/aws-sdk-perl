
package Paws::WAFV2::GetPermissionPolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::GetPermissionPolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

The IAM policy that is attached to the specified rule group.


=head2 _request_id => Str


=cut

1;