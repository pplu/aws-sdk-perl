# Generated from json/callresult_class.tt

package Paws::WAF::ListSubscribedRuleGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAF::Types qw/WAF_SubscribedRuleGroupSummary/;
  has NextMarker => (is => 'ro', isa => Str);
  has RuleGroups => (is => 'ro', isa => ArrayRef[WAF_SubscribedRuleGroupSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RuleGroups' => {
                                 'class' => 'Paws::WAF::SubscribedRuleGroupSummary',
                                 'type' => 'ArrayRef[WAF_SubscribedRuleGroupSummary]'
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

Paws::WAF::ListSubscribedRuleGroupsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

If you have more objects than the number that you specified for
C<Limit> in the request, the response includes a C<NextMarker> value.
To list more objects, submit another C<ListSubscribedRuleGroups>
request, and specify the C<NextMarker> value from the response in the
C<NextMarker> value in the next request.


=head2 RuleGroups => ArrayRef[WAF_SubscribedRuleGroupSummary]

An array of RuleGroup objects.


=head2 _request_id => Str


=cut

1;