# Generated from json/callresult_class.tt

package Paws::WAF::GetRateBasedRuleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_RateBasedRule/;
  has Rule => (is => 'ro', isa => WAF_RateBasedRule);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Rule' => {
                           'class' => 'Paws::WAF::RateBasedRule',
                           'type' => 'WAF_RateBasedRule'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetRateBasedRuleResponse

=head1 ATTRIBUTES


=head2 Rule => WAF_RateBasedRule

Information about the RateBasedRule that you specified in the
C<GetRateBasedRule> request.


=head2 _request_id => Str


=cut

1;