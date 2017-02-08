
package Paws::ECR::BatchDeleteImageResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::ECR::ImageFailure]', traits => ['NameInRequest'], request_name => 'failures' );
  has ImageIds => (is => 'ro', isa => 'ArrayRef[Paws::ECR::ImageIdentifier]', traits => ['NameInRequest'], request_name => 'imageIds' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::BatchDeleteImageResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::ECR::ImageFailure>]

Any failures associated with the call.


=head2 ImageIds => ArrayRef[L<Paws::ECR::ImageIdentifier>]

The image IDs of the deleted images.


=head2 _request_id => Str


=cut

1;