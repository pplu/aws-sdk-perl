
package Paws::WAF::ListByteMatchSetsResponse;
  use Moose;
  has ByteMatchSets => (is => 'ro', isa => 'ArrayRef[Paws::WAF::ByteMatchSetSummary]');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAF::ListByteMatchSetsResponse

=head1 ATTRIBUTES


=head2 ByteMatchSets => ArrayRef[L<Paws::WAF::ByteMatchSetSummary>]

An array of ByteMatchSetSummary objects.


=head2 NextMarker => Str

If you have more C<ByteMatchSet> objects than the number that you
specified for C<Limit> in the request, the response includes a
C<NextMarker> value. To list more C<ByteMatchSet> objects, submit
another C<ListByteMatchSets> request, and specify the C<NextMarker>
value from the response in the C<NextMarker> value in the next request.


=head2 _request_id => Str


=cut

1;