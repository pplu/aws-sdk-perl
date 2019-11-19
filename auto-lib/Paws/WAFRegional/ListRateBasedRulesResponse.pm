# Generated from json/callresult_class.tt

package Paws::WAFRegional::ListRateBasedRulesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAFRegional::Types qw/WAFRegional_RuleSummary/;
  has NextMarker => (is => 'ro', isa => Str);
  has Rules => (is => 'ro', isa => ArrayRef[WAFRegional_RuleSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'Rules' => {
                            'class' => 'Paws::WAFRegional::RuleSummary',
                            'type' => 'ArrayRef[WAFRegional_RuleSummary]'
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

Paws::WAFRegional::ListRateBasedRulesResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

If you have more C<Rules> than the number that you specified for
C<Limit> in the request, the response includes a C<NextMarker> value.
To list more C<Rules>, submit another C<ListRateBasedRules> request,
and specify the C<NextMarker> value from the response in the
C<NextMarker> value in the next request.


=head2 Rules => ArrayRef[WAFRegional_RuleSummary]

An array of RuleSummary objects.


=head2 _request_id => Str


=cut

1;