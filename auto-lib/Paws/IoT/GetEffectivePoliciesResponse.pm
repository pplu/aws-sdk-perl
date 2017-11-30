
package Paws::IoT::GetEffectivePoliciesResponse;
  use Moose;
  has EffectivePolicies => (is => 'ro', isa => 'ArrayRef[Paws::IoT::EffectivePolicy]', traits => ['NameInRequest'], request_name => 'effectivePolicies');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetEffectivePoliciesResponse

=head1 ATTRIBUTES


=head2 EffectivePolicies => ArrayRef[L<Paws::IoT::EffectivePolicy>]

The effective policies.


=head2 _request_id => Str


=cut

