
package Paws::MediaConnect::UpdateFlowEntitlementResponse;
  use Moose;
  has Entitlement => (is => 'ro', isa => 'Paws::MediaConnect::Entitlement', traits => ['NameInRequest'], request_name => 'entitlement');
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateFlowEntitlementResponse

=head1 ATTRIBUTES


=head2 Entitlement => L<Paws::MediaConnect::Entitlement>




=head2 FlowArn => Str

The ARN of the flow that this entitlement was granted on.


=head2 _request_id => Str


=cut

