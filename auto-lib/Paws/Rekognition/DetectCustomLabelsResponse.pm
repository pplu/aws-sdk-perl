
package Paws::Rekognition::DetectCustomLabelsResponse;
  use Moose;
  has CustomLabels => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::CustomLabel]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectCustomLabelsResponse

=head1 ATTRIBUTES


=head2 CustomLabels => ArrayRef[L<Paws::Rekognition::CustomLabel>]

An array of custom labels detected in the input image.


=head2 _request_id => Str


=cut

1;