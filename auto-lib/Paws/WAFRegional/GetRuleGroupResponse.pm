# Generated from json/callresult_class.tt

package Paws::WAFRegional::GetRuleGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_RuleGroup/;
  has RuleGroup => (is => 'ro', isa => WAFRegional_RuleGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RuleGroup' => {
                                'class' => 'Paws::WAFRegional::RuleGroup',
                                'type' => 'WAFRegional_RuleGroup'
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

Paws::WAFRegional::GetRuleGroupResponse

=head1 ATTRIBUTES


=head2 RuleGroup => WAFRegional_RuleGroup

Information about the RuleGroup that you specified in the
C<GetRuleGroup> request.


=head2 _request_id => Str


=cut

1;