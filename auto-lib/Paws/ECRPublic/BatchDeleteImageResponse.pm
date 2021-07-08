
package Paws::ECRPublic::BatchDeleteImageResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::ECRPublic::ImageFailure]', traits => ['NameInRequest'], request_name => 'failures' );
  has ImageIds => (is => 'ro', isa => 'ArrayRef[Paws::ECRPublic::ImageIdentifier]', traits => ['NameInRequest'], request_name => 'imageIds' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::BatchDeleteImageResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::ECRPublic::ImageFailure>]

Any failures associated with the call.


=head2 ImageIds => ArrayRef[L<Paws::ECRPublic::ImageIdentifier>]

The image IDs of the deleted images.


=head2 _request_id => Str


=cut

1;