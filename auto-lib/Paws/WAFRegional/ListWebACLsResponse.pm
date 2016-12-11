
package Paws::WAFRegional::ListWebACLsResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has WebACLs => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::WebACLSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ListWebACLsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

If you have more C<WebACL> objects than the number that you specified
for C<Limit> in the request, the response includes a C<NextMarker>
value. To list more C<WebACL> objects, submit another C<ListWebACLs>
request, and specify the C<NextMarker> value from the response in the
C<NextMarker> value in the next request.


=head2 WebACLs => ArrayRef[L<Paws::WAFRegional::WebACLSummary>]

An array of WebACLSummary objects.


=head2 _request_id => Str


=cut

1;