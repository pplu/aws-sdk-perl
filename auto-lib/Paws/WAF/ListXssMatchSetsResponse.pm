# Generated from json/callresult_class.tt

package Paws::WAF::ListXssMatchSetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAF::Types qw/WAF_XssMatchSetSummary/;
  has NextMarker => (is => 'ro', isa => Str);
  has XssMatchSets => (is => 'ro', isa => ArrayRef[WAF_XssMatchSetSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'XssMatchSets' => {
                                   'type' => 'ArrayRef[WAF_XssMatchSetSummary]',
                                   'class' => 'Paws::WAF::XssMatchSetSummary'
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

Paws::WAF::ListXssMatchSetsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

If you have more XssMatchSet objects than the number that you specified
for C<Limit> in the request, the response includes a C<NextMarker>
value. To list more C<XssMatchSet> objects, submit another
C<ListXssMatchSets> request, and specify the C<NextMarker> value from
the response in the C<NextMarker> value in the next request.


=head2 XssMatchSets => ArrayRef[WAF_XssMatchSetSummary]

An array of XssMatchSetSummary objects.


=head2 _request_id => Str


=cut

1;