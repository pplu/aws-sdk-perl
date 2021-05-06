
package Paws::Rekognition::StartTextDetectionResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StartTextDetectionResponse

=head1 ATTRIBUTES


=head2 JobId => Str

Identifier for the text detection job. Use C<JobId> to identify the job
in a subsequent call to C<GetTextDetection>.


=head2 _request_id => Str


=cut

1;