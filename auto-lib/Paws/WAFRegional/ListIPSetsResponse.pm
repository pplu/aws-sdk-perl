
package Paws::WAFRegional::ListIPSetsResponse;
  use Moose;
  has IPSets => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::IPSetSummary]');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ListIPSetsResponse

=head1 ATTRIBUTES


=head2 IPSets => ArrayRef[L<Paws::WAFRegional::IPSetSummary>]

An array of IPSetSummary objects.


=head2 NextMarker => Str

If you have more C<IPSet> objects than the number that you specified
for C<Limit> in the request, the response includes a C<NextMarker>
value. To list more C<IPSet> objects, submit another C<ListIPSets>
request, and specify the C<NextMarker> value from the response in the
C<NextMarker> value in the next request.


=head2 _request_id => Str


=cut

1;