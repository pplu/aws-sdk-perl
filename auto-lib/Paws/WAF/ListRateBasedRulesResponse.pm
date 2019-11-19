# Generated from json/callresult_class.tt

package Paws::WAF::ListRateBasedRulesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAF::Types qw/WAF_RuleSummary/;
  has NextMarker => (is => 'ro', isa => Str);
  has Rules => (is => 'ro', isa => ArrayRef[WAF_RuleSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'Rules' => {
                            'type' => 'ArrayRef[WAF_RuleSummary]',
                            'class' => 'Paws::WAF::RuleSummary'
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

Paws::WAF::ListRateBasedRulesResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

If you have more C<Rules> than the number that you specified for
C<Limit> in the request, the response includes a C<NextMarker> value.
To list more C<Rules>, submit another C<ListRateBasedRules> request,
and specify the C<NextMarker> value from the response in the
C<NextMarker> value in the next request.


=head2 Rules => ArrayRef[WAF_RuleSummary]

An array of RuleSummary objects.


=head2 _request_id => Str


=cut

1;