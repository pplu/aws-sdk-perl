# Generated from json/callresult_class.tt

package Paws::WAFRegional::ListRuleGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAFRegional::Types qw/WAFRegional_RuleGroupSummary/;
  has NextMarker => (is => 'ro', isa => Str);
  has RuleGroups => (is => 'ro', isa => ArrayRef[WAFRegional_RuleGroupSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RuleGroups' => {
                                 'class' => 'Paws::WAFRegional::RuleGroupSummary',
                                 'type' => 'ArrayRef[WAFRegional_RuleGroupSummary]'
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

Paws::WAFRegional::ListRuleGroupsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

If you have more C<RuleGroups> than the number that you specified for
C<Limit> in the request, the response includes a C<NextMarker> value.
To list more C<RuleGroups>, submit another C<ListRuleGroups> request,
and specify the C<NextMarker> value from the response in the
C<NextMarker> value in the next request.


=head2 RuleGroups => ArrayRef[WAFRegional_RuleGroupSummary]

An array of RuleGroup objects.


=head2 _request_id => Str


=cut

1;