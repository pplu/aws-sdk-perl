
package Paws::SageMaker::CreateImageResponse;
  use Moose;
  has ImageArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateImageResponse

=head1 ATTRIBUTES


=head2 ImageArn => Str

The Amazon Resource Name (ARN) of the image.


=head2 _request_id => Str


=cut

1;