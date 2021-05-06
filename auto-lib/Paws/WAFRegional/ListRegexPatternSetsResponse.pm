
package Paws::WAFRegional::ListRegexPatternSetsResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has RegexPatternSets => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::RegexPatternSetSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ListRegexPatternSetsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

If you have more C<RegexPatternSet> objects than the number that you
specified for C<Limit> in the request, the response includes a
C<NextMarker> value. To list more C<RegexPatternSet> objects, submit
another C<ListRegexPatternSets> request, and specify the C<NextMarker>
value from the response in the C<NextMarker> value in the next request.


=head2 RegexPatternSets => ArrayRef[L<Paws::WAFRegional::RegexPatternSetSummary>]

An array of RegexPatternSetSummary objects.


=head2 _request_id => Str


=cut

1;