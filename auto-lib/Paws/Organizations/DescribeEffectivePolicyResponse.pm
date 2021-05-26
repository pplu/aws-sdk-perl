
package Paws::Organizations::DescribeEffectivePolicyResponse;
  use Moose;
  has EffectivePolicy => (is => 'ro', isa => 'Paws::Organizations::EffectivePolicy');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DescribeEffectivePolicyResponse

=head1 ATTRIBUTES


=head2 EffectivePolicy => L<Paws::Organizations::EffectivePolicy>

The contents of the effective policy.


=head2 _request_id => Str


=cut

1;