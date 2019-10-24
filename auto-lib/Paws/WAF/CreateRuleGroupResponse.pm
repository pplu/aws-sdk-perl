# Generated from json/callresult_class.tt

package Paws::WAF::CreateRuleGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_RuleGroup/;
  has ChangeToken => (is => 'ro', isa => Str);
  has RuleGroup => (is => 'ro', isa => WAF_RuleGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RuleGroup' => {
                                'class' => 'Paws::WAF::RuleGroup',
                                'type' => 'WAF_RuleGroup'
                              },
               'ChangeToken' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateRuleGroupResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateRuleGroup>
request. You can also use this value to query the status of the
request. For more information, see GetChangeTokenStatus.


=head2 RuleGroup => WAF_RuleGroup

An empty RuleGroup.


=head2 _request_id => Str


=cut

1;