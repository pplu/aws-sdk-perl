
package Paws::WAF::GetPermissionPolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetPermissionPolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

The IAM policy attached to the specified RuleGroup.


=head2 _request_id => Str


=cut

1;