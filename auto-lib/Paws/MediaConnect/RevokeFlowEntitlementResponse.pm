
package Paws::MediaConnect::RevokeFlowEntitlementResponse;
  use Moose;
  has EntitlementArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entitlementArn');
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::RevokeFlowEntitlementResponse

=head1 ATTRIBUTES


=head2 EntitlementArn => Str

The ARN of the entitlement that was revoked.


=head2 FlowArn => Str

The ARN of the flow that the entitlement was revoked from.


=head2 _request_id => Str


=cut

