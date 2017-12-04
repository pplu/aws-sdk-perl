
package Paws::WAFRegional::ListRegexMatchSetsResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has RegexMatchSets => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::RegexMatchSetSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ListRegexMatchSetsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

If you have more C<RegexMatchSet> objects than the number that you
specified for C<Limit> in the request, the response includes a
C<NextMarker> value. To list more C<RegexMatchSet> objects, submit
another C<ListRegexMatchSets> request, and specify the C<NextMarker>
value from the response in the C<NextMarker> value in the next request.


=head2 RegexMatchSets => ArrayRef[L<Paws::WAFRegional::RegexMatchSetSummary>]

An array of RegexMatchSetSummary objects.


=head2 _request_id => Str


=cut

1;