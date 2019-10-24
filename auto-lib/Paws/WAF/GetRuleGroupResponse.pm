# Generated from json/callresult_class.tt

package Paws::WAF::GetRuleGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_RuleGroup/;
  has RuleGroup => (is => 'ro', isa => WAF_RuleGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RuleGroup' => {
                                'class' => 'Paws::WAF::RuleGroup',
                                'type' => 'WAF_RuleGroup'
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

Paws::WAF::GetRuleGroupResponse

=head1 ATTRIBUTES


=head2 RuleGroup => WAF_RuleGroup

Information about the RuleGroup that you specified in the
C<GetRuleGroup> request.


=head2 _request_id => Str


=cut

1;