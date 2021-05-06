
package Paws::XRay::PutTraceSegmentsResult;
  use Moose;
  has UnprocessedTraceSegments => (is => 'ro', isa => 'ArrayRef[Paws::XRay::UnprocessedTraceSegment]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::PutTraceSegmentsResult

=head1 ATTRIBUTES


=head2 UnprocessedTraceSegments => ArrayRef[L<Paws::XRay::UnprocessedTraceSegment>]

Segments that failed processing.


=head2 _request_id => Str


=cut

