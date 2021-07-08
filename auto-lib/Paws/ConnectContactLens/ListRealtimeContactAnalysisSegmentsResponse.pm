
package Paws::ConnectContactLens::ListRealtimeContactAnalysisSegmentsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Segments => (is => 'ro', isa => 'ArrayRef[Paws::ConnectContactLens::RealtimeContactAnalysisSegment]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectContactLens::ListRealtimeContactAnalysisSegmentsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results. If response includes C<nextToken> there are two possible
scenarios:

=over

=item *

There are more segments so another call is required to get them.

=item *

There are no more segments at this time, but more may be available
later (real-time analysis is in progress) so the client should call the
operation again to get new segments.

=back

If response does not include C<nextToken>, the analysis is completed
(successfully or failed) and there are no more segments to retrieve.


=head2 B<REQUIRED> Segments => ArrayRef[L<Paws::ConnectContactLens::RealtimeContactAnalysisSegment>]

An analyzed transcript or category.


=head2 _request_id => Str


=cut

