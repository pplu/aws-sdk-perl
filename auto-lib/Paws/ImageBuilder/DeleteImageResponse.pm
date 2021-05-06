
package Paws::ImageBuilder::DeleteImageResponse;
  use Moose;
  has ImageBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageBuildVersionArn');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::DeleteImageResponse

=head1 ATTRIBUTES


=head2 ImageBuildVersionArn => Str

The Amazon Resource Name (ARN) of the image that was deleted.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

