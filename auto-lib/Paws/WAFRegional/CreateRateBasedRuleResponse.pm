
package Paws::WAFRegional::CreateRateBasedRuleResponse;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str');
  has Rule => (is => 'ro', isa => 'Paws::WAFRegional::RateBasedRule');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::CreateRateBasedRuleResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateRateBasedRule>
request. You can also use this value to query the status of the
request. For more information, see GetChangeTokenStatus.


=head2 Rule => L<Paws::WAFRegional::RateBasedRule>

The RateBasedRule that is returned in the C<CreateRateBasedRule>
response.


=head2 _request_id => Str


=cut

1;