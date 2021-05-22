
package Paws::SageMaker::CreateImageVersionResponse;
  use Moose;
  has ImageVersionArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateImageVersionResponse

=head1 ATTRIBUTES


=head2 ImageVersionArn => Str

The Amazon Resource Name (ARN) of the image version.


=head2 _request_id => Str


=cut

1;