# Generated from json/callresult_class.tt

package Paws::WAFRegional::GetRateBasedRuleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_RateBasedRule/;
  has Rule => (is => 'ro', isa => WAFRegional_RateBasedRule);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Rule' => {
                           'class' => 'Paws::WAFRegional::RateBasedRule',
                           'type' => 'WAFRegional_RateBasedRule'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetRateBasedRuleResponse

=head1 ATTRIBUTES


=head2 Rule => WAFRegional_RateBasedRule

Information about the RateBasedRule that you specified in the
C<GetRateBasedRule> request.


=head2 _request_id => Str


=cut

1;