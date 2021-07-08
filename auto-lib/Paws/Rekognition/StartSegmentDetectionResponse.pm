
package Paws::Rekognition::StartSegmentDetectionResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StartSegmentDetectionResponse

=head1 ATTRIBUTES


=head2 JobId => Str

Unique identifier for the segment detection job. The C<JobId> is
returned from C<StartSegmentDetection>.


=head2 _request_id => Str


=cut

1;