
package Paws::IoT::GetPolicyResponse;
  use Moose;
  has defaultVersionId => (is => 'ro', isa => 'Str');
  has policyArn => (is => 'ro', isa => 'Str');
  has policyDocument => (is => 'ro', isa => 'Str');
  has policyName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetPolicyResponse

=head1 ATTRIBUTES

=head2 defaultVersionId => Str

  The default policy version ID.
=head2 policyArn => Str

  The policy ARN.
=head2 policyDocument => Str

  The JSON document that describes the policy.
=head2 policyName => Str

  The policy name.


=cut

