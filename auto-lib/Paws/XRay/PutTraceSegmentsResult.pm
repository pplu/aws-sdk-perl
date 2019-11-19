
package Paws::XRay::PutTraceSegmentsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::XRay::Types qw/XRay_UnprocessedTraceSegment/;
  has UnprocessedTraceSegments => (is => 'ro', isa => ArrayRef[XRay_UnprocessedTraceSegment]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UnprocessedTraceSegments' => {
                                               'class' => 'Paws::XRay::UnprocessedTraceSegment',
                                               'type' => 'ArrayRef[XRay_UnprocessedTraceSegment]'
                                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::PutTraceSegmentsResult

=head1 ATTRIBUTES


=head2 UnprocessedTraceSegments => ArrayRef[XRay_UnprocessedTraceSegment]

Segments that failed processing.


=head2 _request_id => Str


=cut

