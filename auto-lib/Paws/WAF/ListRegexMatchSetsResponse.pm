# Generated from json/callresult_class.tt

package Paws::WAF::ListRegexMatchSetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAF::Types qw/WAF_RegexMatchSetSummary/;
  has NextMarker => (is => 'ro', isa => Str);
  has RegexMatchSets => (is => 'ro', isa => ArrayRef[WAF_RegexMatchSetSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RegexMatchSets' => {
                                     'type' => 'ArrayRef[WAF_RegexMatchSetSummary]',
                                     'class' => 'Paws::WAF::RegexMatchSetSummary'
                                   },
               'NextMarker' => {
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

Paws::WAF::ListRegexMatchSetsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

If you have more C<RegexMatchSet> objects than the number that you
specified for C<Limit> in the request, the response includes a
C<NextMarker> value. To list more C<RegexMatchSet> objects, submit
another C<ListRegexMatchSets> request, and specify the C<NextMarker>
value from the response in the C<NextMarker> value in the next request.


=head2 RegexMatchSets => ArrayRef[WAF_RegexMatchSetSummary]

An array of RegexMatchSetSummary objects.


=head2 _request_id => Str


=cut

1;