
package Paws::Rekognition::StartLabelDetectionResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StartLabelDetectionResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The identifier for the label detection job. Use C<JobId> to identify
the job in a subsequent call to C<GetLabelDetection>.


=head2 _request_id => Str


=cut

1;