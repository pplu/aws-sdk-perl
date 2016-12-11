
package Paws::WAFRegional::ListXssMatchSetsResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has XssMatchSets => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::XssMatchSetSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

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


=head2 XssMatchSets => ArrayRef[L<Paws::WAFRegional::XssMatchSetSummary>]

An array of XssMatchSetSummary objects.


=head2 _request_id => Str


=cut

1;