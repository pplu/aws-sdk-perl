# Generated from json/callresult_class.tt

package Paws::WAF::ListRuleGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAF::Types qw/WAF_RuleGroupSummary/;
  has NextMarker => (is => 'ro', isa => Str);
  has RuleGroups => (is => 'ro', isa => ArrayRef[WAF_RuleGroupSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RuleGroups' => {
                                 'type' => 'ArrayRef[WAF_RuleGroupSummary]',
                                 'class' => 'Paws::WAF::RuleGroupSummary'
                               },
               'NextMarker' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::ListRuleGroupsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

If you have more C<RuleGroups> than the number that you specified for
C<Limit> in the request, the response includes a C<NextMarker> value.
To list more C<RuleGroups>, submit another C<ListRuleGroups> request,
and specify the C<NextMarker> value from the response in the
C<NextMarker> value in the next request.


=head2 RuleGroups => ArrayRef[WAF_RuleGroupSummary]

An array of RuleGroup objects.


=head2 _request_id => Str


=cut

1;