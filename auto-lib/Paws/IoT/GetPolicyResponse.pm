
package Paws::IoT::GetPolicyResponse;
  use Moose;
  has DefaultVersionId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'defaultVersionId');
  has PolicyArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'policyArn');
  has PolicyDocument => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'policyDocument');
  has PolicyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'policyName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetPolicyResponse

=head1 ATTRIBUTES


=head2 DefaultVersionId => Str

The default policy version ID.


=head2 PolicyArn => Str

The policy ARN.


=head2 PolicyDocument => Str

The JSON document that describes the policy.


=head2 PolicyName => Str

The policy name.


=head2 _request_id => Str


=cut

