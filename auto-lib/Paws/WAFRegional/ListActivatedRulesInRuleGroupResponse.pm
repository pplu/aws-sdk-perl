# Generated from json/callresult_class.tt

package Paws::WAFRegional::ListActivatedRulesInRuleGroupResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAFRegional::Types qw/WAFRegional_ActivatedRule/;
  has ActivatedRules => (is => 'ro', isa => ArrayRef[WAFRegional_ActivatedRule]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'ActivatedRules' => {
                                     'type' => 'ArrayRef[WAFRegional_ActivatedRule]',
                                     'class' => 'Paws::WAFRegional::ActivatedRule'
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

Paws::WAFRegional::ListActivatedRulesInRuleGroupResponse

=head1 ATTRIBUTES


=head2 ActivatedRules => ArrayRef[WAFRegional_ActivatedRule]

An array of C<ActivatedRules> objects.


=head2 NextMarker => Str

If you have more C<ActivatedRules> than the number that you specified
for C<Limit> in the request, the response includes a C<NextMarker>
value. To list more C<ActivatedRules>, submit another
C<ListActivatedRulesInRuleGroup> request, and specify the C<NextMarker>
value from the response in the C<NextMarker> value in the next request.


=head2 _request_id => Str


=cut

1;