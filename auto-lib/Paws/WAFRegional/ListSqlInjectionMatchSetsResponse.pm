
package Paws::WAFRegional::ListSqlInjectionMatchSetsResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has SqlInjectionMatchSets => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::SqlInjectionMatchSetSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ListSqlInjectionMatchSetsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

If you have more SqlInjectionMatchSet objects than the number that you
specified for C<Limit> in the request, the response includes a
C<NextMarker> value. To list more C<SqlInjectionMatchSet> objects,
submit another C<ListSqlInjectionMatchSets> request, and specify the
C<NextMarker> value from the response in the C<NextMarker> value in the
next request.


=head2 SqlInjectionMatchSets => ArrayRef[L<Paws::WAFRegional::SqlInjectionMatchSetSummary>]

An array of SqlInjectionMatchSetSummary objects.


=head2 _request_id => Str


=cut

1;