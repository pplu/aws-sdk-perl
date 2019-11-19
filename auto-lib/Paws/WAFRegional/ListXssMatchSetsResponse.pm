# Generated from json/callresult_class.tt

package Paws::WAFRegional::ListXssMatchSetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAFRegional::Types qw/WAFRegional_XssMatchSetSummary/;
  has NextMarker => (is => 'ro', isa => Str);
  has XssMatchSets => (is => 'ro', isa => ArrayRef[WAFRegional_XssMatchSetSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'XssMatchSets' => {
                                   'class' => 'Paws::WAFRegional::XssMatchSetSummary',
                                   'type' => 'ArrayRef[WAFRegional_XssMatchSetSummary]'
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

Paws::WAFRegional::ListXssMatchSetsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

If you have more XssMatchSet objects than the number that you specified
for C<Limit> in the request, the response includes a C<NextMarker>
value. To list more C<XssMatchSet> objects, submit another
C<ListXssMatchSets> request, and specify the C<NextMarker> value from
the response in the C<NextMarker> value in the next request.


=head2 XssMatchSets => ArrayRef[WAFRegional_XssMatchSetSummary]

An array of XssMatchSetSummary objects.


=head2 _request_id => Str


=cut

1;