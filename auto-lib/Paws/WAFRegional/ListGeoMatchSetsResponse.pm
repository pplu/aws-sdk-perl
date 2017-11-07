
package Paws::WAFRegional::ListGeoMatchSetsResponse;
  use Moose;
  has GeoMatchSets => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::GeoMatchSetSummary]');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ListGeoMatchSetsResponse

=head1 ATTRIBUTES


=head2 GeoMatchSets => ArrayRef[L<Paws::WAFRegional::GeoMatchSetSummary>]

An array of GeoMatchSetSummary objects.


=head2 NextMarker => Str

If you have more C<GeoMatchSet> objects than the number that you
specified for C<Limit> in the request, the response includes a
C<NextMarker> value. To list more C<GeoMatchSet> objects, submit
another C<ListGeoMatchSets> request, and specify the C<NextMarker>
value from the response in the C<NextMarker> value in the next request.


=head2 _request_id => Str


=cut

1;