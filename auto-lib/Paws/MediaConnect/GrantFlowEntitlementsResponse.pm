
package Paws::MediaConnect::GrantFlowEntitlementsResponse;
  use Moose;
  has Entitlements => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::Entitlement]', traits => ['NameInRequest'], request_name => 'entitlements');
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::GrantFlowEntitlementsResponse

=head1 ATTRIBUTES


=head2 Entitlements => ArrayRef[L<Paws::MediaConnect::Entitlement>]

The entitlements that were just granted.


=head2 FlowArn => Str

The ARN of the flow that these entitlements were granted to.


=head2 _request_id => Str


=cut

