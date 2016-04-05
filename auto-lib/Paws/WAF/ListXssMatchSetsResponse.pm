
package Paws::WAF::ListXssMatchSetsResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has XssMatchSets => (is => 'ro', isa => 'ArrayRef[Paws::WAF::XssMatchSetSummary]');


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



=head2 XssMatchSets => ArrayRef[L<Paws::WAF::XssMatchSetSummary>]

An array of XssMatchSetSummary objects.




=cut

1;