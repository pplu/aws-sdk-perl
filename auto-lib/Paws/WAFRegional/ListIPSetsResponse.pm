
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

To list more C<IPSet> objects, submit another C<ListIPSets> request,
and in the next request use the C<NextMarker> response value as the
C<NextMarker> value.


=head2 _request_id => Str


=cut

1;