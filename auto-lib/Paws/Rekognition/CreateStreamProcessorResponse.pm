
package Paws::Rekognition::CreateStreamProcessorResponse;
  use Moose;
  has StreamProcessorArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CreateStreamProcessorResponse

=head1 ATTRIBUTES


=head2 StreamProcessorArn => Str

ARN for the newly create stream processor.


=head2 _request_id => Str


=cut

1;