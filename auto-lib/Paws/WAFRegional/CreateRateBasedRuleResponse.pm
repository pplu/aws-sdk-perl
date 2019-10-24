# Generated from json/callresult_class.tt

package Paws::WAFRegional::CreateRateBasedRuleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_RateBasedRule/;
  has ChangeToken => (is => 'ro', isa => Str);
  has Rule => (is => 'ro', isa => WAFRegional_RateBasedRule);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ChangeToken' => {
                                  'type' => 'Str'
                                },
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

Paws::WAFRegional::CreateRateBasedRuleResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateRateBasedRule>
request. You can also use this value to query the status of the
request. For more information, see GetChangeTokenStatus.


=head2 Rule => WAFRegional_RateBasedRule

The RateBasedRule that is returned in the C<CreateRateBasedRule>
response.


=head2 _request_id => Str


=cut

1;