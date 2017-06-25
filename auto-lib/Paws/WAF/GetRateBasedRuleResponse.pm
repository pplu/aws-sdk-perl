
package Paws::WAF::GetRateBasedRuleResponse;
  use Moose;
  has Rule => (is => 'ro', isa => 'Paws::WAF::RateBasedRule');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetRateBasedRuleResponse

=head1 ATTRIBUTES


=head2 Rule => L<Paws::WAF::RateBasedRule>

Information about the RateBasedRule that you specified in the
C<GetRateBasedRule> request.


=head2 _request_id => Str


=cut

1;