
package Paws::WAFRegional::GetRateBasedRuleResponse;
  use Moose;
  has Rule => (is => 'ro', isa => 'Paws::WAFRegional::RateBasedRule');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetRateBasedRuleResponse

=head1 ATTRIBUTES


=head2 Rule => L<Paws::WAFRegional::RateBasedRule>

Information about the RateBasedRule that you specified in the
C<GetRateBasedRule> request.


=head2 _request_id => Str


=cut

1;