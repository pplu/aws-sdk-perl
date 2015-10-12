
package Paws::IoT::CreatePolicyVersionResponse;
  use Moose;
  has isDefaultVersion => (is => 'ro', isa => 'Bool');
  has policyArn => (is => 'ro', isa => 'Str');
  has policyDocument => (is => 'ro', isa => 'Str');
  has policyVersionId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreatePolicyVersionResponse

=head1 ATTRIBUTES

=head2 isDefaultVersion => Bool

  Specifies whether the policy version is the default.
=head2 policyArn => Str

  The policy ARN.
=head2 policyDocument => Str

  The JSON document that describes the policy.
=head2 policyVersionId => Str

  The policy version ID.


=cut

