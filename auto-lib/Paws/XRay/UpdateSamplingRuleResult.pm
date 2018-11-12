
package Paws::XRay::UpdateSamplingRuleResult;
  use Moose;
  has SamplingRuleRecord => (is => 'ro', isa => 'Paws::XRay::SamplingRuleRecord');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::UpdateSamplingRuleResult

=head1 ATTRIBUTES


=head2 SamplingRuleRecord => L<Paws::XRay::SamplingRuleRecord>

The updated rule definition and metadata.


=head2 _request_id => Str


=cut

